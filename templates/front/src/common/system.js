export function isAuth(tableName, key) {
  let role = localStorage.getItem("UserTableName");
  let menus = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-camera","buttons":["新增","查看","修改","删除"],"menu":"学生","menuJump":"列表","tableName":"xuesheng"}],"menu":"学生管理"},{"child":[{"appFrontIcon":"cuIcon-camera","buttons":["新增","查看","修改","删除"],"menu":"寝室信息","menuJump":"列表","tableName":"qinshixinxi"}],"menu":"寝室信息管理"},{"child":[{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"入住登记","menuJump":"列表","tableName":"ruzhudengji"}],"menu":"入住登记管理"},{"child":[{"appFrontIcon":"cuIcon-addressbook","buttons":["新增","查看","修改","删除"],"menu":"晚归登记","menuJump":"列表","tableName":"wanguidengji"}],"menu":"晚归登记管理"},{"child":[{"appFrontIcon":"cuIcon-copy","buttons":["新增","查看","修改","删除"],"menu":"物品进出登记","menuJump":"列表","tableName":"wupinjinchudengji"}],"menu":"物品进出登记管理"},{"child":[{"appFrontIcon":"cuIcon-link","buttons":["新增","查看","修改","删除"],"menu":"水电费","menuJump":"列表","tableName":"shuidianfei"}],"menu":"水电费管理"},{"child":[{"appFrontIcon":"cuIcon-cardboard","buttons":["新增","查看","修改","删除"],"menu":"宿舍卫生","menuJump":"列表","tableName":"susheweisheng"}],"menu":"宿舍卫生管理"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看","删除","审核"],"menu":"宿舍报修","menuJump":"列表","tableName":"sushebaoxiu"}],"menu":"宿舍报修管理"},{"child":[{"appFrontIcon":"cuIcon-group","buttons":["查看","修改","删除"],"menu":"论坛交流","tableName":"forum"}],"menu":"论坛交流"},{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["查看","修改"],"menu":"系统简介","tableName":"systemintro"},{"appFrontIcon":"cuIcon-discover","buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"},{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"公告信息","tableName":"news"},{"appFrontIcon":"cuIcon-medal","buttons":["查看","修改"],"menu":"关于我们","tableName":"aboutus"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["查看"],"menu":"寝室信息列表","menuJump":"列表","tableName":"qinshixinxi"}],"menu":"寝室信息模块"},{"child":[{"appFrontIcon":"cuIcon-brand","buttons":["查看"],"menu":"宿舍卫生列表","menuJump":"列表","tableName":"susheweisheng"}],"menu":"宿舍卫生模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-news","buttons":["查看"],"menu":"入住登记","menuJump":"列表","tableName":"ruzhudengji"}],"menu":"入住登记管理"},{"child":[{"appFrontIcon":"cuIcon-addressbook","buttons":["查看"],"menu":"晚归登记","menuJump":"列表","tableName":"wanguidengji"}],"menu":"晚归登记管理"},{"child":[{"appFrontIcon":"cuIcon-link","buttons":["查看","支付"],"menu":"水电费","menuJump":"列表","tableName":"shuidianfei"}],"menu":"水电费管理"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["新增","查看","修改","删除"],"menu":"宿舍报修","menuJump":"列表","tableName":"sushebaoxiu"}],"menu":"宿舍报修管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["查看"],"menu":"寝室信息列表","menuJump":"列表","tableName":"qinshixinxi"}],"menu":"寝室信息模块"},{"child":[{"appFrontIcon":"cuIcon-brand","buttons":["查看"],"menu":"宿舍卫生列表","menuJump":"列表","tableName":"susheweisheng"}],"menu":"宿舍卫生模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"学生","tableName":"xuesheng"}];
  for(let i=0;i<menus.length;i++){
    if(menus[i].tableName==role){
      for(let j=0;j<menus[i].frontMenu.length;j++){
          for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
            if(tableName==menus[i].frontMenu[j].child[k].tableName){
              let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
              return buttons.indexOf(key) !== -1 || false
            }
          }
      }
    }
  }
  return false;
}

/**
 *  * 获取当前时间（yyyy-MM-dd hh:mm:ss）
 *   */
export function getCurDateTime() {
    let currentTime = new Date(),
    year = currentTime.getFullYear(),
    month = currentTime.getMonth() + 1 < 10 ? '0' + (currentTime.getMonth() + 1) : currentTime.getMonth() + 1,
    day = currentTime.getDate() < 10 ? '0' + currentTime.getDate() : currentTime.getDate(),
    hour = currentTime.getHours(),
    minute = currentTime.getMinutes(),
    second = currentTime.getSeconds();
    return year + "-" + month + "-" + day + " " +hour +":" +minute+":"+second;
}

/**
 *  * 获取当前日期（yyyy-MM-dd）
 *   */
export function getCurDate() {
    let currentTime = new Date(),
    year = currentTime.getFullYear(),
    month = currentTime.getMonth() + 1 < 10 ? '0' + (currentTime.getMonth() + 1) : currentTime.getMonth() + 1,
    day = currentTime.getDate() < 10 ? '0' + currentTime.getDate() : currentTime.getDate();
    return year + "-" + month + "-" + day;
}
