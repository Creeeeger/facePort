.class public final enum Lcom/samsung/android/sume/Vendor;
.super Ljava/lang/Enum;
.source "Vendor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/Vendor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/Vendor;

.field public static final enum blacklist MTEK:Lcom/samsung/android/sume/Vendor;

.field public static final enum blacklist NONE:Lcom/samsung/android/sume/Vendor;

.field public static final enum blacklist QCOM:Lcom/samsung/android/sume/Vendor;

.field public static final enum blacklist SLSI:Lcom/samsung/android/sume/Vendor;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 7
    new-instance v0, Lcom/samsung/android/sume/Vendor;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sume/Vendor;->NONE:Lcom/samsung/android/sume/Vendor;

    .line 8
    new-instance v1, Lcom/samsung/android/sume/Vendor;

    const-string v3, "QCOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sume/Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sume/Vendor;->QCOM:Lcom/samsung/android/sume/Vendor;

    .line 9
    new-instance v3, Lcom/samsung/android/sume/Vendor;

    const-string v5, "SLSI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sume/Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sume/Vendor;->SLSI:Lcom/samsung/android/sume/Vendor;

    .line 10
    new-instance v5, Lcom/samsung/android/sume/Vendor;

    const-string v7, "MTEK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/sume/Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/sume/Vendor;->MTEK:Lcom/samsung/android/sume/Vendor;

    .line 6
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/sume/Vendor;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/sume/Vendor;->$VALUES:[Lcom/samsung/android/sume/Vendor;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist all()[Lcom/samsung/android/sume/Vendor;
    .locals 2

    .line 13
    invoke-static {}, Lcom/samsung/android/sume/Vendor;->values()[Lcom/samsung/android/sume/Vendor;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/Vendor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/Vendor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/Vendor$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/Vendor$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/Vendor;

    return-object v0
.end method

.method static synthetic blacklist lambda$all$0(Lcom/samsung/android/sume/Vendor;)Z
    .locals 1
    .param p0, "e"    # Lcom/samsung/android/sume/Vendor;

    .line 13
    sget-object v0, Lcom/samsung/android/sume/Vendor;->NONE:Lcom/samsung/android/sume/Vendor;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$all$1(I)[Lcom/samsung/android/sume/Vendor;
    .locals 1
    .param p0, "x$0"    # I

    .line 13
    new-array v0, p0, [Lcom/samsung/android/sume/Vendor;

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/Vendor;
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
    const-class v0, Lcom/samsung/android/sume/Vendor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/Vendor;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/Vendor;
    .locals 1

    .line 6
    sget-object v0, Lcom/samsung/android/sume/Vendor;->$VALUES:[Lcom/samsung/android/sume/Vendor;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/Vendor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/Vendor;

    return-object v0
.end method
