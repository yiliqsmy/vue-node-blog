<template>
  <div class="home">
    <div class="background-wrapper" v-if="!mobileFlag">
      <div class="background" ref="background">
        <div class="txt">
          <p>I'm ChenLiang</p>
          <!-- <p class="first-line">心有猛虎</p>
          <p class="second-line">细嗅蔷薇</p> -->

          <div class="social-wrapper">
            <a href="https://github.com/Moon-Future/vue-node-blog" target="_blank">
              <icon-font class="social-icon" icon="icon-github" fontSize="42"></icon-font>
            </a>
            <el-popover
              placement="bottom"
              trigger="hover">
              <img class="wechat" src="../../assets/Wechat.jpg" alt="">
              <template slot="reference">
                <icon-font class="social-icon" icon="icon-weixin" fontSize="42"></icon-font>
              </template>
            </el-popover>
          </div>
        </div>
      </div>
    </div>
    <div class="content-container" :class="{mobile: mobileFlag}" ref="contentContainer">
      <article-list></article-list>
      <!-- <right-search></right-search> -->
    </div>
  </div>
</template>

<script>
  import ArticleList from '@/components/front/ArticleList'
  import RightSearch from '@/components/front/RightSearch'
  import IconFont from '@/components/Iconfont'
  import { mapGetters } from 'vuex'
  export default {
    name: 'home',
    props: ['resize'],
    computed: {
      ...mapGetters([
        'mobileFlag'
      ])
    },
    mounted() {
      if (!this.mobileFlag) {
        this.setHeight()
      }
    },
    methods: {
      setHeight(flag = false) {
        const width = document.documentElement.clientWidth
        const height = document.documentElement.clientHeight
        if (!flag) {
          // this.$refs.background.style.backgroundImage = `url(https://source.unsplash.com/1360x768/daily)`
          // this.$refs.background.style.backgroundImage = this.bgImg
        }
        this.$refs.background.style.height = height + 'px'
        this.$refs.contentContainer.style.minHeight = height + 'px'
      }
    },
    watch: {
      resize() {
        if (this.resize) {
          if (!this.mobileFlag) {
            this.setHeight()
          }
        }
      }
    },
    components: {
      ArticleList,
      RightSearch,
      IconFont
    }
  }
</script>

<style lang="scss" scoped>
  @import '@/common/css/variable.scss';
  .home {
    color: $color-black;
    height: 100%;
    width: 100%;
  }
  .background-wrapper {
    .background {
      width: 100%;
      background: url('../../assets/bg-3.jpg') no-repeat;
      background-size: cover;
      background-attachment: fixed;
      display: flex;
      align-items: center;
    }
  }
  .txt {
    position: absolute;
    width: 100%;
    color: $color-white;
    font-size: 32px;
    font-family: KaiTi, SimSun;
    .first-line {
      text-indent: -50px;
    }
    .second-line {
      text-indent: 50px;
    }
  }
  .social-wrapper {
    margin-top: 10px;
    .social-icon {
      cursor: pointer;
      margin-right: 10px;
      &:hover {
        color: $color-blue;
      }
    }
    .wechat {
      width: 200px;
      height: 200px;;
    }
  }
  .content-container {
    padding: 20px 30px;
    display: flex;
    position: relative;
    box-sizing: border-box;
    &.mobile {
      padding: initial;
    }
  }
</style>

