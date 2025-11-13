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
.method private static synthetic blacklist $values()[Lcom/samsung/android/sume/core/types/HwUnit;
    .locals 6

    sget-object v0, Lcom/samsung/android/sume/core/types/HwUnit;->NONE:Lcom/samsung/android/sume/core/types/HwUnit;

    sget-object v1, Lcom/samsung/android/sume/core/types/HwUnit;->CPU:Lcom/samsung/android/sume/core/types/HwUnit;

    sget-object v2, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    sget-object v3, Lcom/samsung/android/sume/core/types/HwUnit;->NPU:Lcom/samsung/android/sume/core/types/HwUnit;

    sget-object v4, Lcom/samsung/android/sume/core/types/HwUnit;->DSP:Lcom/samsung/android/sume/core/types/HwUnit;

    sget-object v5, Lcom/samsung/android/sume/core/types/HwUnit;->IP:Lcom/samsung/android/sume/core/types/HwUnit;

    filled-new-array/range {v0 .. v5}, [Lcom/samsung/android/sume/core/types/HwUnit;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/sume/core/types/HwUnit;

    const/4 v1, -0x1

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sume/core/types/HwUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/HwUnit;->NONE:Lcom/samsung/android/sume/core/types/HwUnit;

    new-instance v0, Lcom/samsung/android/sume/core/types/HwUnit;

    const-string v1, "CPU"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/types/HwUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/HwUnit;->CPU:Lcom/samsung/android/sume/core/types/HwUnit;

    new-instance v0, Lcom/samsung/android/sume/core/types/HwUnit;

    const-string v1, "GPU"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/sume/core/types/HwUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/HwUnit;->GPU:Lcom/samsung/android/sume/core/types/HwUnit;

    new-instance v0, Lcom/samsung/android/sume/core/types/HwUnit;

    const-string v1, "NPU"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/types/HwUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/HwUnit;->NPU:Lcom/samsung/android/sume/core/types/HwUnit;

    new-instance v0, Lcom/samsung/android/sume/core/types/HwUnit;

    const-string v1, "DSP"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/sume/core/types/HwUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/HwUnit;->DSP:Lcom/samsung/android/sume/core/types/HwUnit;

    new-instance v0, Lcom/samsung/android/sume/core/types/HwUnit;

    const-string v1, "IP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/types/HwUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/HwUnit;->IP:Lcom/samsung/android/sume/core/types/HwUnit;

    invoke-static {}, Lcom/samsung/android/sume/core/types/HwUnit;->$values()[Lcom/samsung/android/sume/core/types/HwUnit;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/types/HwUnit;->$VALUES:[Lcom/samsung/android/sume/core/types/HwUnit;

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

    iput p3, p0, Lcom/samsung/android/sume/core/types/HwUnit;->value:I

    return-void
.end method

.method public static blacklist from(I)Lcom/samsung/android/sume/core/types/HwUnit;
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/types/HwUnit;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/types/NumericEnum;->fromValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/HwUnit;

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/types/HwUnit;
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/types/HwUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/HwUnit;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/core/types/HwUnit;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/types/HwUnit;->$VALUES:[Lcom/samsung/android/sume/core/types/HwUnit;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/core/types/HwUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/core/types/HwUnit;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sume/core/types/HwUnit;->value:I

    return v0
.end method

.method public blacklist stringfy()Ljava/lang/String;
    .locals 2

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
