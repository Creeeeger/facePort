.class public abstract Lcom/android/systemui/bixby2/controller/volume/VolumeType;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x0

.field public static final Companion:Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;

.field public static final TAG:Ljava/lang/String; = "VolumeController"

.field private static audioManagerWrapper:Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

.field private static context:Landroid/content/Context;

.field private static editor:Landroid/content/SharedPreferences$Editor;

.field private static notificationManager:Landroid/app/NotificationManager;

.field private static preferences:Landroid/content/SharedPreferences;


# instance fields
.field private final status:I

.field private final statusCode:Ljava/lang/String;

.field private final streamTypeToString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->Companion:Lcom/android/systemui/bixby2/controller/volume/VolumeType$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->status:I

    const-string/jumbo v0, "success"

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->statusCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->streamTypeToString:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getPreferences$cp()Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static final synthetic access$setAudioManagerWrapper$cp(Lcom/android/systemui/bixby2/util/AudioManagerWrapper;)V
    .locals 0

    sput-object p0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->audioManagerWrapper:Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    return-void
.end method

.method public static final synthetic access$setContext$cp(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$setEditor$cp(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    sput-object p0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static final synthetic access$setNotificationManager$cp(Landroid/app/NotificationManager;)V
    .locals 0

    sput-object p0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->notificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public static final synthetic access$setPreferences$cp(Landroid/content/SharedPreferences;)V
    .locals 0

    sput-object p0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private final getAlreadySetResponse(I)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getMaxVolume()I

    move-result v0

    const/4 v1, 0x2

    if-ne p1, v0, :cond_0

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string p1, "VolumeAlreadyMaximum"

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getMinVolume()I

    move-result p0

    if-ne p1, p0, :cond_1

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string p1, "VolumeAlreadyMinimum"

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string p1, "already_set"

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method private final getMuteResponse()Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->isStreamMute()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const/4 v0, 0x2

    const-string v1, "VolumeAlreadyMute"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->setVolume(IIZ)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic getStreamTypeToString$annotations()V
    .locals 0

    return-void
.end method

.method private final getUnMuteResponse()Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->isStreamMute()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const/4 v0, 0x2

    const-string v1, "VolumeAlreadyUnMute"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->loadVolume()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->setVolume(IIZ)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private final isAllSoundOff()Z
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "all_sound_off"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move p0, v1

    :catch_0
    :cond_1
    return p0
.end method

.method private final loadVolume()I
    .locals 3

    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStreamTypeToString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStreamTypeToString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getMaxVolume()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->saveVolume(I)V

    return v0
.end method

.method private final saveVolume(I)V
    .locals 1

    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStreamTypeToString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private final volumeStreamAllowedByDnd()Z
    .locals 3

    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->notificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->volumeStreamAllowedByDnd(Landroid/app/NotificationManager$Policy;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method


# virtual methods
.method public getMaxVolume()I
    .locals 1

    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->audioManagerWrapper:Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStreamType()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method public getMinVolume()I
    .locals 1

    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->audioManagerWrapper:Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStreamType()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->getStreamMinVolume(I)I

    move-result p0

    return p0
.end method

.method public getRingerMode()I
    .locals 0

    sget-object p0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->audioManagerWrapper:Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->getRingerMode()I

    move-result p0

    return p0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->status:I

    return p0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->statusCode:Ljava/lang/String;

    return-object p0
.end method

.method public getStreamType()I
    .locals 0

    invoke-static {}, Landroid/media/AudioManager;->semGetActiveStreamType()I

    move-result p0

    return p0
.end method

.method public getStreamTypeToString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->streamTypeToString:Ljava/lang/String;

    return-object p0
.end method

.method public getVolume()I
    .locals 1

    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->audioManagerWrapper:Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStreamType()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->getStreamVolume(I)I

    move-result p0

    return p0
.end method

.method public isStreamDisabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isStreamMute()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getVolume()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getMinVolume()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVoiceCapable()Z
    .locals 0

    sget-object p0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->audioManagerWrapper:Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->shouldShowRingtoneVolume()Z

    move-result p0

    return p0
.end method

.method public final isVolumeStateValid(Z)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->isAllSoundOff()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string p1, "AllSoundMuteOn"

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->volumeStreamAllowedByDnd()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string p1, "DoNotDisturbModeOn"

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->isStreamDisabled()Z

    move-result p0

    if-eqz p0, :cond_2

    if-nez p1, :cond_2

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string p1, "SilentModeOn"

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const/4 p1, 0x1

    const-string/jumbo v0, "success"

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public setMute(Z)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getMuteResponse()Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getUnMuteResponse()Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public setStreamVolume(II)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getVolume()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->saveVolume(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStreamType()I

    sget-object v0, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->audioManagerWrapper:Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStreamType()I

    move-result p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->setStreamVolume(III)V

    return-void
.end method

.method public final setVolume(IIZ)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    const/4 p2, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getStatusCode()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->isVolumeStateValid(Z)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p3

    iget v0, p3, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getVolume()I

    move-result v0

    if-ne v0, p1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getAlreadySetResponse(I)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->setStreamVolume(II)V

    :cond_2
    return-object p3
.end method

.method public volumeStreamAllowedByDnd(Landroid/app/NotificationManager$Policy;)Z
    .locals 0

    iget p0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
