#coding:utf-8
__author__ = "ila"
from django.db import models

from .model import BaseModel

from datetime import datetime



class xuesheng(BaseModel):
    __doc__ = u'''xuesheng'''
    __tablename__ = 'xuesheng'

    __loginUser__='xuehao'


    __authTables__={}
    __authPeople__='是'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __loginUserColumn__='xuehao'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    xuehao=models.CharField ( max_length=255,null=False,unique=True, verbose_name='学号' )
    mima=models.CharField ( max_length=255,null=False, unique=False, verbose_name='密码' )
    xingming=models.CharField ( max_length=255,null=False, unique=False, verbose_name='姓名' )
    nianling=models.IntegerField  (  null=True, unique=False, verbose_name='年龄' )
    xingbie=models.CharField ( max_length=255, null=True, unique=False, verbose_name='性别' )
    shouji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='手机' )
    sushehao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='宿舍号' )
    zhuanye=models.CharField ( max_length=255, null=True, unique=False, verbose_name='专业' )
    yuanxi=models.CharField ( max_length=255, null=True, unique=False, verbose_name='院系' )
    banji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='班级' )
    touxiang=models.TextField   (  null=True, unique=False, verbose_name='头像' )
    '''
    xuehao=VARCHAR
    mima=VARCHAR
    xingming=VARCHAR
    nianling=Integer
    xingbie=VARCHAR
    shouji=VARCHAR
    sushehao=VARCHAR
    zhuanye=VARCHAR
    yuanxi=VARCHAR
    banji=VARCHAR
    touxiang=Text
    '''
    class Meta:
        db_table = 'xuesheng'
        verbose_name = verbose_name_plural = '学生'
class qinshixinxi(BaseModel):
    __doc__ = u'''qinshixinxi'''
    __tablename__ = 'qinshixinxi'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='是'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    sushehao=models.CharField ( max_length=255,null=False, unique=False, verbose_name='宿舍号' )
    susheleixing=models.CharField ( max_length=255,null=False, unique=False, verbose_name='宿舍类型' )
    fengmian=models.TextField   (  null=True, unique=False, verbose_name='封面' )
    loudong=models.CharField ( max_length=255, null=True, unique=False, verbose_name='楼栋' )
    louceng=models.CharField ( max_length=255, null=True, unique=False, verbose_name='楼层' )
    weizhi=models.CharField ( max_length=255, null=True, unique=False, verbose_name='位置' )
    kezhurenshu=models.IntegerField  (  null=True, unique=False, verbose_name='可住人数' )
    susherenyuan=models.TextField   (  null=True, unique=False, verbose_name='宿舍人员' )
    sushexiangqing=models.TextField   (  null=True, unique=False, verbose_name='宿舍详情' )
    '''
    sushehao=VARCHAR
    susheleixing=VARCHAR
    fengmian=Text
    loudong=VARCHAR
    louceng=VARCHAR
    weizhi=VARCHAR
    kezhurenshu=Integer
    susherenyuan=Text
    sushexiangqing=Text
    '''
    class Meta:
        db_table = 'qinshixinxi'
        verbose_name = verbose_name_plural = '寝室信息'
