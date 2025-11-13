.class public Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate;
.super Lcom/samsung/android/sdk/smartthings/headless/companionservice/Update;
.source "ThingsCapabilityAttributeUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;,
        Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/smartthings/headless/companionservice/Update<",
        "Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$d6XeuX_oQ3wsEJGSQnwLzpx4vzA()Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate;-><init>()V

    return-object v0
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Update;-><init>()V

    return-void
.end method

.method public static builder()Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;
    .locals 3

    .line 50
    new-instance v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;

    new-instance v1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;-><init>(Ljava/util/concurrent/Callable;Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$1;)V

    return-object v0
.end method


# virtual methods
.method getResponseType()Ljava/lang/reflect/Type;
    .locals 0

    .line 62
    sget-object p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Result;->TYPE:Ljava/lang/reflect/Type;

    return-object p0
.end method

.method isAsync()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method what()I
    .locals 0

    const p0, 0x186a3

    return p0
.end method
