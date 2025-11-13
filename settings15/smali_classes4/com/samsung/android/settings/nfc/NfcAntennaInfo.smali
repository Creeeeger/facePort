.class public final enum Lcom/samsung/android/settings/nfc/NfcAntennaInfo;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/nfc/NfcAntennaInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/nfc/NfcAntennaInfo;


# instance fields
.field final animationJSONValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 26

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const v3, 0x7f130064

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    const-string v2, "CENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    const-string v3, "TOP"

    const/4 v4, 0x2

    const v5, 0x7f130060

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    const-string v4, "BOTTOM"

    const/4 v6, 0x3

    const v7, 0x7f130063

    invoke-direct {v3, v4, v6, v7}, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    const-string v6, "ABOVE_MID"

    const/4 v8, 0x4

    const v9, 0x7f130061

    invoke-direct {v4, v6, v8, v9}, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    const v8, 0x7f130070

    const-string v10, "RIGHT_TOP"

    const/4 v11, 0x5

    invoke-direct {v6, v10, v11, v8}, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    const v10, 0x7f13006b

    const-string v11, "LEFT"

    const/4 v12, 0x6

    invoke-direct {v8, v11, v12, v10}, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    const v11, 0x7f13006d

    const-string v12, "RIGHT"

    const/4 v13, 0x7

    invoke-direct {v10, v12, v13, v11}, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    const-string v12, "TOP_FOLDER"

    const/16 v13, 0x8

    invoke-direct {v11, v12, v13, v5}, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    const-string v5, "ABOVE_MID_TAB"

    const/16 v13, 0x9

    invoke-direct {v12, v5, v13, v9}, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;-><init>(Ljava/lang/String;II)V

    new-instance v13, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    const v5, 0x7f130066

    const-string v9, "FLEX"

    const/16 v14, 0xa

    invoke-direct {v13, v9, v14, v5}, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    const v5, 0x7f13006e

    const-string v9, "RIGHT_CENTER"

    const/16 v15, 0xb

    invoke-direct {v14, v9, v15, v5}, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    const-string v5, "BOTTOM_MID"

    const/16 v9, 0xc

    invoke-direct {v15, v5, v9, v7}, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    const v5, 0x7f130068

    const-string v7, "BOTTOM_MID_FOLDER"

    move-object/from16 v16, v15

    const/16 v15, 0xd

    invoke-direct {v9, v7, v15, v5}, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    const v5, 0x7f130072

    const-string v7, "RIGHT_TOP_PORT_TA"

    move-object/from16 v17, v9

    const/16 v9, 0xe

    invoke-direct {v15, v7, v9, v5}, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    const v5, 0x7f13006c

    const-string v7, "LEFT_DCM"

    move-object/from16 v18, v15

    const/16 v15, 0xf

    invoke-direct {v9, v7, v15, v5}, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    const v5, 0x7f130071

    const-string v7, "RIGHT_TOP_PORT"

    move-object/from16 v19, v9

    const/16 v9, 0x10

    invoke-direct {v15, v7, v9, v5}, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    const v5, 0x7f13006f

    const-string v7, "RIGHT_CENTER_DELTA"

    move-object/from16 v20, v15

    const/16 v15, 0x11

    invoke-direct {v9, v7, v15, v5}, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    const v5, 0x7f130065

    const-string v7, "CENTER_TAB"

    move-object/from16 v21, v9

    const/16 v9, 0x12

    invoke-direct {v15, v7, v9, v5}, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    const v5, 0x7f130069

    const-string v7, "BOTTOM_MID_FOLDER_LARGE_FRONT_LCD"

    move-object/from16 v22, v15

    const/16 v15, 0x13

    invoke-direct {v9, v7, v15, v5}, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    const v5, 0x7f13006a

    const-string v7, "BOTTOM_MID_FOLDER_LARGE_FRONT_LCD_B6"

    move-object/from16 v23, v9

    const/16 v9, 0x14

    invoke-direct {v15, v7, v9, v5}, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    const v5, 0x7f130067

    const-string v7, "FLEX_Q6"

    move-object/from16 v24, v15

    const/16 v15, 0x15

    invoke-direct {v9, v7, v15, v5}, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    const v5, 0x7f130062

    const-string v7, "ACTIVE_5_PRO"

    move-object/from16 v25, v9

    const/16 v9, 0x16

    invoke-direct {v15, v7, v9, v5}, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;-><init>(Ljava/lang/String;II)V

    move-object v5, v6

    move-object v6, v8

    move-object v7, v10

    move-object v8, v11

    move-object v9, v12

    move-object v10, v13

    move-object v11, v14

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move-object/from16 v16, v20

    move-object/from16 v18, v22

    move-object/from16 v20, v24

    move-object/from16 v22, v15

    move-object/from16 v15, v19

    move-object/from16 v17, v21

    move-object/from16 v19, v23

    move-object/from16 v21, v25

    filled-new-array/range {v0 .. v22}, [Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;->$VALUES:[Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;->animationJSONValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/nfc/NfcAntennaInfo;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/nfc/NfcAntennaInfo;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;->$VALUES:[Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/nfc/NfcAntennaInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    return-object v0
.end method
