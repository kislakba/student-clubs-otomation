<template>
    <header class="fixed-top">
        <div class="header-top">
            <div class="container">
                <div class="logo">
                    <h2>FSMVU Ögrenci Toplulugu</h2>
                    <h5>by Yeni Nesil ARGE</h5>
                </div>
            </div>
        </div>
        <div class="header-bottom">
            <div class="container">
                <div class="navbar">
                    <ul>
                        <li><router-link to="/">Anasayfa</router-link></li>
                        <li><router-link to="/about">About</router-link></li>
                        <li class="external"><a href="https://github.com/maeyler/BLM305/">GitHub Repo</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
</template>

<script>
export default {
  name: 'HeaderTheme'
}
</script>

<style scoped lang="scss">
    header {
    }

    header .header-mobile {
        display: none;
    }

    header .header-top {
        height: 100px;
        display: flex;
        align-items: center;
    }

    header .header-top .logo {
        float: left;
        margin-left: 20px;
    }

    header .header-top .logo h2 {
        font-size: 30px;
        color: #2d2d2d;
        font-weight: bold;
        font-family: 'ABeeZee';
    }

    header .header-top .logo h5 {
        float: right;
        margin-top: 10px;
        color: #2d2d2d;
        font-size: 15.6px;
        font-weight: normal;
        font-family: 'Comfortaa';
    }

    header .header-bottom {
        height: 50px;
        display: flex;
        overflow: hidden;
        align-items: center;
        background-color: #fbc02d;
    }

    .navbar{
        float: left;
    }

    .navbar ul li{
        float: left;
    }

    .navbar ul li a{
        padding: 20px;
        display: block;
        font-size: 13px;
        color: #101010;
        letter-spacing: 1px;
        font-weight: 900;
        text-decoration: none;
        font-family: 'Comfortaa';
        text-transform: uppercase;
        transition: all 0.5s ease 0s;
    }

    .navbar ul li a:hover{
        cursor: pointer;
        color: #79590a;
    }

    .router-link-exact-active.router-link-active{
        float: left;
        color: #79590a;
    }

    .navbar ul li.external a::after{
        content: '';
        width: 15px;
        height: 15px;
        float: right;
        display: block;
        margin-left: 5px;
        background-image: url("http://fsmvu.com/images/external.png");
        background-repeat: no-repeat;
        background-size: 15px 15px;
    }
</style>
