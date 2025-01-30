const base = {
    get() {
        return {
            url : "http://localhost:8080/django0s7h5/",
            name: "django0s7h5",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/front/dist/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "学生宿舍管理系统"
        } 
    }
}
export default base
