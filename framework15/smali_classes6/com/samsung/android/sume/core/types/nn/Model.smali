.class public final enum Lcom/samsung/android/sume/core/types/nn/Model;
.super Ljava/lang/Enum;
.source "Model.java"

# interfaces
.implements Lcom/samsung/android/sume/core/types/NumericEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/core/types/nn/Model;",
        ">;",
        "Lcom/samsung/android/sume/core/types/NumericEnum;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/core/types/nn/Model;

.field public static final enum blacklist IMAGE_UPSCALER_X4:Lcom/samsung/android/sume/core/types/nn/Model;

.field public static final enum blacklist MIRACLE_ESTIMATOR:Lcom/samsung/android/sume/core/types/nn/Model;

.field public static final enum blacklist MIRACLE_FILTER:Lcom/samsung/android/sume/core/types/nn/Model;

.field public static final enum blacklist NONE:Lcom/samsung/android/sume/core/types/nn/Model;

.field public static final enum blacklist OLD_PHOTO_ENHANCER:Lcom/samsung/android/sume/core/types/nn/Model;

.field public static final enum blacklist OLD_PHOTO_ESTIMATOR:Lcom/samsung/android/sume/core/types/nn/Model;

.field public static final enum blacklist OLD_PHOTO_FACE_ENHANCER:Lcom/samsung/android/sume/core/types/nn/Model;

.field public static final enum blacklist VIDEO_UPSCALER_X4:Lcom/samsung/android/sume/core/types/nn/Model;


# instance fields
.field private final blacklist value:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/sume/core/types/nn/Model;
    .locals 8

    sget-object v0, Lcom/samsung/android/sume/core/types/nn/Model;->NONE:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v1, Lcom/samsung/android/sume/core/types/nn/Model;->IMAGE_UPSCALER_X4:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v2, Lcom/samsung/android/sume/core/types/nn/Model;->MIRACLE_ESTIMATOR:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v3, Lcom/samsung/android/sume/core/types/nn/Model;->MIRACLE_FILTER:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v4, Lcom/samsung/android/sume/core/types/nn/Model;->OLD_PHOTO_ESTIMATOR:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v5, Lcom/samsung/android/sume/core/types/nn/Model;->OLD_PHOTO_ENHANCER:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v6, Lcom/samsung/android/sume/core/types/nn/Model;->OLD_PHOTO_FACE_ENHANCER:Lcom/samsung/android/sume/core/types/nn/Model;

    sget-object v7, Lcom/samsung/android/sume/core/types/nn/Model;->VIDEO_UPSCALER_X4:Lcom/samsung/android/sume/core/types/nn/Model;

    filled-new-array/range {v0 .. v7}, [Lcom/samsung/android/sume/core/types/nn/Model;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sume/core/types/nn/Model;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/nn/Model;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/nn/Model;->NONE:Lcom/samsung/android/sume/core/types/nn/Model;

    new-instance v0, Lcom/samsung/android/sume/core/types/nn/Model;

    const-string v1, "IMAGE_UPSCALER_X4"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/nn/Model;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/nn/Model;->IMAGE_UPSCALER_X4:Lcom/samsung/android/sume/core/types/nn/Model;

    new-instance v0, Lcom/samsung/android/sume/core/types/nn/Model;

    const-string v1, "MIRACLE_ESTIMATOR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/nn/Model;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/nn/Model;->MIRACLE_ESTIMATOR:Lcom/samsung/android/sume/core/types/nn/Model;

    new-instance v0, Lcom/samsung/android/sume/core/types/nn/Model;

    const-string v1, "MIRACLE_FILTER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/nn/Model;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/nn/Model;->MIRACLE_FILTER:Lcom/samsung/android/sume/core/types/nn/Model;

    new-instance v0, Lcom/samsung/android/sume/core/types/nn/Model;

    const-string v1, "OLD_PHOTO_ESTIMATOR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/nn/Model;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/nn/Model;->OLD_PHOTO_ESTIMATOR:Lcom/samsung/android/sume/core/types/nn/Model;

    new-instance v0, Lcom/samsung/android/sume/core/types/nn/Model;

    const-string v1, "OLD_PHOTO_ENHANCER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/nn/Model;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/nn/Model;->OLD_PHOTO_ENHANCER:Lcom/samsung/android/sume/core/types/nn/Model;

    new-instance v0, Lcom/samsung/android/sume/core/types/nn/Model;

    const-string v1, "OLD_PHOTO_FACE_ENHANCER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/nn/Model;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/nn/Model;->OLD_PHOTO_FACE_ENHANCER:Lcom/samsung/android/sume/core/types/nn/Model;

    new-instance v0, Lcom/samsung/android/sume/core/types/nn/Model;

    const-string v1, "VIDEO_UPSCALER_X4"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/nn/Model;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/nn/Model;->VIDEO_UPSCALER_X4:Lcom/samsung/android/sume/core/types/nn/Model;

    invoke-static {}, Lcom/samsung/android/sume/core/types/nn/Model;->$values()[Lcom/samsung/android/sume/core/types/nn/Model;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/types/nn/Model;->$VALUES:[Lcom/samsung/android/sume/core/types/nn/Model;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sume/core/types/nn/Model;->value:I

    return-void
.end method

.method public static blacklist from(I)Lcom/samsung/android/sume/core/types/nn/Model;
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/types/nn/Model;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/types/NumericEnum;->fromValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/nn/Model;

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/types/nn/Model;
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/types/nn/Model;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/nn/Model;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/core/types/nn/Model;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/types/nn/Model;->$VALUES:[Lcom/samsung/android/sume/core/types/nn/Model;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/core/types/nn/Model;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/core/types/nn/Model;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sume/core/types/nn/Model;->value:I

    return v0
.end method

.method public blacklist stringfy()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/nn/Model;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sume/core/types/nn/Model;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
