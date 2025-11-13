.class public final enum Lcom/samsung/android/sume/nn/NNFW;
.super Ljava/lang/Enum;
.source "NNFW.java"

# interfaces
.implements Lcom/samsung/android/sume/ValuedEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/nn/NNFW;",
        ">;",
        "Lcom/samsung/android/sume/ValuedEnum;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/nn/NNFW;

.field public static final enum blacklist EDEN:Lcom/samsung/android/sume/nn/NNFW;

.field public static final enum blacklist NONE:Lcom/samsung/android/sume/nn/NNFW;

.field public static final enum blacklist SNAP:Lcom/samsung/android/sume/nn/NNFW;

.field public static final enum blacklist SNPE:Lcom/samsung/android/sume/nn/NNFW;

.field public static final enum blacklist TFLITE:Lcom/samsung/android/sume/nn/NNFW;


# instance fields
.field private final blacklist value:I

.field private final blacklist vendor:[Lcom/samsung/android/sume/Vendor;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 12

    .line 15
    new-instance v0, Lcom/samsung/android/sume/nn/NNFW;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/samsung/android/sume/Vendor;

    sget-object v3, Lcom/samsung/android/sume/Vendor;->NONE:Lcom/samsung/android/sume/Vendor;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "NONE"

    invoke-direct {v0, v3, v4, v4, v2}, Lcom/samsung/android/sume/nn/NNFW;-><init>(Ljava/lang/String;II[Lcom/samsung/android/sume/Vendor;)V

    sput-object v0, Lcom/samsung/android/sume/nn/NNFW;->NONE:Lcom/samsung/android/sume/nn/NNFW;

    .line 16
    new-instance v2, Lcom/samsung/android/sume/nn/NNFW;

    new-array v3, v1, [Lcom/samsung/android/sume/Vendor;

    sget-object v5, Lcom/samsung/android/sume/Vendor;->QCOM:Lcom/samsung/android/sume/Vendor;

    aput-object v5, v3, v4

    const-string v5, "SNPE"

    invoke-direct {v2, v5, v1, v1, v3}, Lcom/samsung/android/sume/nn/NNFW;-><init>(Ljava/lang/String;II[Lcom/samsung/android/sume/Vendor;)V

    sput-object v2, Lcom/samsung/android/sume/nn/NNFW;->SNPE:Lcom/samsung/android/sume/nn/NNFW;

    .line 17
    new-instance v3, Lcom/samsung/android/sume/nn/NNFW;

    new-array v5, v1, [Lcom/samsung/android/sume/Vendor;

    sget-object v6, Lcom/samsung/android/sume/Vendor;->SLSI:Lcom/samsung/android/sume/Vendor;

    aput-object v6, v5, v4

    const-string v6, "EDEN"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v7, v5}, Lcom/samsung/android/sume/nn/NNFW;-><init>(Ljava/lang/String;II[Lcom/samsung/android/sume/Vendor;)V

    sput-object v3, Lcom/samsung/android/sume/nn/NNFW;->EDEN:Lcom/samsung/android/sume/nn/NNFW;

    .line 18
    new-instance v5, Lcom/samsung/android/sume/nn/NNFW;

    const/4 v6, 0x3

    new-array v8, v6, [Lcom/samsung/android/sume/Vendor;

    sget-object v9, Lcom/samsung/android/sume/Vendor;->SLSI:Lcom/samsung/android/sume/Vendor;

    aput-object v9, v8, v4

    sget-object v9, Lcom/samsung/android/sume/Vendor;->QCOM:Lcom/samsung/android/sume/Vendor;

    aput-object v9, v8, v1

    sget-object v9, Lcom/samsung/android/sume/Vendor;->MTEK:Lcom/samsung/android/sume/Vendor;

    aput-object v9, v8, v7

    const-string v9, "TFLITE"

    invoke-direct {v5, v9, v6, v6, v8}, Lcom/samsung/android/sume/nn/NNFW;-><init>(Ljava/lang/String;II[Lcom/samsung/android/sume/Vendor;)V

    sput-object v5, Lcom/samsung/android/sume/nn/NNFW;->TFLITE:Lcom/samsung/android/sume/nn/NNFW;

    .line 19
    new-instance v8, Lcom/samsung/android/sume/nn/NNFW;

    new-array v9, v6, [Lcom/samsung/android/sume/Vendor;

    sget-object v10, Lcom/samsung/android/sume/Vendor;->SLSI:Lcom/samsung/android/sume/Vendor;

    aput-object v10, v9, v4

    sget-object v10, Lcom/samsung/android/sume/Vendor;->QCOM:Lcom/samsung/android/sume/Vendor;

    aput-object v10, v9, v1

    sget-object v10, Lcom/samsung/android/sume/Vendor;->MTEK:Lcom/samsung/android/sume/Vendor;

    aput-object v10, v9, v7

    const-string v10, "SNAP"

    const/4 v11, 0x4

    invoke-direct {v8, v10, v11, v11, v9}, Lcom/samsung/android/sume/nn/NNFW;-><init>(Ljava/lang/String;II[Lcom/samsung/android/sume/Vendor;)V

    sput-object v8, Lcom/samsung/android/sume/nn/NNFW;->SNAP:Lcom/samsung/android/sume/nn/NNFW;

    .line 14
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/sume/nn/NNFW;

    aput-object v0, v9, v4

    aput-object v2, v9, v1

    aput-object v3, v9, v7

    aput-object v5, v9, v6

    aput-object v8, v9, v11

    sput-object v9, Lcom/samsung/android/sume/nn/NNFW;->$VALUES:[Lcom/samsung/android/sume/nn/NNFW;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II[Lcom/samsung/android/sume/Vendor;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "vendor"    # [Lcom/samsung/android/sume/Vendor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value",
            "vendor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/samsung/android/sume/Vendor;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/samsung/android/sume/nn/NNFW;->value:I

    .line 23
    iput-object p4, p0, Lcom/samsung/android/sume/nn/NNFW;->vendor:[Lcom/samsung/android/sume/Vendor;

    .line 24
    return-void
.end method

.method public static blacklist fromExt(Ljava/lang/String;)Lcom/samsung/android/sume/nn/NNFW;
    .locals 2
    .param p0, "ext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ext"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/samsung/android/sume/nn/NNFW$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/nn/NNFW$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/NNFW$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/nn/NNFW$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/NNFW$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/NNFW$$ExternalSyntheticLambda1;-><init>()V

    .line 50
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/NNFW$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/NNFW$$ExternalSyntheticLambda2;-><init>()V

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/nn/NNFW;

    .line 43
    return-object v0
.end method

.method static synthetic blacklist lambda$fromExt$0(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 1
    .param p0, "ext"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 49
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$fromExt$1()Lcom/samsung/android/sume/nn/NNFW;
    .locals 2

    .line 53
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "not support model file extension: $ext"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/nn/NNFW;
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

    .line 14
    const-class v0, Lcom/samsung/android/sume/nn/NNFW;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/nn/NNFW;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/nn/NNFW;
    .locals 1

    .line 14
    sget-object v0, Lcom/samsung/android/sume/nn/NNFW;->$VALUES:[Lcom/samsung/android/sume/nn/NNFW;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/nn/NNFW;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/nn/NNFW;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/samsung/android/sume/nn/NNFW;->value:I

    return v0
.end method

.method public blacklist supportVendor()[Lcom/samsung/android/sume/Vendor;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/samsung/android/sume/nn/NNFW;->vendor:[Lcom/samsung/android/sume/Vendor;

    return-object v0
.end method

.method public blacklist toJson()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sume/nn/NNFW;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sume/nn/NNFW;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
