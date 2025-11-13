.class public Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService;
.super Landroid/app/Service;
.source "SecVolumeHomeHubService.java"


# static fields
.field private static mService:Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService;


# instance fields
.field protected mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;


# direct methods
.method public static synthetic $r8$lambda$3vSOj94Pr5iHywcAfa_1IPaVFok(Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Result;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService;->lambda$updateMuteCapability$4(Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$49QnJ0nUG1DCPguWxdv46kPHa_Q(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService;->lambda$updateMuteCapability$5(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CCOHUDLvJzYo-L7nja8UlBFpY3E(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService;->lambda$updateVolumeCapability$3(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WoWA-DIEYRC3McOrQOBvMwnXDbI(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService;->lambda$onStartCommand$1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nBrr14rIXPaDOZmvueP8rDtATU0(Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Result;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService;->lambda$updateVolumeCapability$2(Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ypP8PrrR6wNdljeLbFtDQRFvpLM(Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService;Landroid/content/Intent;Landroid/content/Context;Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery$Result;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService;->lambda$onStartCommand$0(Landroid/content/Intent;Landroid/content/Context;Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery$Result;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private synthetic lambda$onStartCommand$0(Landroid/content/Intent;Landroid/content/Context;Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    iget-object v0, p3, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery$Result;->thingsStatus:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;

    sget-object v1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;->CONNECTED:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;

    if-ne v0, v1, :cond_2

    const-string p3, "type"

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    const-string p3, "mute"

    .line 44
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    move v0, p3

    .line 45
    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService;->updateMuteCapability(Landroid/content/Context;Z)V

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService;->updateVolumeCapability(Landroid/content/Context;)V

    goto :goto_0

    .line 50
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "smartthings connection status: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery$Result;->thingsStatus:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecVolumeHomeHubService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$onStartCommand$1(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p0, "SecVolumeHomeHubService"

    const-string v0, "smartthings checking fail"

    .line 53
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$updateMuteCapability$4(Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SecVolumeHomeHubService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$updateMuteCapability$5(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecVolumeHomeHubService"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static synthetic lambda$updateVolumeCapability$2(Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SecVolumeHomeHubService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$updateVolumeCapability$3(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecVolumeHomeHubService"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method getMuteAttribute(Z)Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;
    .locals 1

    if-eqz p1, :cond_0

    const-string p0, "muted"

    goto :goto_0

    :cond_0
    const-string p0, "unmuted"

    .line 106
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateMuteCapability "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecVolumeHomeHubService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance p1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;-><init>()V

    const-string v0, "main"

    .line 109
    iput-object v0, p1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->componentId:Ljava/lang/String;

    const-string v0, "audioMute"

    .line 110
    iput-object v0, p1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->capability:Ljava/lang/String;

    const-string v0, "mute"

    .line 111
    iput-object v0, p1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->attribute:Ljava/lang/String;

    .line 112
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p0

    iput-object p0, p1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->value:Lcom/google/gson/JsonElement;

    .line 113
    sget-object p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;->STRING:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    iput-object p0, p1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->valueType:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    return-object p1
.end method

.method getVolumeAttribute()Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;
    .locals 2

    .line 92
    iget-object p0, p0, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/AudioHelper;->getStreamVolume(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x64

    div-int/lit8 p0, p0, 0xf

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVolumeCapability audioVolume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecVolumeHomeHubService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;-><init>()V

    const-string v1, "main"

    .line 96
    iput-object v1, v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->componentId:Ljava/lang/String;

    const-string v1, "audioVolume"

    .line 97
    iput-object v1, v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->capability:Ljava/lang/String;

    const-string v1, "volume"

    .line 98
    iput-object v1, v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->attribute:Ljava/lang/String;

    .line 99
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->value:Lcom/google/gson/JsonElement;

    .line 100
    sget-object p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;->INTEGER:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    iput-object p0, v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->valueType:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 0

    .line 30
    sput-object p0, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService;->mService:Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string p0, "SecVolumeHomeHubService"

    const-string v0, "onDestroy()"

    .line 119
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 120
    sput-object p0, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService;->mService:Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 35
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 36
    new-instance p3, Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    invoke-direct {p3, p2}, Lcom/samsung/android/settings/as/utils/SecAudioHelper;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    .line 37
    invoke-static {}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery;->builder()Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery$Builder;

    move-result-object p3

    .line 38
    invoke-virtual {p3}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery$Builder;->build()Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery;

    move-result-object p3

    .line 39
    invoke-static {p2, p3}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsInternalService;->acquire(Landroid/content/Context;Lcom/samsung/android/sdk/smartthings/headless/companionservice/Query;)Lio/reactivex/Single;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService;Landroid/content/Intent;Landroid/content/Context;)V

    new-instance p0, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService$$ExternalSyntheticLambda1;-><init>()V

    .line 40
    invoke-virtual {p3, v0, p0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    const/4 p0, 0x3

    return p0
.end method

.method updateMuteCapability(Landroid/content/Context;Z)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService;->getVolumeAttribute()Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 79
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService;->getMuteAttribute(Z)Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;

    move-result-object p0

    const/4 p2, 0x1

    aput-object p0, v0, p2

    .line 80
    invoke-static {}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate;->builder()Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;

    move-result-object p0

    .line 81
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;->setAttributes([Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;)Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;

    move-result-object p0

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;->build()Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate;

    move-result-object p0

    .line 83
    invoke-static {p1, p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsInternalService;->acquire(Landroid/content/Context;Lcom/samsung/android/sdk/smartthings/headless/companionservice/Update;)Lio/reactivex/Single;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService$$ExternalSyntheticLambda2;-><init>()V

    new-instance p2, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService$$ExternalSyntheticLambda3;-><init>()V

    .line 84
    invoke-virtual {p0, p1, p2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method updateVolumeCapability(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService;->getVolumeAttribute()Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 65
    invoke-static {}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate;->builder()Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;

    move-result-object p0

    .line 66
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;->setAttributes([Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;)Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;

    move-result-object p0

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;->build()Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate;

    move-result-object p0

    .line 68
    invoke-static {p1, p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsInternalService;->acquire(Landroid/content/Context;Lcom/samsung/android/sdk/smartthings/headless/companionservice/Update;)Lio/reactivex/Single;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService$$ExternalSyntheticLambda4;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/samsung/android/settings/as/homehub/SecVolumeHomeHubService$$ExternalSyntheticLambda5;-><init>()V

    .line 69
    invoke-virtual {p0, p1, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
