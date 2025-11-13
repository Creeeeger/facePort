.class abstract enum Lcom/google/zxing/qrcode/decoder/DataMask;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/qrcode/decoder/DataMask;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/zxing/qrcode/decoder/DataMask;

.field public static final enum DATA_MASK_000:Lcom/google/zxing/qrcode/decoder/DataMask$1;

.field public static final enum DATA_MASK_001:Lcom/google/zxing/qrcode/decoder/DataMask$2;

.field public static final enum DATA_MASK_010:Lcom/google/zxing/qrcode/decoder/DataMask$3;

.field public static final enum DATA_MASK_011:Lcom/google/zxing/qrcode/decoder/DataMask$4;

.field public static final enum DATA_MASK_100:Lcom/google/zxing/qrcode/decoder/DataMask$5;

.field public static final enum DATA_MASK_101:Lcom/google/zxing/qrcode/decoder/DataMask$6;

.field public static final enum DATA_MASK_110:Lcom/google/zxing/qrcode/decoder/DataMask$7;

.field public static final enum DATA_MASK_111:Lcom/google/zxing/qrcode/decoder/DataMask$8;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/google/zxing/qrcode/decoder/DataMask$1;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/decoder/DataMask$1;-><init>()V

    new-instance v1, Lcom/google/zxing/qrcode/decoder/DataMask$2;

    invoke-direct {v1}, Lcom/google/zxing/qrcode/decoder/DataMask$2;-><init>()V

    new-instance v2, Lcom/google/zxing/qrcode/decoder/DataMask$3;

    invoke-direct {v2}, Lcom/google/zxing/qrcode/decoder/DataMask$3;-><init>()V

    new-instance v3, Lcom/google/zxing/qrcode/decoder/DataMask$4;

    invoke-direct {v3}, Lcom/google/zxing/qrcode/decoder/DataMask$4;-><init>()V

    new-instance v4, Lcom/google/zxing/qrcode/decoder/DataMask$5;

    invoke-direct {v4}, Lcom/google/zxing/qrcode/decoder/DataMask$5;-><init>()V

    new-instance v5, Lcom/google/zxing/qrcode/decoder/DataMask$6;

    invoke-direct {v5}, Lcom/google/zxing/qrcode/decoder/DataMask$6;-><init>()V

    new-instance v6, Lcom/google/zxing/qrcode/decoder/DataMask$7;

    invoke-direct {v6}, Lcom/google/zxing/qrcode/decoder/DataMask$7;-><init>()V

    new-instance v7, Lcom/google/zxing/qrcode/decoder/DataMask$8;

    invoke-direct {v7}, Lcom/google/zxing/qrcode/decoder/DataMask$8;-><init>()V

    filled-new-array/range {v0 .. v7}, [Lcom/google/zxing/qrcode/decoder/DataMask;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->$VALUES:[Lcom/google/zxing/qrcode/decoder/DataMask;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/DataMask;
    .locals 1

    const-class v0, Lcom/google/zxing/qrcode/decoder/DataMask;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/qrcode/decoder/DataMask;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/qrcode/decoder/DataMask;
    .locals 1

    sget-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->$VALUES:[Lcom/google/zxing/qrcode/decoder/DataMask;

    invoke-virtual {v0}, [Lcom/google/zxing/qrcode/decoder/DataMask;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/qrcode/decoder/DataMask;

    return-object v0
.end method


# virtual methods
.method public abstract isMasked(II)Z
.end method
