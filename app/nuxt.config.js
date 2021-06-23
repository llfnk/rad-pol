export default {
  // Global page headers: https://go.nuxtjs.dev/config-head
  // server: {
  //   port: 3333, // default: 3000
  // },
  head: {
    htmlAttrs: {
      lang: 'pl',
    },
    meta: [
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { charset: 'iso-8859-1' },
    ],
    link: [
      {
        rel: 'icon',
        type: 'image/x-icon',
        href: '/favicon/favicon.ico',
      },
      {
        rel: 'preconnect',
        crossorigin: true,
        href: 'https://fonts.gstatic.com',
      },
      {
        rel: 'preload',
        as: 'style',
        href: 'https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700&display=swap&subset=latin-ext',
      },
      {
        rel: 'stylesheet',
        media: 'print',
        onload: "this.onload=null;this.removeAttribute('media');",
        href: 'https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700&display=swap&subset=latin-ext',
      },
    ],
  },

  // Global CSS: https://go.nuxtjs.dev/config-css
  css: [],

  // Plugins to run before rendering page: https://go.nuxtjs.dev/config-plugins
  plugins: [],

  // Auto import components: https://go.nuxtjs.dev/config-components
  components: true,

  // Modules for dev and build (recommended): https://go.nuxtjs.dev/config-modules
  buildModules: [],

  // Modules: https://go.nuxtjs.dev/config-modules
  modules: [
    // https://go.nuxtjs.dev/axios
    '@nuxtjs/axios',
    // https://go.nuxtjs.dev/pwa
    '@nuxtjs/pwa',
    '@nuxtjs/style-resources',
  ],
  styleResources: {
    scss: ['~/assets/style/variables.scss', '~/assets/style/global.scss'],
  },

  // Axios module configuration: https://go.nuxtjs.dev/config-axios
  axios: {},

  // PWA module configuration: https://go.nuxtjs.dev/pwa
  pwa: {
    manifest: {
      lang: 'en',
    },
  },

  // Build Configuration: https://go.nuxtjs.dev/config-build
  build: {},
}
