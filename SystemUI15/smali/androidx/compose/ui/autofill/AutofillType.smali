.class public final enum Landroidx/compose/ui/autofill/AutofillType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/ui/autofill/AutofillType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum AddressAuxiliaryDetails:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum AddressCountry:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum AddressLocality:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum AddressRegion:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum AddressStreet:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum BirthDateDay:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum BirthDateFull:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum BirthDateMonth:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum BirthDateYear:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum CreditCardExpirationDate:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum CreditCardExpirationDay:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum CreditCardExpirationMonth:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum CreditCardExpirationYear:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum CreditCardNumber:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum CreditCardSecurityCode:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum EmailAddress:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum Gender:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum NewPassword:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum NewUsername:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum Password:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum PersonFirstName:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum PersonFullName:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum PersonLastName:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum PersonMiddleInitial:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum PersonMiddleName:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum PersonNamePrefix:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum PersonNameSuffix:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum PhoneCountryCode:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum PhoneNumber:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum PhoneNumberDevice:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum PhoneNumberNational:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum PostalAddress:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum PostalCode:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum PostalCodeExtended:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum SmsOtpCode:Landroidx/compose/ui/autofill/AutofillType;

.field public static final enum Username:Landroidx/compose/ui/autofill/AutofillType;


# direct methods
.method static constructor <clinit>()V
    .locals 38

    new-instance v0, Landroidx/compose/ui/autofill/AutofillType;

    const-string v1, "EmailAddress"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/ui/autofill/AutofillType;->EmailAddress:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v1, Landroidx/compose/ui/autofill/AutofillType;

    const-string v2, "Username"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/compose/ui/autofill/AutofillType;->Username:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v2, Landroidx/compose/ui/autofill/AutofillType;

    const-string v3, "Password"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/compose/ui/autofill/AutofillType;->Password:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v3, Landroidx/compose/ui/autofill/AutofillType;

    const-string v4, "NewUsername"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/compose/ui/autofill/AutofillType;->NewUsername:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v4, Landroidx/compose/ui/autofill/AutofillType;

    const-string v5, "NewPassword"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/compose/ui/autofill/AutofillType;->NewPassword:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v5, Landroidx/compose/ui/autofill/AutofillType;

    const-string v6, "PostalAddress"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/compose/ui/autofill/AutofillType;->PostalAddress:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v6, Landroidx/compose/ui/autofill/AutofillType;

    const-string v7, "PostalCode"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Landroidx/compose/ui/autofill/AutofillType;->PostalCode:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v7, Landroidx/compose/ui/autofill/AutofillType;

    const-string v8, "CreditCardNumber"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/compose/ui/autofill/AutofillType;->CreditCardNumber:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v8, Landroidx/compose/ui/autofill/AutofillType;

    const-string v9, "CreditCardSecurityCode"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Landroidx/compose/ui/autofill/AutofillType;->CreditCardSecurityCode:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v9, Landroidx/compose/ui/autofill/AutofillType;

    const-string v10, "CreditCardExpirationDate"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroidx/compose/ui/autofill/AutofillType;->CreditCardExpirationDate:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v10, Landroidx/compose/ui/autofill/AutofillType;

    const-string v11, "CreditCardExpirationMonth"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Landroidx/compose/ui/autofill/AutofillType;->CreditCardExpirationMonth:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v11, Landroidx/compose/ui/autofill/AutofillType;

    const-string v12, "CreditCardExpirationYear"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroidx/compose/ui/autofill/AutofillType;->CreditCardExpirationYear:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v12, Landroidx/compose/ui/autofill/AutofillType;

    const-string v13, "CreditCardExpirationDay"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Landroidx/compose/ui/autofill/AutofillType;->CreditCardExpirationDay:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v13, Landroidx/compose/ui/autofill/AutofillType;

    const-string v14, "AddressCountry"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Landroidx/compose/ui/autofill/AutofillType;->AddressCountry:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v14, Landroidx/compose/ui/autofill/AutofillType;

    const-string v15, "AddressRegion"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Landroidx/compose/ui/autofill/AutofillType;->AddressRegion:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v15, Landroidx/compose/ui/autofill/AutofillType;

    const-string v13, "AddressLocality"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Landroidx/compose/ui/autofill/AutofillType;->AddressLocality:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v14, Landroidx/compose/ui/autofill/AutofillType;

    const-string v13, "AddressStreet"

    move-object/from16 v18, v15

    const/16 v15, 0x10

    invoke-direct {v14, v13, v15}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Landroidx/compose/ui/autofill/AutofillType;->AddressStreet:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v15, Landroidx/compose/ui/autofill/AutofillType;

    const-string v13, "AddressAuxiliaryDetails"

    move-object/from16 v19, v14

    const/16 v14, 0x11

    invoke-direct {v15, v13, v14}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Landroidx/compose/ui/autofill/AutofillType;->AddressAuxiliaryDetails:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v14, Landroidx/compose/ui/autofill/AutofillType;

    const-string v13, "PostalCodeExtended"

    move-object/from16 v20, v15

    const/16 v15, 0x12

    invoke-direct {v14, v13, v15}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Landroidx/compose/ui/autofill/AutofillType;->PostalCodeExtended:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v15, Landroidx/compose/ui/autofill/AutofillType;

    const-string v13, "PersonFullName"

    move-object/from16 v21, v14

    const/16 v14, 0x13

    invoke-direct {v15, v13, v14}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Landroidx/compose/ui/autofill/AutofillType;->PersonFullName:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v14, Landroidx/compose/ui/autofill/AutofillType;

    const-string v13, "PersonFirstName"

    move-object/from16 v22, v15

    const/16 v15, 0x14

    invoke-direct {v14, v13, v15}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Landroidx/compose/ui/autofill/AutofillType;->PersonFirstName:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v15, Landroidx/compose/ui/autofill/AutofillType;

    const-string v13, "PersonLastName"

    move-object/from16 v23, v14

    const/16 v14, 0x15

    invoke-direct {v15, v13, v14}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Landroidx/compose/ui/autofill/AutofillType;->PersonLastName:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v14, Landroidx/compose/ui/autofill/AutofillType;

    const-string v13, "PersonMiddleName"

    move-object/from16 v24, v15

    const/16 v15, 0x16

    invoke-direct {v14, v13, v15}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Landroidx/compose/ui/autofill/AutofillType;->PersonMiddleName:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v15, Landroidx/compose/ui/autofill/AutofillType;

    const-string v13, "PersonMiddleInitial"

    move-object/from16 v25, v14

    const/16 v14, 0x17

    invoke-direct {v15, v13, v14}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Landroidx/compose/ui/autofill/AutofillType;->PersonMiddleInitial:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v14, Landroidx/compose/ui/autofill/AutofillType;

    const-string v13, "PersonNamePrefix"

    move-object/from16 v26, v15

    const/16 v15, 0x18

    invoke-direct {v14, v13, v15}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Landroidx/compose/ui/autofill/AutofillType;->PersonNamePrefix:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v15, Landroidx/compose/ui/autofill/AutofillType;

    const-string v13, "PersonNameSuffix"

    move-object/from16 v27, v14

    const/16 v14, 0x19

    invoke-direct {v15, v13, v14}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Landroidx/compose/ui/autofill/AutofillType;->PersonNameSuffix:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v14, Landroidx/compose/ui/autofill/AutofillType;

    const-string v13, "PhoneNumber"

    move-object/from16 v28, v15

    const/16 v15, 0x1a

    invoke-direct {v14, v13, v15}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Landroidx/compose/ui/autofill/AutofillType;->PhoneNumber:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v15, Landroidx/compose/ui/autofill/AutofillType;

    const-string v13, "PhoneNumberDevice"

    move-object/from16 v29, v14

    const/16 v14, 0x1b

    invoke-direct {v15, v13, v14}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Landroidx/compose/ui/autofill/AutofillType;->PhoneNumberDevice:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v14, Landroidx/compose/ui/autofill/AutofillType;

    const-string v13, "PhoneCountryCode"

    move-object/from16 v30, v15

    const/16 v15, 0x1c

    invoke-direct {v14, v13, v15}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Landroidx/compose/ui/autofill/AutofillType;->PhoneCountryCode:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v15, Landroidx/compose/ui/autofill/AutofillType;

    const-string v13, "PhoneNumberNational"

    move-object/from16 v31, v14

    const/16 v14, 0x1d

    invoke-direct {v15, v13, v14}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Landroidx/compose/ui/autofill/AutofillType;->PhoneNumberNational:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v14, Landroidx/compose/ui/autofill/AutofillType;

    const-string v13, "Gender"

    move-object/from16 v32, v15

    const/16 v15, 0x1e

    invoke-direct {v14, v13, v15}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Landroidx/compose/ui/autofill/AutofillType;->Gender:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v15, Landroidx/compose/ui/autofill/AutofillType;

    const-string v13, "BirthDateFull"

    move-object/from16 v33, v14

    const/16 v14, 0x1f

    invoke-direct {v15, v13, v14}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Landroidx/compose/ui/autofill/AutofillType;->BirthDateFull:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v14, Landroidx/compose/ui/autofill/AutofillType;

    const-string v13, "BirthDateDay"

    move-object/from16 v34, v15

    const/16 v15, 0x20

    invoke-direct {v14, v13, v15}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Landroidx/compose/ui/autofill/AutofillType;->BirthDateDay:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v15, Landroidx/compose/ui/autofill/AutofillType;

    const-string v13, "BirthDateMonth"

    move-object/from16 v35, v14

    const/16 v14, 0x21

    invoke-direct {v15, v13, v14}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Landroidx/compose/ui/autofill/AutofillType;->BirthDateMonth:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v14, Landroidx/compose/ui/autofill/AutofillType;

    const-string v13, "BirthDateYear"

    move-object/from16 v36, v15

    const/16 v15, 0x22

    invoke-direct {v14, v13, v15}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Landroidx/compose/ui/autofill/AutofillType;->BirthDateYear:Landroidx/compose/ui/autofill/AutofillType;

    new-instance v15, Landroidx/compose/ui/autofill/AutofillType;

    const-string v13, "SmsOtpCode"

    move-object/from16 v37, v14

    const/16 v14, 0x23

    invoke-direct {v15, v13, v14}, Landroidx/compose/ui/autofill/AutofillType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Landroidx/compose/ui/autofill/AutofillType;->SmsOtpCode:Landroidx/compose/ui/autofill/AutofillType;

    move-object/from16 v13, v16

    move-object/from16 v16, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v27

    move-object/from16 v27, v29

    move-object/from16 v29, v31

    move-object/from16 v31, v33

    move-object/from16 v33, v35

    move-object/from16 v35, v37

    move-object/from16 v14, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v26

    move-object/from16 v26, v28

    move-object/from16 v28, v30

    move-object/from16 v30, v32

    move-object/from16 v32, v34

    move-object/from16 v34, v36

    move-object/from16 v36, v15

    move-object/from16 v15, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v31

    move-object/from16 v31, v32

    move-object/from16 v32, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v35

    move-object/from16 v35, v36

    filled-new-array/range {v0 .. v35}, [Landroidx/compose/ui/autofill/AutofillType;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/autofill/AutofillType;->$VALUES:[Landroidx/compose/ui/autofill/AutofillType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/ui/autofill/AutofillType;
    .locals 1

    const-class v0, Landroidx/compose/ui/autofill/AutofillType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/autofill/AutofillType;

    return-object p0
.end method

.method public static values()[Landroidx/compose/ui/autofill/AutofillType;
    .locals 1

    sget-object v0, Landroidx/compose/ui/autofill/AutofillType;->$VALUES:[Landroidx/compose/ui/autofill/AutofillType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/ui/autofill/AutofillType;

    return-object v0
.end method
