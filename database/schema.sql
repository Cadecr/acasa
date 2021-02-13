set client_min_messages to warning;

-- DANGER: this is NOT how to do it in the real world.
-- `drop schema` INSTANTLY ERASES EVERYTHING.
drop schema "acasa" cascade;

create schema "acasa";


CREATE TABLE "users" (
	"userId" serial NOT NULL,
	"firstName" TEXT NOT NULL,
	"lastName" TEXT NOT NULL,
	"email" TEXT NOT NULL,
	"password" TEXT NOT NULL,
	CONSTRAINT "users_pk" PRIMARY KEY ("userId")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "homes" (
	"homeId" serial NOT NULL,
	"userId" integer NOT NULL,
	"type" TEXT NOT NULL,
	"address" TEXT NOT NULL,
	"city" TEXT NOT NULL,
	"state" TEXT NOT NULL,
	"zip" integer NOT NULL,
	"price" integer NOT NULL,
	"bedrooms" integer NOT NULL,
	"bathrooms" integer NOT NULL,
	"sqft" integer NOT NULL,
	"yearBuilt" integer NOT NULL,
	"description" TEXT NOT NULL,
	"heating" TEXT NOT NULL,
	"cooling" TEXT NOT NULL,
	CONSTRAINT "homes_pk" PRIMARY KEY ("homeId")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "homeImages" (
	"homeImagesId" serial NOT NULL,
	"homeId" integer NOT NULL,
	"imageUrl" TEXT NOT NULL,
	CONSTRAINT "homeImages_pk" PRIMARY KEY ("homeImagesId")
) WITH (
  OIDS=FALSE
);




ALTER TABLE "homes" ADD CONSTRAINT "homes_fk1" FOREIGN KEY ("userId") REFERENCES "users"("userId");

ALTER TABLE "homeImages" ADD CONSTRAINT "homeImages_fk0" FOREIGN KEY ("homeId") REFERENCES "homes"("homeId");
