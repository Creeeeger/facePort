.class public final enum Lcom/google/zxing/DecodeHintType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/DecodeHintType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/zxing/DecodeHintType;

.field public static final enum ALLOWED_EAN_EXTENSIONS:Lcom/google/zxing/DecodeHintType;

.field public static final enum ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

.field public static final enum ALSO_INVERTED:Lcom/google/zxing/DecodeHintType;

.field public static final enum ASSUME_CODE_39_CHECK_DIGIT:Lcom/google/zxing/DecodeHintType;

.field public static final enum ASSUME_GS1:Lcom/google/zxing/DecodeHintType;

.field public static final enum CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

.field public static final enum NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

.field public static final enum POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

.field public static final enum PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

.field public static final enum RETURN_CODABAR_START_END:Lcom/google/zxing/DecodeHintType;

.field public static final enum TRY_HARDER:Lcom/google/zxing/DecodeHintType;


# instance fields
.field private final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/google/zxing/DecodeHintType;

    const-class v1, Ljava/lang/Object;

    const-string v2, "OTHER"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/google/zxing/DecodeHintType;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    new-instance v1, Lcom/google/zxing/DecodeHintType;

    const-class v2, Ljava/lang/Void;

    const-string v3, "PURE_BARCODE"

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/google/zxing/DecodeHintType;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    new-instance v2, Lcom/google/zxing/DecodeHintType;

    const-class v3, Ljava/util/List;

    const-string v4, "POSSIBLE_FORMATS"

    const/4 v5, 0x2

    invoke-direct {v2, v5, v3, v4}, Lcom/google/zxing/DecodeHintType;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v2, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    new-instance v3, Lcom/google/zxing/DecodeHintType;

    const-class v4, Ljava/lang/Void;

    const-string v5, "TRY_HARDER"

    const/4 v6, 0x3

    invoke-direct {v3, v6, v4, v5}, Lcom/google/zxing/DecodeHintType;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v3, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    new-instance v4, Lcom/google/zxing/DecodeHintType;

    const-class v5, Ljava/lang/String;

    const-string v6, "CHARACTER_SET"

    const/4 v7, 0x4

    invoke-direct {v4, v7, v5, v6}, Lcom/google/zxing/DecodeHintType;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v4, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    new-instance v5, Lcom/google/zxing/DecodeHintType;

    const-string v6, "ALLOWED_LENGTHS"

    const/4 v7, 0x5

    const-class v8, [I

    invoke-direct {v5, v7, v8, v6}, Lcom/google/zxing/DecodeHintType;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v5, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    new-instance v6, Lcom/google/zxing/DecodeHintType;

    const-class v7, Ljava/lang/Void;

    const-string v9, "ASSUME_CODE_39_CHECK_DIGIT"

    const/4 v10, 0x6

    invoke-direct {v6, v10, v7, v9}, Lcom/google/zxing/DecodeHintType;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v6, Lcom/google/zxing/DecodeHintType;->ASSUME_CODE_39_CHECK_DIGIT:Lcom/google/zxing/DecodeHintType;

    new-instance v7, Lcom/google/zxing/DecodeHintType;

    const-class v9, Ljava/lang/Void;

    const-string v10, "ASSUME_GS1"

    const/4 v11, 0x7

    invoke-direct {v7, v11, v9, v10}, Lcom/google/zxing/DecodeHintType;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v7, Lcom/google/zxing/DecodeHintType;->ASSUME_GS1:Lcom/google/zxing/DecodeHintType;

    new-instance v9, Lcom/google/zxing/DecodeHintType;

    const-class v10, Ljava/lang/Void;

    const-string v11, "RETURN_CODABAR_START_END"

    const/16 v12, 0x8

    invoke-direct {v9, v12, v10, v11}, Lcom/google/zxing/DecodeHintType;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v9, Lcom/google/zxing/DecodeHintType;->RETURN_CODABAR_START_END:Lcom/google/zxing/DecodeHintType;

    new-instance v10, Lcom/google/zxing/DecodeHintType;

    const-class v11, Lcom/google/zxing/ResultPointCallback;

    const-string v12, "NEED_RESULT_POINT_CALLBACK"

    const/16 v13, 0x9

    invoke-direct {v10, v13, v11, v12}, Lcom/google/zxing/DecodeHintType;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v10, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    new-instance v11, Lcom/google/zxing/DecodeHintType;

    const-string v12, "ALLOWED_EAN_EXTENSIONS"

    const/16 v13, 0xa

    invoke-direct {v11, v13, v8, v12}, Lcom/google/zxing/DecodeHintType;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v11, Lcom/google/zxing/DecodeHintType;->ALLOWED_EAN_EXTENSIONS:Lcom/google/zxing/DecodeHintType;

    new-instance v12, Lcom/google/zxing/DecodeHintType;

    const-class v8, Ljava/lang/Void;

    const-string v13, "ALSO_INVERTED"

    const/16 v14, 0xb

    invoke-direct {v12, v14, v8, v13}, Lcom/google/zxing/DecodeHintType;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v12, Lcom/google/zxing/DecodeHintType;->ALSO_INVERTED:Lcom/google/zxing/DecodeHintType;

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    filled-new-array/range {v0 .. v11}, [Lcom/google/zxing/DecodeHintType;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/DecodeHintType;->$VALUES:[Lcom/google/zxing/DecodeHintType;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/google/zxing/DecodeHintType;->valueType:Ljava/lang/Class;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/DecodeHintType;
    .locals 1

    const-class v0, Lcom/google/zxing/DecodeHintType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/DecodeHintType;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/DecodeHintType;
    .locals 1

    sget-object v0, Lcom/google/zxing/DecodeHintType;->$VALUES:[Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v0}, [Lcom/google/zxing/DecodeHintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/DecodeHintType;

    return-object v0
.end method
