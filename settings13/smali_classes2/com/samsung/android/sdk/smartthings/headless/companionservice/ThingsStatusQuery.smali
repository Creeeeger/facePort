.class public Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery;
.super Lcom/samsung/android/sdk/smartthings/headless/companionservice/Query;
.source "ThingsStatusQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery$Builder;,
        Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/smartthings/headless/companionservice/Query<",
        "Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$CgaG7b31WFgqwbRhpTCIqjs-EME()Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery;-><init>()V

    return-object v0
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Query;-><init>()V

    return-void
.end method

.method public static builder()Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery$Builder;
    .locals 3

    .line 47
    new-instance v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery$Builder;

    new-instance v1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery$Builder;-><init>(Ljava/util/concurrent/Callable;Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery$1;)V

    return-object v0
.end method


# virtual methods
.method getResponseType()Ljava/lang/reflect/Type;
    .locals 0

    .line 59
    sget-object p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery$Result;->TYPE:Ljava/lang/reflect/Type;

    return-object p0
.end method

.method isAsync()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method what()I
    .locals 0

    const p0, 0x186a2

    return p0
.end method
