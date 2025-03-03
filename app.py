#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# @Time : 2020/8/26 14:48
# @Author : way
# @Site :
# @Describe:

from flask import Flask, render_template
import pymysql
import json
app = Flask(__name__)

# MySQL配置
app.config['MYSQL_HOST'] = 'localhost'  # MySQL主机
app.config['MYSQL_USER'] = 'username'
app.config['MYSQL_PASSWORD'] = 'password'
app.config['MYSQL_DB'] = 'dashboard_data'

# 使用PyMySQL连接数据库
def get_db_connection():
    connection = pymysql.connect(
        host=app.config['MYSQL_HOST'],
        user=app.config['MYSQL_USER'],
        password=app.config['MYSQL_PASSWORD'],
        db=app.config['MYSQL_DB'],
        charset='utf8mb4',
        cursorclass=pymysql.cursors.DictCursor
    )
    return connection

@app.route('/')
def index():
    connection = get_db_connection()
    cursor = connection.cursor()

    # Fetch data for echart1 (班组排行)
    cursor.execute("SELECT name, value FROM echart1")
    echart1_data = cursor.fetchall()

    # Fetch data for echart2 (最佳班组长)
    cursor.execute("SELECT name, value FROM echart2")
    echart2_data = cursor.fetchall()

    # Fetch data for echarts3_1 (噪音分布局)
    cursor.execute("SELECT name, value FROM echarts3_1")
    echarts3_1_data = cursor.fetchall()

    # Fetch data for echarts3_2 (流水线进度)
    cursor.execute("SELECT name, value FROM echarts3_2")
    echarts3_2_data = cursor.fetchall()

    # Fetch data for echarts3_3 (场地沉降)
    cursor.execute("SELECT name, value FROM echarts3_3")
    echarts3_3_data = cursor.fetchall()

    # Fetch data for echart4 (时间趋势)
    cursor.execute("SELECT name, value, xAxis  FROM echart4")
    echart4_data = cursor.fetchall()
    echart4_result = {
        'title': '时间趋势',
        'data': [],
        'xAxis': [],
        'names': [],
    }
    # 遍历查询结果并构建数据结构
    for row in echart4_data:
        echart4_result['data'].append({
            'name': row['name'],
            'value': json.loads(row['value'])  # 解析 JSON 数据
        })
        echart4_result['xAxis'] = json.loads(row['xAxis'])  # 解析 JSON 数据
        echart4_result['names'].append(row['name'])


    # Fetch data for echart5 (最佳班组TOP10)
    cursor.execute("SELECT name, value FROM echart5")
    echart5_data = cursor.fetchall()

    # Fetch data for echart6 (项目能耗情况)
    cursor.execute("SELECT name, value, value2, color, radius FROM echart6")
    echart6_data = cursor.fetchall()

    # Fetch data for map_1 (重要性甲级)
    cursor.execute("SELECT name, value FROM map_1")
    map_1_data = cursor.fetchall()


    cursor.close()
    # Prepare data for rendering
    form = {
        'counter': {'name': '总体进度指数', 'value': 1245},
        'counter2': {'name': '总体运行指数', 'value': 6605},
        'echart1': {'title': '班组排行', 'xAxis': [i['name'] for i in echart1_data], 'series': [i['value'] for i in echart1_data]},
        'echart2': {'title': '最佳班组长', 'xAxis': [i['name'] for i in echart2_data], 'series': [i['value'] for i in echart2_data]},
        'echarts3_1': {'title': '噪音分布局', 'xAxis': [i['name'] for i in echarts3_1_data], 'data': echarts3_1_data},
        'echarts3_2': {'title': '流水线进度', 'xAxis': [i['name'] for i in echarts3_2_data], 'data': echarts3_2_data},
        'echarts3_3': {'title': '场地沉降', 'xAxis': [i['name'] for i in echarts3_3_data], 'data': echarts3_3_data},
        'echart4': echart4_result,
        'echart5': {'title': '最佳班组TOP10', 'xAxis': [i['name'] for i in echart5_data],
                    'series': [i['value'] for i in echart5_data]},
        'echart6': {'title': '项目能耗情况', 'data': echart6_data, 'xAxis':[i.get("name") for i in echart6_data]},
        'map_1': {'data': map_1_data, 'symbolSize': 1000}
    }


    return render_template('index.html', form=form, title=data.title)


if __name__ == "__main__":
    app.run(host='127.0.0.1', debug=True)
