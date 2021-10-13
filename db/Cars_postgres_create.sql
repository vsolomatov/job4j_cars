CREATE TABLE "advertisement" (
	"id" serial NOT NULL,
	"desc" TEXT,
	"photo" bytea,
	"brand_id" int,
	"body_id" int,
	"status" BOOLEAN,
	"user_id" int NOT NULL,
	CONSTRAINT "advertisement_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);

CREATE TABLE "brand" (
	"id" serial NOT NULL,
	"name" TEXT NOT NULL,
	CONSTRAINT "brand_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);

CREATE TABLE "body" (
	"id" serial NOT NULL,
	"name" TEXT NOT NULL,
	CONSTRAINT "body_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);

CREATE TABLE "users" (
	"id" serial NOT NULL,
	"name" TEXT,
	"email" TEXT NOT NULL,
	"password" TEXT NOT NULL,
	CONSTRAINT "users_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);

ALTER TABLE "advertisement" ADD CONSTRAINT "advertisement_fk0" FOREIGN KEY ("brand_id") REFERENCES "brand"("id");
ALTER TABLE "advertisement" ADD CONSTRAINT "advertisement_fk1" FOREIGN KEY ("body_id") REFERENCES "body"("id");
ALTER TABLE "advertisement" ADD CONSTRAINT "advertisement_fk2" FOREIGN KEY ("user_id") REFERENCES "users"("id");




