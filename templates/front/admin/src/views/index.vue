<template>
	<el-container>
		<index-main></index-main>
	</el-container>
</template>
<script>
	import IndexMain from '@/components/index/IndexMain'
	export default {
		components: {
			IndexMain
		}
	}
</script>

<style lang="scss" scoped>
	// 铺满全屏
	.el-container {
		position: absolute;
		width: 100%;
		top: 0;
		left: 0;
		bottom: 0;
		display: block;
	}

	.index-container {
		min-height: 100vh;
		background: #f0f2f5;

		.el-header {
			background: #fff;
			box-shadow: 0 1px 4px rgba(0,0,0,0.08);
			position: relative;
			z-index: 1;
		}

		.el-aside {
			background: #001529;
			
			.el-menu {
				border: none;
				
				.el-menu-item {
					color: rgba(255,255,255,0.65);
					
					&:hover, &.is-active {
						color: #fff;
						background: #1890ff;
					}
				}
			}
		}

		.el-main {
			padding: 0;
			background: #f0f2f5;
		}
	}
</style>
