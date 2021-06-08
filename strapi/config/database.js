module.exports = ({ env }) => ({
  defaultConnection: "default",
  connections: {
    default: {
      connector: "bookshelf",
      settings: {
        client: "postgres",
        host: env("DATABASE_HOST", "lsbpl-postgres-docker"),
        port: env.int("DATABASE_PORT", 5432),
        database: env("DATABASE_NAME", "strapi"),
        username: env("DATABASE_USERNAME", "strapi"),
        password: env("DATABASE_PASSWORD", "strapi"),
        ssl: env.bool("DATABASE_SSL", false),
      },
      options: {
        pool: {
          min: 0,
          max: 50,
          idleTimeoutMillis: 3000,
          createTimeoutMillis: 3000,
          acquireTimeoutMillis: 3000,
        },
      },
    },
  },
});
