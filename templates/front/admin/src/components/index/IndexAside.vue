<template>
  <el-aside class="index-aside" width="200px">
    <div class="index-aside-inner">
      <el-menu default-active="1">
        <el-menu-item @click="menuHandler('/')" index="1">
          <!-- <i class="el-icon-s-home"></i> -->
          首页
        </el-menu-item>
        <sub-menu
          v-for="menu in menuList"
          :key="menu.menuId"
          :menu="menu"
          :dynamicMenuRoutes="dynamicMenuRoutes"
        ></sub-menu>
      </el-menu>
    </div>
  </el-aside>
</template>
<script>
import SubMenu from "@/components/index/IndexAsideSub";
export default {
  data() {
    return {
      menuList: [],
      dynamicMenuRoutes: []
    };
  },
  components: {
    SubMenu
  },
  mounted() {
    // 获取动态菜单数据并且渲染
    this.menuList = JSON.parse(sessionStorage.getItem("menuList") || "[]");
    this.dynamicMenuRoutes = JSON.parse(
      sessionStorage.getItem("dynamicMenuRoutes") || "[]"
    );
  },
  methods: {
    menuHandler(path) {
      this.$router.push({ path: path });
    }
  }
};
</script>
<style lang="scss" scoped>
.index-aside {
  background: #001529;
  min-height: calc(100vh - 64px);
  
  .el-menu {
    background: transparent;
    border: none;
    
    .el-menu-item {
      color: rgba(255,255,255,0.65);
      
      &:hover, &.is-active {
        color: #fff;
        background: #1890ff;
      }
    }
    
    .el-submenu__title {
      color: rgba(255,255,255,0.65);
      
      &:hover {
        color: #fff;
        background: rgba(255,255,255,0.1);
      }
    }
  }
}
</style>

