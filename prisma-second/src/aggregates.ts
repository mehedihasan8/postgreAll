import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

const aggregetFunction = async () => {
  //find averag age
  const userAvgAge = await prisma.user.aggregate({
    _avg: {
      age: true,
    },
  });

  //find sum of age
  const userSumAge = await prisma.user.aggregate({
    _sum: {
      age: true,
    },
  });

  //find count of age just spacific feild
  const userCoundAge = await prisma.user.aggregate({
    _count: {
      age: true,
    },
  });

  //over all table cound or data

  const coundData = await prisma.user.count();

  //find Max age of users

  const userMaxAge = await prisma.user.aggregate({
    _max: {
      age: true,
    },
  });
  //find min age of users

  const userMinAge = await prisma.user.aggregate({
    _min: {
      age: true,
    },
  });

  console.log(userMinAge);
};
aggregetFunction();
