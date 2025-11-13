.class public final enum Lcom/samsung/android/sume/nn/Model;
.super Ljava/lang/Enum;
.source "Model.java"

# interfaces
.implements Lcom/samsung/android/sume/ValuedEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/nn/Model;",
        ">;",
        "Lcom/samsung/android/sume/ValuedEnum;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/nn/Model;

.field public static final enum blacklist AI_UPSCALER_X4:Lcom/samsung/android/sume/nn/Model;

.field public static final enum blacklist MIRACLE_FILTER:Lcom/samsung/android/sume/nn/Model;

.field public static final enum blacklist NONE:Lcom/samsung/android/sume/nn/Model;

.field public static final enum blacklist OLD_PHOTO_ENHANCER:Lcom/samsung/android/sume/nn/Model;

.field public static final enum blacklist OLD_PHOTO_ESTIMATOR:Lcom/samsung/android/sume/nn/Model;


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 9
    new-instance v0, Lcom/samsung/android/sume/nn/Model;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/nn/Model;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/nn/Model;->NONE:Lcom/samsung/android/sume/nn/Model;

    .line 10
    new-instance v1, Lcom/samsung/android/sume/nn/Model;

    const-string v3, "AI_UPSCALER_X4"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/sume/nn/Model;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/sume/nn/Model;->AI_UPSCALER_X4:Lcom/samsung/android/sume/nn/Model;

    .line 11
    new-instance v3, Lcom/samsung/android/sume/nn/Model;

    const-string v5, "MIRACLE_FILTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/sume/nn/Model;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/sume/nn/Model;->MIRACLE_FILTER:Lcom/samsung/android/sume/nn/Model;

    .line 12
    new-instance v5, Lcom/samsung/android/sume/nn/Model;

    const-string v7, "OLD_PHOTO_ENHANCER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/samsung/android/sume/nn/Model;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/sume/nn/Model;->OLD_PHOTO_ENHANCER:Lcom/samsung/android/sume/nn/Model;

    .line 13
    new-instance v7, Lcom/samsung/android/sume/nn/Model;

    const-string v9, "OLD_PHOTO_ESTIMATOR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/samsung/android/sume/nn/Model;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/sume/nn/Model;->OLD_PHOTO_ESTIMATOR:Lcom/samsung/android/sume/nn/Model;

    .line 8
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/sume/nn/Model;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/samsung/android/sume/nn/Model;->$VALUES:[Lcom/samsung/android/sume/nn/Model;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sume/nn/Model;->value:I

    return-void
.end method

.method public static blacklist from(I)Lcom/samsung/android/sume/nn/Model;
    .locals 1
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 26
    const-class v0, Lcom/samsung/android/sume/nn/Model;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/ValuedEnum;->fromValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/nn/Model;

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/nn/Model;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 8
    const-class v0, Lcom/samsung/android/sume/nn/Model;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/nn/Model;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/nn/Model;
    .locals 1

    .line 8
    sget-object v0, Lcom/samsung/android/sume/nn/Model;->$VALUES:[Lcom/samsung/android/sume/nn/Model;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/nn/Model;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/nn/Model;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/samsung/android/sume/nn/Model;->value:I

    return v0
.end method

.method public blacklist toJson()Ljava/lang/String;
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sume/nn/Model;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sume/nn/Model;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
