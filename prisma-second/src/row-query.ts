import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();
const main = async () => {
  //const posts = await prisma.$queryRaw`SELECT * FROM "posts"`
  //console.log(posts)
  // delete users table data
  //await prisma.$queryRaw`TRUNCATE TABLE "users" CASCADE`;
  //await prisma.$queryRaw`TRUNCATE TABLE "categoris" CASCADE`;
};

main();
