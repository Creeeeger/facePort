.class public final enum Lcom/google/zxing/BarcodeFormat;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/BarcodeFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/zxing/BarcodeFormat;

.field public static final enum AZTEC:Lcom/google/zxing/BarcodeFormat;

.field public static final enum CODABAR:Lcom/google/zxing/BarcodeFormat;

.field public static final enum CODE_128:Lcom/google/zxing/BarcodeFormat;

.field public static final enum CODE_39:Lcom/google/zxing/BarcodeFormat;

.field public static final enum CODE_93:Lcom/google/zxing/BarcodeFormat;

.field public static final enum DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

.field public static final enum EAN_13:Lcom/google/zxing/BarcodeFormat;

.field public static final enum EAN_8:Lcom/google/zxing/BarcodeFormat;

.field public static final enum ITF:Lcom/google/zxing/BarcodeFormat;

.field public static final enum PDF_417:Lcom/google/zxing/BarcodeFormat;

.field public static final enum QR_CODE:Lcom/google/zxing/BarcodeFormat;

.field public static final enum UPC_A:Lcom/google/zxing/BarcodeFormat;

.field public static final enum UPC_E:Lcom/google/zxing/BarcodeFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "AZTEC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    new-instance v1, Lcom/google/zxing/BarcodeFormat;

    const-string v2, "CODABAR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    new-instance v2, Lcom/google/zxing/BarcodeFormat;

    const-string v3, "CODE_39"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    new-instance v3, Lcom/google/zxing/BarcodeFormat;

    const-string v4, "CODE_93"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    new-instance v4, Lcom/google/zxing/BarcodeFormat;

    const-string v5, "CODE_128"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    new-instance v5, Lcom/google/zxing/BarcodeFormat;

    const-string v6, "DATA_MATRIX"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    new-instance v6, Lcom/google/zxing/BarcodeFormat;

    const-string v7, "EAN_8"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    new-instance v7, Lcom/google/zxing/BarcodeFormat;

    const-string v8, "EAN_13"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    new-instance v8, Lcom/google/zxing/BarcodeFormat;

    const-string v9, "ITF"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    new-instance v9, Lcom/google/zxing/BarcodeFormat;

    const-string v10, "MAXICODE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lcom/google/zxing/BarcodeFormat;

    const-string v11, "PDF_417"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    new-instance v11, Lcom/google/zxing/BarcodeFormat;

    const-string v12, "QR_CODE"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    new-instance v12, Lcom/google/zxing/BarcodeFormat;

    const-string v13, "RSS_14"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    new-instance v13, Lcom/google/zxing/BarcodeFormat;

    const-string v14, "RSS_EXPANDED"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lcom/google/zxing/BarcodeFormat;

    const-string v15, "UPC_A"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    new-instance v15, Lcom/google/zxing/BarcodeFormat;

    const-string v13, "UPC_E"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    new-instance v14, Lcom/google/zxing/BarcodeFormat;

    const-string v13, "UPC_EAN_EXTENSION"

    move-object/from16 v18, v15

    const/16 v15, 0x10

    invoke-direct {v14, v13, v15}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    move-object/from16 v13, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v18

    filled-new-array/range {v0 .. v16}, [Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->$VALUES:[Lcom/google/zxing/BarcodeFormat;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;
    .locals 1

    const-class v0, Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/BarcodeFormat;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/BarcodeFormat;
    .locals 1

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->$VALUES:[Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0}, [Lcom/google/zxing/BarcodeFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