class ruzhudengji(BaseModel):
    __doc__ = u'''ruzhudengji'''
    __tablename__ = 'ruzhudengji'



    __authTables__={'xuehao':'xuesheng',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='是'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    sushehao=models.CharField ( max_length=255,null=False, unique=False, verbose_name='宿舍号' )
    loudong=models.CharField ( max_length=255, null=True, unique=False, verbose_name='楼栋' )
    louceng=models.CharField ( max_length=255, null=True, unique=False, verbose_name='楼层' )
    chuangweihao=models.CharField ( max_length=255,null=False, unique=False, verbose_name='床位号' )
    xuehao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='学号' )
    xingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='姓名' )
    banji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='班级' )
    yuanxi=models.CharField ( max_length=255, null=True, unique=False, verbose_name='院系' )
    xingbie=models.CharField ( max_length=255, null=True, unique=False, verbose_name='性别' )
    zhuanye=models.CharField ( max_length=255, null=True, unique=False, verbose_name='专业' )
    zhuangtai=models.CharField ( max_length=255, null=True, unique=False, verbose_name='状态' )
    dengjiriqi=models.DateField   (  null=True, unique=False, verbose_name='登记日期' )
    beizhu=models.CharField ( max_length=255, null=True, unique=False, verbose_name='备注' )
    '''
    sushehao=VARCHAR
    loudong=VARCHAR
    louceng=VARCHAR
    chuangweihao=VARCHAR
    xuehao=VARCHAR
    xingming=VARCHAR
    banji=VARCHAR
    yuanxi=VARCHAR
    xingbie=VARCHAR
    zhuanye=VARCHAR
    zhuangtai=VARCHAR
    dengjiriqi=Date
    beizhu=VARCHAR
    '''
    class Meta:
        db_table = 'ruzhudengji'
        verbose_name = verbose_name_plural = '入住登记'
class wanguidengji(BaseModel):
    __doc__ = u'''wanguidengji'''
    __tablename__ = 'wanguidengji'



    __authTables__={'xuehao':'xuesheng',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    xuehao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='学号' )
    xingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='姓名' )
    yuanxi=models.CharField ( max_length=255, null=True, unique=False, verbose_name='院系' )
    banji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='班级' )
    sushehao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='宿舍号' )
    chuangweihao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='床位号' )
    wanguiyuanyin=models.TextField   (  null=True, unique=False, verbose_name='晚归原因' )
    wanguishijian=models.DateTimeField  (  null=True, unique=False, verbose_name='晚归时间' )
    chulicuoshi=models.TextField   (  null=True, unique=False, verbose_name='处理措施' )
    dengjiren=models.CharField ( max_length=255,null=False, unique=False, verbose_name='登记人' )
    '''
    xuehao=VARCHAR
    xingming=VARCHAR
    yuanxi=VARCHAR
    banji=VARCHAR
    sushehao=VARCHAR
    chuangweihao=VARCHAR
    wanguiyuanyin=Text
    wanguishijian=DateTime
    chulicuoshi=Text
    dengjiren=VARCHAR
    '''
    class Meta:
        db_table = 'wanguidengji'
        verbose_name = verbose_name_plural = '晚归登记'
class wupinjinchudengji(BaseModel):
    __doc__ = u'''wupinjinchudengji'''
    __tablename__ = 'wupinjinchudengji'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='是'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    wupinmingcheng=models.CharField ( max_length=255,null=False, unique=False, verbose_name='物品名称' )
    wupinshuliang=models.IntegerField  (  null=True, unique=False, verbose_name='物品数量' )
    chiyouzhe=models.CharField ( max_length=255, null=True, unique=False, verbose_name='持有者' )
    wupinjianshu=models.CharField ( max_length=255, null=True, unique=False, verbose_name='物品简述' )
    churuloudong=models.CharField ( max_length=255,null=False, unique=False, verbose_name='出入楼栋' )
    leixing=models.CharField ( max_length=255, null=True, unique=False, verbose_name='类型' )
    dengjishijian=models.DateTimeField  (  null=True, unique=False, verbose_name='登记时间' )
    beizhu=models.CharField ( max_length=255, null=True, unique=False, verbose_name='备注' )
    dengjiren=models.CharField ( max_length=255, null=True, unique=False, verbose_name='登记人' )
    userid=models.BigIntegerField  (  null=True, unique=False, verbose_name='用户id' )
    '''
    wupinmingcheng=VARCHAR
    wupinshuliang=Integer
    chiyouzhe=VARCHAR
    wupinjianshu=VARCHAR
    churuloudong=VARCHAR
    leixing=VARCHAR
    dengjishijian=DateTime
    beizhu=VARCHAR
    dengjiren=VARCHAR
    userid=BigInteger
    '''
    class Meta:
        db_table = 'wupinjinchudengji'
        verbose_name = verbose_name_plural = '物品进出登记'
