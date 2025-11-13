.class public final enum Lcom/samsung/android/sume/core/types/HwUnit;
.super Ljava/lang/Enum;
.source "HwUnit.java"

# interfaces
.implements Lcom/samsung/android/sume/core/types/NumericEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/core/types/HwUnit;",
        ">;",
        "Lcom/samsung/android/sume/core/types/NumericEnum;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/core/types/HwUnit;

.field public static final enum blacklist CPU:Lcom/samsung/android/sume/core/types/HwUnit;

.field public static final enum blacklist DSP:Lcom/samsung/android/sume/core/types/HwUnit;

.field public static final enum blacklist GPU:Lcom/samsung/android/sume/core/types/HwUnit;

.field public static final enum blacklist IP:Lcom/samsung/android/sume/core/types/HwUnit;

.field public static final enum blacklist NONE:Lcom/samsung/android/sume/core/types/HwUnit;

.field public static final enum blacklist NPU:Lcom/samsung/android/sume/core/types/HwUnit;


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 13

    .line 7
    new-instance v0, Lcom/samsung/android/sume/core/types/HwUnit;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/types/HwUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/HwUnit;->NONE:Lcom/samsung/android/sume/core/types/HwUnit;

    .line 8
    new-instance v1, Lcom/samsung/android/sume/core/types/HwUnit;

    const-string v3, "CPU"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/android/sume/core/types/HwUnit;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/sume/core/types/HwUnit;->CPU:Lcom/samsung/android/sume/core/types/HwUnit;

    .line 9
    new-instance v3, Lcom/samsung/android/sume/core/types/HwUnit;

    const-string v5, "GPU"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/samsung/android/sume/core/types/HwUnit;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    .line 10
    new-instance v5, Lcom/samsung/android/sume/core/types/HwUnit;

    const-string v7, "NPU"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/samsung/android/sume/core/types/HwUnit;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/sume/core/types/HwUnit;->NPU:Lcom/samsung/android/sume/core/types/HwUnit;

    .line 11
    new-instance v7, Lcom/samsung/android/sume/core/types/HwUnit;

    const-string v9, "DSP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/samsung/android/sume/core/types/HwUnit;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/sume/core/types/HwUnit;->DSP:Lcom/samsung/android/sume/core/types/HwUnit;

    .line 12
    new-instance v9, Lcom/samsung/android/sume/core/types/HwUnit;

    const-string v11, "IP"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/samsung/android/sume/core/types/HwUnit;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/sume/core/types/HwUnit;->IP:Lcom/samsung/android/sume/core/types/HwUnit;

    .line 6
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/samsung/android/sume/core/types/HwUnit;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/samsung/android/sume/core/types/HwUnit;->$VALUES:[Lcom/samsung/android/sume/core/types/HwUnit;

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

    iput p3, p0, Lcom/samsung/android/sume/core/types/HwUnit;->value:I

    return-void
.end method

.method public static blacklist from(I)Lcom/samsung/android/sume/core/types/HwUnit;
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
    const-class v0, Lcom/samsung/android/sume/core/types/HwUnit;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/types/NumericEnum;->fromValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/HwUnit;

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/types/HwUnit;
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

    .line 6
    const-class v0, Lcom/samsung/android/sume/core/types/HwUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/HwUnit;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/core/types/HwUnit;
    .locals 1

    .line 6
    sget-object v0, Lcom/samsung/android/sume/core/types/HwUnit;->$VALUES:[Lcom/samsung/android/sume/core/types/HwUnit;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/core/types/HwUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/core/types/HwUnit;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/samsung/android/sume/core/types/HwUnit;->value:I

    return v0
.end method

.method public blacklist stringfy()Ljava/lang/String;
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/HwUnit;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sume/core/types/HwUnit;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
