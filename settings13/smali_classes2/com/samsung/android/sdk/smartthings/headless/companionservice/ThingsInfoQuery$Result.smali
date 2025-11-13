.class public final Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsInfoQuery$Result;
.super Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;
.source "ThingsInfoQuery.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/reflect/Type;


# instance fields
.field public deviceId:Ljava/lang/String;

.field public mnId:Ljava/lang/String;

.field public serverEnvironment:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsServerEnvironmentType;

.field public setupId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsInfoQuery$Result$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsInfoQuery$Result$1;-><init>()V

    .line 73
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsInfoQuery$Result;->TYPE:Ljava/lang/reflect/Type;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;-><init>()V

    const-string v0, ""

    .line 78
    iput-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsInfoQuery$Result;->deviceId:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsInfoQuery$Result;->mnId:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsInfoQuery$Result;->setupId:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsServerEnvironmentType;->UNKNOWN:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsServerEnvironmentType;

    iput-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsInfoQuery$Result;->serverEnvironment:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsServerEnvironmentType;

    return-void
.end method


# virtual methods
.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    .line 70
    invoke-super {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