class shuidianfei(BaseModel):
    __doc__ = u'''shuidianfei'''
    __tablename__ = 'shuidianfei'



    __authTables__={'xuehao':'xuesheng',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    yuefen=models.CharField ( max_length=255, null=True, unique=False, verbose_name='月份' )
    riqi=models.DateField   (  null=True, unique=False, verbose_name='日期' )
    xuehao=models.CharField ( max_length=255,null=False, unique=False, verbose_name='学号' )
    xingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='姓名' )
    sushehao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='宿舍号' )
    jiaofeixiangmu=models.CharField ( max_length=255,null=False, unique=False, verbose_name='缴费项目' )
    jine=models.FloatField   (  null=True, unique=False, verbose_name='金额' )
    beizhu=models.CharField ( max_length=255, null=True, unique=False, verbose_name='备注' )
    ispay=models.CharField ( max_length=255, null=True, unique=False,default='未支付', verbose_name='是否支付' )
    '''
    yuefen=VARCHAR
    riqi=Date
    xuehao=VARCHAR
    xingming=VARCHAR
    sushehao=VARCHAR
    jiaofeixiangmu=VARCHAR
    jine=Float
    beizhu=VARCHAR
    ispay=VARCHAR
    '''
    class Meta:
        db_table = 'shuidianfei'
        verbose_name = verbose_name_plural = '水电费'
class susheweisheng(BaseModel):
    __doc__ = u'''susheweisheng'''
    __tablename__ = 'susheweisheng'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='是'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    sushehao=models.CharField ( max_length=255,null=False, unique=False, verbose_name='宿舍号' )
    susheleixing=models.CharField ( max_length=255, null=True, unique=False, verbose_name='宿舍类型' )
    fengmian=models.TextField   (  null=True, unique=False, verbose_name='封面' )
    weishengqingkuang=models.CharField ( max_length=255,null=False, unique=False, verbose_name='卫生情况' )
    weishengpingfen=models.FloatField   ( null=False, unique=False, verbose_name='卫生评分' )
    jianchariqi=models.DateField   (  null=True, unique=False, verbose_name='检查日期' )
    jiancharen=models.CharField ( max_length=255,null=False, unique=False, verbose_name='检查人' )
    '''
    sushehao=VARCHAR
    susheleixing=VARCHAR
    fengmian=Text
    weishengqingkuang=VARCHAR
    weishengpingfen=Float
    jianchariqi=Date
    jiancharen=VARCHAR
    '''
    class Meta:
        db_table = 'susheweisheng'
        verbose_name = verbose_name_plural = '宿舍卫生'
class sushebaoxiu(BaseModel):
    __doc__ = u'''sushebaoxiu'''
    __tablename__ = 'sushebaoxiu'



    __authTables__={'xuehao':'xuesheng',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='是'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='是'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    baoxiumingcheng=models.CharField ( max_length=255,null=False, unique=False, verbose_name='报修名称' )
    guzhangtupian=models.TextField   (  null=True, unique=False, verbose_name='故障图片' )
    baoxiuneirong=models.TextField   (  null=True, unique=False, verbose_name='报修内容' )
    baoxiuriqi=models.DateField   (  null=True, unique=False, verbose_name='报修日期' )
    xuehao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='学号' )
    xingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='姓名' )
    shouji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='手机' )
    sushehao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='宿舍号' )
    sfsh=models.CharField ( max_length=255, null=True, unique=False,default='待审核', verbose_name='是否审核' )
    shhf=models.TextField   (  null=True, unique=False, verbose_name='审核回复' )
    '''
    baoxiumingcheng=VARCHAR
    guzhangtupian=Text
    baoxiuneirong=Text
    baoxiuriqi=Date
    xuehao=VARCHAR
    xingming=VARCHAR
    shouji=VARCHAR
    sushehao=VARCHAR
    sfsh=VARCHAR
    shhf=Text
    '''
    class Meta:
        db_table = 'sushebaoxiu'
        verbose_name = verbose_name_plural = '宿舍报修'
