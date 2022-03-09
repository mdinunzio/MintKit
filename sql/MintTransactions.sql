CREATE TABLE finances."MintTransactions_dev" (
	"Date" date NOT NULL,
	"Description" varchar NOT NULL,
	"OriginalDescription" varchar NULL,
	"Amount" numeric NULL,
	"TransactionType" varchar NULL,
	"Category" varchar NULL,
	"AccountName" varchar NULL,
	"Labels" varchar NULL,
	"Notes" varchar NULL,
	"UpdateDatetime" timestamp NULL,
	"Group" varchar NULL,
	"Subgroup" varchar NULL
);

CREATE INDEX "MintTransactions_dev_idx_date" ON finances."MintTransactions_dev" (
    "Date" DESC
);

CREATE INDEX "MintTransactions_dev_idx_des" ON finances."MintTransactions_dev" (
    "Description"
);

CREATE INDEX "MintTransactions_dev_idx_type" ON finances."MintTransactions_dev" (
    "TransactionType"
);

CREATE INDEX "MintTransactions_dev_idx_grp" ON finances."MintTransactions_dev" (
    "Group"
);

CREATE INDEX "MintTransactions_dev_idx_sgrp" ON finances."MintTransactions_dev" (
    "Subgroup"
);



COMMENT ON COLUMN finances."MintTransactions_dev"."Date" IS 'The date of the transaction.';
COMMENT ON COLUMN finances."MintTransactions_dev"."Description" IS 'Mint''s description of the transaction.';
COMMENT ON COLUMN finances."MintTransactions_dev"."OriginalDescription" IS 'The original source''s description of the transaction.';
COMMENT ON COLUMN finances."MintTransactions_dev"."Amount" IS 'The amount of the transaction.';
COMMENT ON COLUMN finances."MintTransactions_dev"."TransactionType" IS 'Whether the transaction was a debit or credit.';
COMMENT ON COLUMN finances."MintTransactions_dev"."Category" IS 'Mint''s categorization of the transaction.';
COMMENT ON COLUMN finances."MintTransactions_dev"."AccountName" IS 'The source account of the transaction.';
COMMENT ON COLUMN finances."MintTransactions_dev"."Labels" IS 'Labels from Mint.';
COMMENT ON COLUMN finances."MintTransactions_dev"."Notes" IS 'Notes from Mint.';
COMMENT ON COLUMN finances."MintTransactions_dev"."UpdateDatetime" IS 'The timestamp at which the row was last updated.';
COMMENT ON COLUMN finances."MintTransactions_dev"."Group" IS 'The user-defined group for the transaction.';
COMMENT ON COLUMN finances."MintTransactions_dev"."Subgroup" IS 'The user-defined subgroup for the transaction.';
