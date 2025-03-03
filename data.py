#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# @Time : 2020/8/26 14:48
# @Author : way
# @Site :
# @Describe:

class SourceDataDemo:

    def __init__(self):
        # 默认的标题
        self.title = '大数据可视化展板通用模板'
        # 两个小的form看板
        self.counter = {'name': '总体进度指数', 'value': 88880000}
        self.counter2 = {'name': '总体运行指数', 'value': 66660000}
        # 总共是6个图表，数据格式用json字符串，其中第3个图表是有3个小的图表组成的
        self.echart1_data = {
            'title': '班组排行',
            'data': [
                {"name": "钢筋班", "value": 47},
                {"name": "混凝土班", "value": 52},
                {"name": "房地产销售班 ", "value": 90},
                {"name": "木工", "value": 84},
                {"name": "水电工", "value": 99},
                {"name": "放线工", "value": 37},
                {"name": "抹灰工", "value": 2},
            ]
        }

        self.echart2_data = {
            'title': '最佳班组长',
            'data': [
                {"name": "张江", "value": 47},
                {"name": "阮大师", "value": 52},
                {"name": "孔祥华", "value": 90},
                {"name": "季候", "value": 84},
                {"name": "贝看", "value": 99},
                {"name": "童泰", "value": 37},
                {"name": "安鸿", "value": 150},
            ]
        }
        self.echarts3_1_data = {
            'title': '噪音分布局',
            'data': [
                {"name": "20db以下", "value": 47},
                {"name": "50-59", "value": 52},
                {"name": "30-39岁", "value": 90},
                {"name": "40-49岁", "value": 84},
                {"name": "50岁以上", "value": 99},
            ]
        }
        self.echarts3_2_data = {
            'title': '流水线进度',
            'data': [
                {"name": "流水线1", "value": 10},
                {"name": "流水线2", "value": 20},
                {"name": "并行线1", "value": 20},
                {"name": "并行线2", "value": 30},
                {"name": "主干线1", "value": 40},
                {"name": "主干线2", "value": 50},
            ]
        }
        self.echarts3_3_data = {
            'title': '场地沉降',
            'data': [
                {"name": "堆场", "value": 4},
                {"name": "主体结构", "value": 5},
                {"name": "土方开挖", "value": 9},
                {"name": "人员工棚", "value": 8},
                {"name": "技术安防", "value": 9},
                {"name": "通道", "value": 9},
            ]
        }
        self.echart4_data = {
            'title': '时间趋势',
            'data': [
                {"name": "进度", "value": [3, 4, 3, 4, 3, 4, 3, 6, 2, 4, 2, 4, 3, 4, 3, 4, 3, 4, 3, 6, 2, 4, 4]},
                {"name": "质量", "value": [5, 3, 5, 6, 1, 5, 3, 5, 6, 4, 6, 4, 8, 3, 5, 6, 1, 5, 3, 7, 2, 5, 8]},
            ],
            'xAxis': ['01', '02', '03', '04', '05', '06', '07', '08', '09', '11', '12', '13', '14', '15', '16', '17',
                      '18', '19', '20', '21', '22', '23', '24'],
        }
        self.echart5_data = {
            'title': '最佳班组TOP10',
            'data': [
                {"name": "电工", "value": 2},
                {"name": "木工", "value": 3},
                {"name": "钢筋工", "value": 3},
                {"name": "水工", "value": 9},
                {"name": "搅拌工", "value": 15},
                {"name": "向工", "value": 18},
                {"name": "腻子工", "value": 20},
                {"name": "灰工", "value": 13},
            ]
        }
        # 这是一个环状图，有颜色的加上没颜色的正好等于100，半径是外圈直径和内圈直径，猜测是左闭右开
        self.echart6_data = {
            'title': '项目能耗情况',
            'data': [
                {"name": "场地放线", "value": 80, "value2": 20, "color": "01", "radius": ['59%', '70%']},
                {"name": "给水测量", "value": 70, "value2": 30, "color": "02", "radius": ['49%', '60%']},
                {"name": "工地绑扎", "value": 65, "value2": 35, "color": "03", "radius": ['39%', '50%']},
                {"name": "养护", "value": 60, "value2": 40, "color": "04", "radius": ['29%', '40%']},
                {"name": "砌筑", "value": 50, "value2": 50, "color": "05", "radius": ['20%', '30%']},
            ]
        }
        # 这个在哪里用了？？？
        self.map_1_data = {
            'symbolSize': 1000,
            'data': [
                {'name': '重要性甲级', 'value': 239},
                {'name': '二等功', 'value': 231},
                {'name': '焊接质量验证', 'value': 203},
            ]
        }

    @property
    def echart1(self):
        data = self.echart1_data
        echart = {
            'title': data.get('title'),
            # 第一次get获取到的是许多键值对，所以需要对每个键值对再次get
            'xAxis': [i.get("name") for i in data.get('data')],
            'series': [i.get("value") for i in data.get('data')]
        }
        # 返回的是标题和对应的数据，并没有说用什么方式展现！
        return echart

    @property
    def echart2(self):
        data = self.echart2_data
        echart = {
            'title': data.get('title'),
            'xAxis': [i.get("name") for i in data.get('data')],
            'series': [i.get("value") for i in data.get('data')]
        }
        return echart

    @property
    def echarts3_1(self):
        data = self.echarts3_1_data
        echart = {
            'title': data.get('title'),
            'xAxis': [i.get("name") for i in data.get('data')],
            'data': data.get('data'),
        }
        return echart

    @property
    def echarts3_2(self):
        data = self.echarts3_2_data
        echart = {
            'title': data.get('title'),
            'xAxis': [i.get("name") for i in data.get('data')],
            'data': data.get('data'),
        }
        return echart

    @property
    def echarts3_3(self):
        data = self.echarts3_3_data
        echart = {
            'title': data.get('title'),
            'xAxis': [i.get("name") for i in data.get('data')],
            'data': data.get('data'),
        }
        return echart

    @property
    def echart4(self):
        data = self.echart4_data
        echart = {
            'title': data.get('title'),
            'names': [i.get("name") for i in data.get('data')],
            'xAxis': data.get('xAxis'),
            'data': data.get('data'),
        }
        return echart

    @property
    def echart5(self):
        data = self.echart5_data
        echart = {
            'title': data.get('title'),
            'xAxis': [i.get("name") for i in data.get('data')],
            'series': [i.get("value") for i in data.get('data')],
            'data': data.get('data'),
        }
        return echart

    @property
    def echart6(self):
        data = self.echart6_data
        echart = {
            'title': data.get('title'),
            'xAxis': [i.get("name") for i in data.get('data')],
            'data': data.get('data'),
        }
        return echart

    @property
    def map_1(self):
        data = self.map_1_data
        echart = {
            'symbolSize': data.get('symbolSize'),
            'data': data.get('data'),
        }
        return echart


class SourceData(SourceDataDemo):

    def __init__(self):
        """
        按照 SourceDataDemo 的格式覆盖数据即可
        """
        super().__init__()
        self.title = '工地效率监控'