class forum(BaseModel):
    __doc__ = u'''forum'''
    __tablename__ = 'forum'



    __authTables__={}
    __foreEndListAuth__='是'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    title=models.CharField ( max_length=255, null=True, unique=False, verbose_name='帖子标题' )
    content=models.TextField   ( null=False, unique=False, verbose_name='帖子内容' )
    parentid=models.BigIntegerField  (  null=True, unique=False, verbose_name='父节点id' )
    userid=models.BigIntegerField  ( null=False, unique=False, verbose_name='用户id' )
    username=models.CharField ( max_length=255, null=True, unique=False, verbose_name='用户名' )
    avatarurl=models.TextField   (  null=True, unique=False, verbose_name='头像' )
    isdone=models.CharField ( max_length=255, null=True, unique=False, verbose_name='状态' )
    '''
    title=VARCHAR
    content=Text
    parentid=BigInteger
    userid=BigInteger
    username=VARCHAR
    avatarurl=Text
    isdone=VARCHAR
    '''
    class Meta:
        db_table = 'forum'
        verbose_name = verbose_name_plural = '论坛交流'
class news(BaseModel):
    __doc__ = u'''news'''
    __tablename__ = 'news'



    __authTables__={}
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    title=models.CharField ( max_length=255,null=False, unique=False, verbose_name='标题' )
    introduction=models.TextField   (  null=True, unique=False, verbose_name='简介' )
    picture=models.TextField   ( null=False, unique=False, verbose_name='图片' )
    content=models.TextField   ( null=False, unique=False, verbose_name='内容' )
    '''
    title=VARCHAR
    introduction=Text
    picture=Text
    content=Text
    '''
    class Meta:
        db_table = 'news'
        verbose_name = verbose_name_plural = '公告信息'
class aboutus(BaseModel):
    __doc__ = u'''aboutus'''
    __tablename__ = 'aboutus'



    __authTables__={}
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    title=models.CharField ( max_length=255,null=False, unique=False, verbose_name='标题' )
    subtitle=models.CharField ( max_length=255, null=True, unique=False, verbose_name='副标题' )
    content=models.TextField   ( null=False, unique=False, verbose_name='内容' )
    picture1=models.TextField   (  null=True, unique=False, verbose_name='图片1' )
    picture2=models.TextField   (  null=True, unique=False, verbose_name='图片2' )
    picture3=models.TextField   (  null=True, unique=False, verbose_name='图片3' )
    '''
    title=VARCHAR
    subtitle=VARCHAR
    content=Text
    picture1=Text
    picture2=Text
    picture3=Text
    '''
    class Meta:
        db_table = 'aboutus'
        verbose_name = verbose_name_plural = '关于我们'
class systemintro(BaseModel):
    __doc__ = u'''systemintro'''
    __tablename__ = 'systemintro'



    __authTables__={}
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    title=models.CharField ( max_length=255,null=False, unique=False, verbose_name='标题' )
    subtitle=models.CharField ( max_length=255, null=True, unique=False, verbose_name='副标题' )
    content=models.TextField   ( null=False, unique=False, verbose_name='内容' )
    picture1=models.TextField   (  null=True, unique=False, verbose_name='图片1' )
    picture2=models.TextField   (  null=True, unique=False, verbose_name='图片2' )
    picture3=models.TextField   (  null=True, unique=False, verbose_name='图片3' )
    '''
    title=VARCHAR
    subtitle=VARCHAR
    content=Text
    picture1=Text
    picture2=Text
    picture3=Text
    '''
    class Meta:
        db_table = 'systemintro'
        verbose_name = verbose_name_plural = '关于我们'
