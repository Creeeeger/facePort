.class public Lcom/samsung/android/media/SemSoundAssistantManager;
.super Ljava/lang/Object;
.source "SemSoundAssistantManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;,
        Lcom/samsung/android/media/SemSoundAssistantManager$FastTrackPlayerRunnable;,
        Lcom/samsung/android/media/SemSoundAssistantManager$MicInputControlMode;,
        Lcom/samsung/android/media/SemSoundAssistantManager$EventType;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_SOUND_EVENT_CHANGED:Ljava/lang/String; = "com.samsung.android.intent.action.SOUND_EVENT"

.field public static final blacklist ADJUST_MEDIA_ONLY:Ljava/lang/String; = "adjust_media_volume_only"

.field public static final blacklist BOOT_COMPLETED:I = 0x3eb

.field public static final blacklist BRAND_SOUND_VERSION:Ljava/lang/String; = "brand_sound_version"

.field public static final blacklist CARLIFE_FOCUS_GRANT_INDEX:I = 0x1

.field public static final blacklist CARLIFE_FOCUS_LOSS_INDEX:I = 0x2

.field private static final blacklist DEFAULT_MEDIA_SESSION_CALLBACK_FGS_ALLOWLIST_DURATION_MS:J = 0x2710L

.field public static final whitelist DEVICE_BLUETOOTH:I = 0x2

.field public static final whitelist DEVICE_DEFAULT:I = 0x0

.field public static final whitelist DEVICE_HEADSET:I = 0x3

.field public static final whitelist DEVICE_SPEAKER_OR_HEADSET:I = 0x1

.field public static final blacklist ENABLE_FLOATING_BUTTON:Ljava/lang/String; = "enable_floating_button"

.field public static final blacklist EXECUTE_FLOATING_BUTTON:I = 0x0

.field public static final blacklist GET_APP_VOLUME_LIST:Ljava/lang/String; = "get_app_volume_list"

.field public static final blacklist GET_MODE_OWNER_UIDS:Ljava/lang/String; = "get_mode_owner_uids"

.field public static final blacklist HEADSET_ONLY_ALARM:I = 0x10

.field public static final blacklist HEADSET_ONLY_ALL:I = 0x4

.field public static final blacklist HEADSET_ONLY_NOTIFICATION:I = 0x20

.field public static final blacklist HEADSET_ONLY_RINGTONE:I = 0x1

.field public static final blacklist IGNORE_AUDIO_FOCUS:Ljava/lang/String; = "ignore_audio_focus"

.field public static final blacklist MEDIA_BUTTON_PACKAGE:Ljava/lang/String; = "media_button_package"

.field public static final blacklist MEDIA_VOLUME_MULTI_STEP:Ljava/lang/String; = "sec_volume_steps"

.field public static final blacklist MEDIA_VOLUME_STEP_DEFAULT:I = 0xa

.field public static final blacklist MEDIA_VOLUME_STEP_INDEX:Ljava/lang/String; = "media_volume_step_index"

.field public static final blacklist MEDIA_VOLUME_STEP_MAX:I = 0xa

.field public static final blacklist MEDIA_VOLUME_STEP_MIN:I = 0x1

.field public static final whitelist MIC_INPUT_CONTROL_MODE_FOCUS_ON_ALL_SOUNDS:I = 0x2

.field public static final blacklist MIC_INPUT_CONTROL_MODE_FOCUS_ON_ALL_SOUNDS_FOR_VIDEO_CALL_ON_2MIC:I = 0x7

.field public static final blacklist MIC_INPUT_CONTROL_MODE_FOCUS_ON_ALL_SOUNDS_FOR_VOICE_CALL_ON_2MIC:I = 0x4

.field public static final whitelist MIC_INPUT_CONTROL_MODE_FOCUS_ON_VOICE:I = 0x1

.field public static final blacklist MIC_INPUT_CONTROL_MODE_FOCUS_ON_VOICE_FOR_VIDEO_CALL_ON_2MIC:I = 0x6

.field public static final blacklist MIC_INPUT_CONTROL_MODE_FOCUS_ON_VOICE_FOR_VOICE_CALL_ON_2MIC:I = 0x3

.field public static final whitelist MIC_INPUT_CONTROL_MODE_STANDARD:I = 0x0

.field public static final blacklist MIC_INPUT_CONTROL_MODE_STANDARD_FOR_VIDEO_CALL_ON_2MIC:I = 0x5

.field public static final whitelist MODE_ADJUST_MEDIA_VOLUME_ONLY:I = 0x1

.field public static final whitelist MODE_DEFAULT:I = 0x0

.field public static final whitelist MODE_MUTE_MEDIA_BY_VIBRATE_OR_SILENT_MODE:I = 0x2

.field public static final blacklist MONO_SOUND:Ljava/lang/String; = "mono_sound"

.field public static final blacklist MULTI_AUDIO_FOCUS:Ljava/lang/String; = "multi_audio_focus"

.field public static final blacklist MUTE_MEDIA_BY_VIBRATE_OR_SILENT_MODE:Ljava/lang/String; = "mute_media_by_vibrate_or_silent_mode"

.field public static final blacklist NO_FADEOUT_FROM_AUDIOFOCUS:Ljava/lang/String; = "NO_FADEOUT_FROM_AUDIOFOCUS"

.field public static final blacklist NO_MUTE_IN_CALL:Ljava/lang/String; = "NO_MUTE_IN_CALL"

.field public static final blacklist PARAMETER_PREFIX:Ljava/lang/String; = "sound_assistant"

.field public static final blacklist REMOVE_APP_VOLUME:Ljava/lang/String; = "remove_app_volume"

.field public static final blacklist SETTING_RINGTONE_THROUGH_HEADSET_ONLY:Ljava/lang/String; = "ring_through_headset"

.field public static final blacklist SETTING_SOUND_LR_SWITCH:Ljava/lang/String; = "sound_lr_switch"

.field public static final whitelist SOUNDSETTING_EVENT_A2DP_CONNECTION_CHANGED:I = 0x8

.field public static final blacklist SOUNDSETTING_EVENT_CARLIFE_RECEIVER:I = 0x200

.field public static final whitelist SOUNDSETTING_EVENT_HEADSET_CONNECTION_CHANGED:I = 0x4

.field public static final whitelist SOUNDSETTING_EVENT_MEDIA_KEY_RECEIVER:I = 0x40

.field public static final whitelist SOUNDSETTING_EVENT_MEDIA_MUTE_CHANGED:I = 0x2

.field public static final blacklist SOUNDSETTING_EVENT_MEDIA_VOLUME_CHANGED:I = 0x100

.field public static final whitelist SOUNDSETTING_EVENT_NONE:I = 0x0

.field public static final whitelist SOUNDSETTING_EVENT_PLAYBACK_STATE_CHANGED:I = 0x10

.field public static final blacklist SOUNDSETTING_EVENT_RECORDING_STARTED_RECEIVER:I = 0x80

.field public static final whitelist SOUNDSETTING_EVENT_RINGERMODE_CHANGED:I = 0x1

.field public static final whitelist SOUNDSETTING_EVENT_VOLUMEKEY_LONGPRESS:I = 0x20

.field public static final whitelist SOUNDSETTING_EXTRA_EVENT_CALLING_PACKAGE:Ljava/lang/String; = "package"

.field public static final whitelist SOUNDSETTING_EXTRA_EVENT_TYPE:Ljava/lang/String; = "type"

.field public static final whitelist SOUNDSETTING_EXTRA_EVENT_VALUE:Ljava/lang/String; = "value"

.field public static final blacklist SOUND_BALANCE:Ljava/lang/String; = "sound_balance"

.field private static final blacklist TAG:Ljava/lang/String; = "SemSoundAssistant"

.field public static final blacklist UID_FOR_SOUNDASSISTANT:Ljava/lang/String; = "uid_for_soundassistant"

.field public static final blacklist USING_AUDIO_UIDS:Ljava/lang/String; = "using_audio_uids"

.field public static final blacklist VERSION:Ljava/lang/String; = "version"

.field protected static final blacklist VOLUME_MODE_ALL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final blacklist VOLUME_MODE_KEY:[Ljava/lang/String;

.field public static final blacklist VOLUME_MODE_PREDICATE:Ljava/util/function/IntPredicate;

.field public static final blacklist VOLUME_STAR_DISABLE:I = 0x65

.field public static final blacklist VOLUME_STAR_ENABLE:I = 0x64

.field public static final blacklist VOLUME_STAR_ENABLE_PARAM:Ljava/lang/String; = "volumestar_enable"

.field private static final blacklist mLock:Ljava/lang/Object;

.field private static blacklist sIsRunning:Z

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static final blacklist sMediaKeySessionChangedCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sMediaKeySessionChangedListener:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

.field static final blacklist sMicModeParamTable:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sService:Landroid/media/IAudioService;


# instance fields
.field private blacklist mApplicationContext:Landroid/content/Context;

.field private blacklist mAudioManager:Landroid/media/AudioManager;

.field private blacklist mFloatingButton:Z

.field private blacklist mOriginalContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfputsIsRunning(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/android/media/SemSoundAssistantManager;->sIsRunning:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsleep(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/media/SemSoundAssistantManager;->sleep(J)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 7

    .line 302
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->VOLUME_MODE_ALL:Ljava/util/Set;

    .line 304
    const-string v2, ""

    const-string v5, "adjust_media_volume_only"

    const-string v6, "mute_media_by_vibrate_or_silent_mode"

    filled-new-array {v2, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/media/SemSoundAssistantManager;->VOLUME_MODE_KEY:[Ljava/lang/String;

    .line 306
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/media/SemSoundAssistantManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/samsung/android/media/SemSoundAssistantManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    sput-object v2, Lcom/samsung/android/media/SemSoundAssistantManager;->VOLUME_MODE_PREDICATE:Ljava/util/function/IntPredicate;

    .line 1330
    sput-boolean v4, Lcom/samsung/android/media/SemSoundAssistantManager;->sIsRunning:Z

    .line 1331
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->sLock:Ljava/lang/Object;

    .line 1393
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->mLock:Ljava/lang/Object;

    .line 1396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->sMediaKeySessionChangedCallbacks:Ljava/util/List;

    .line 1398
    new-instance v0, Lcom/samsung/android/media/SemSoundAssistantManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/samsung/android/media/SemSoundAssistantManager$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->sMediaKeySessionChangedListener:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

    .line 1487
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->sMicModeParamTable:Landroid/util/ArrayMap;

    .line 1489
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "l_mic_input_control_mode=0"

    invoke-virtual {v0, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    const-string v2, "l_mic_input_control_mode=1"

    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    const-string v2, "l_mic_input_control_mode=2"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "l_call_nc_booster_enable=1"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "l_call_nc_booster_enable=2"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "l_mic_input_control_mode_2mic=0"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "l_mic_input_control_mode_2mic=1"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "l_mic_input_control_mode_2mic=2"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemSoundAssistantManager;->setContext(Landroid/content/Context;)V

    .line 400
    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    .line 401
    return-void
.end method

.method private blacklist getContext()Landroid/content/Context;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mOriginalContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setContext(Landroid/content/Context;)V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 417
    return-object v0

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mOriginalContext:Landroid/content/Context;

    return-object v0
.end method

.method private blacklist getIntegerArrayFromString(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "strUids"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 570
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 571
    return-object v1

    .line 574
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v0, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ";"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    .local v2, "token":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 577
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 578
    .local v3, "strUid":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 579
    goto :goto_0

    .line 583
    :cond_1
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    goto :goto_1

    .line 584
    :catch_0
    move-exception v4

    .line 586
    .end local v3    # "strUid":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 587
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 588
    return-object v1

    .line 590
    :cond_3
    return-object v0
.end method

.method private static blacklist getService()Landroid/media/IAudioService;
    .locals 2

    .line 423
    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->sService:Landroid/media/IAudioService;

    if-eqz v0, :cond_0

    .line 424
    return-object v0

    .line 426
    :cond_0
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 427
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sService:Landroid/media/IAudioService;

    .line 428
    return-object v1
.end method

.method private blacklist getSoundAssistantParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sound_assistant;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1274
    .local v0, "newParam":Ljava/lang/String;
    invoke-static {v0}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist isSeparateStreamForHeadsetOnly()Z
    .locals 5

    .line 1288
    const/4 v0, 0x0

    .line 1290
    .local v0, "separateStream":Z
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mApplicationContext:Landroid/content/Context;

    .line 1291
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    .line 1290
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1292
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 1293
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "separate_stream"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    .line 1295
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    nop

    .line 1297
    return v0
.end method

.method static synthetic blacklist lambda$static$0(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "sessionToken"    # Landroid/media/session/MediaSession$Token;

    .line 1399
    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1400
    :try_start_0
    sget-object v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sMediaKeySessionChangedCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;

    .line 1401
    .local v2, "callback":Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;
    invoke-interface {v2, p0, p1}, Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;->onMediaKeyEventSessionChanged(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V

    .line 1402
    .end local v2    # "callback":Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;
    goto :goto_0

    .line 1403
    :cond_0
    monitor-exit v0

    .line 1404
    return-void

    .line 1403
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 404
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mApplicationContext:Landroid/content/Context;

    .line 405
    if-eqz v0, :cond_0

    .line 406
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mOriginalContext:Landroid/content/Context;

    goto :goto_0

    .line 408
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mOriginalContext:Landroid/content/Context;

    .line 410
    :goto_0
    return-void
.end method

.method private blacklist setSoundAssistantParam(Ljava/lang/String;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    .line 1278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sound_assistant=1;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1279
    .local v0, "newParam":Ljava/lang/String;
    invoke-static {v0}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 1280
    return-void
.end method

.method private static blacklist sleep(J)V
    .locals 1
    .param p0, "millis"    # J

    .line 1389
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1390
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist activateFloatingButton(Z)V
    .locals 0
    .param p1, "on"    # Z

    .line 478
    iput-boolean p1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mFloatingButton:Z

    .line 479
    return-void
.end method

.method public whitelist addOnMediaKeyEventSessionChangedListener(Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;

    .line 1435
    const-string v0, "listener shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1436
    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1437
    :try_start_0
    sget-object v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sMediaKeySessionChangedCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1438
    const-string v1, "SemSoundAssistant"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already added : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    monitor-exit v0

    return-void

    .line 1442
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 1445
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v3, v2

    .local v3, "looper":Landroid/os/Looper;
    if-nez v2, :cond_1

    .line 1446
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v3, v2

    .line 1448
    :cond_1
    if-eqz v3, :cond_2

    .line 1449
    new-instance v2, Landroid/os/HandlerExecutor;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, v4}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .local v2, "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 1451
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    :cond_2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 1454
    .restart local v2    # "executor":Ljava/util/concurrent/Executor;
    :goto_0
    nop

    .line 1455
    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "media_session"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/session/MediaSessionManager;

    .line 1456
    .local v4, "manager":Landroid/media/session/MediaSessionManager;
    sget-object v5, Lcom/samsung/android/media/SemSoundAssistantManager;->sMediaKeySessionChangedListener:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

    invoke-virtual {v4, v2, v5}, Landroid/media/session/MediaSessionManager;->addOnMediaKeyEventSessionChangedListener(Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;)V

    .line 1459
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "looper":Landroid/os/Looper;
    .end local v4    # "manager":Landroid/media/session/MediaSessionManager;
    :cond_3
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1460
    monitor-exit v0

    .line 1461
    return-void

    .line 1460
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist addToMultiSoundSupportedList(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 886
    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 889
    .local v0, "service":Landroid/media/IAudioService;
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1, p1}, Landroid/media/IAudioService;->addPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    goto :goto_0

    .line 890
    :catch_0
    move-exception v1

    .line 891
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SemSoundAssistant"

    const-string v3, "Error calling addPackage"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 893
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist adjustSoundBalance(I)V
    .locals 2
    .param p1, "balance"    # I

    .line 451
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sound_balance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantParam(Ljava/lang/String;)V

    .line 456
    return-void

    .line 452
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad ratio value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist enableSelfieStickMode()Z
    .locals 1

    .line 742
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist forceMonoSound(Z)V
    .locals 2
    .param p1, "on"    # Z

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mono_sound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantParam(Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method public whitelist getApplicationUidListUsingAudio()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 641
    const-string/jumbo v0, "using_audio_uids"

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getIntegerArrayFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getApplicationVolume(I)I
    .locals 1
    .param p1, "uid"    # I

    .line 666
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getAppVolume(I)I

    move-result v0

    return v0
.end method

.method public whitelist getAudioFrameworkVersion()I
    .locals 3

    .line 763
    const-string/jumbo v0, "version"

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .line 766
    .local v1, "version":I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 768
    goto :goto_0

    .line 767
    :catch_0
    move-exception v2

    .line 769
    :goto_0
    return v1
.end method

.method public whitelist getDeviceForStream(I)I
    .locals 7
    .param p1, "stream"    # I

    .line 1236
    const/4 v0, 0x5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    .line 1239
    const-string v2, "SemSoundAssistant"

    const-string v3, "Invalid parameter"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_0
    const-string/jumbo v2, "ring_through_headset"

    invoke-direct {p0, v2}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1243
    .local v2, "result":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1245
    .local v3, "prevStreams":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_0

    .line 1246
    :catch_0
    move-exception v4

    :goto_0
    nop

    .line 1248
    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isSeparateStreamForHeadsetOnly()Z

    move-result v4

    .line 1249
    .local v4, "separateStream":Z
    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    .line 1250
    if-ne p1, v1, :cond_1

    .line 1251
    const/4 p1, 0x1

    goto :goto_1

    .line 1252
    :cond_1
    if-ne p1, v0, :cond_2

    .line 1253
    const/16 p1, 0x20

    goto :goto_1

    .line 1255
    :cond_2
    const/16 p1, 0x10

    .line 1258
    :goto_1
    and-int v0, v3, p1

    if-eqz v0, :cond_3

    .line 1259
    return v5

    .line 1261
    :cond_3
    return v6

    .line 1264
    :cond_4
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_5

    .line 1265
    return v5

    .line 1267
    :cond_5
    return v6
.end method

.method public whitelist getMediaVolumeInterval()I
    .locals 3

    .line 1073
    const-string v0, "media_volume_step_index"

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1074
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1076
    .local v1, "index":I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 1078
    goto :goto_0

    .line 1077
    :catch_0
    move-exception v2

    .line 1079
    :goto_0
    return v1
.end method

.method public whitelist getMediaVolumeSteps()[I
    .locals 2

    .line 1115
    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1118
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getMediaVolumeSteps()[I

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1119
    :catch_0
    move-exception v1

    .line 1120
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1122
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getMultiSoundDevice()I
    .locals 1

    .line 874
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v0

    return v0
.end method

.method public whitelist getMultiSoundDeviceVolume(I)I
    .locals 2
    .param p1, "streamType"    # I

    .line 959
    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 960
    const-string v0, "SemSoundAssistant"

    const-string v1, "Multisound is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const/4 v0, -0x1

    return v0

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->getFineVolume(II)I

    move-result v0

    return v0
.end method

.method public whitelist getRecommandedPackagesForSoundAssistant()[Ljava/lang/String;
    .locals 4

    .line 560
    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 562
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getSelectedAppList()[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 563
    :catch_0
    move-exception v1

    .line 564
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRecommendedPackagesForSoundAssistant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemSoundAssistant"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sound_assistant;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, "newParam":Ljava/lang/String;
    invoke-static {v0}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getUidIgnoredAudioFocus()I
    .locals 3

    .line 543
    const-string v0, "ignore_audio_focus"

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 546
    .local v1, "uid":I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 548
    goto :goto_0

    .line 547
    :catch_0
    move-exception v2

    .line 549
    :goto_0
    return v1
.end method

.method public whitelist getVolumeKeyMode()I
    .locals 3

    .line 623
    const-string v0, "adjust_media_volume_only"

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .line 626
    .local v1, "mode":I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 628
    goto :goto_0

    .line 627
    :catch_0
    move-exception v2

    .line 629
    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public whitelist getVolumeMode(I)Z
    .locals 4
    .param p1, "mode"    # I

    .line 719
    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->VOLUME_MODE_PREDICATE:Ljava/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 720
    const-string v0, "SemSoundAssistant"

    const-string v2, "Invalid mode."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    return v1

    .line 724
    :cond_0
    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->VOLUME_MODE_KEY:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 725
    .local v0, "ret":Ljava/lang/String;
    const/4 v2, 0x0

    .line 727
    .local v2, "res":I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 729
    goto :goto_0

    .line 728
    :catch_0
    move-exception v3

    .line 731
    :goto_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move v1, v3

    :cond_1
    return v1
.end method

.method public whitelist ignoreAudioFocusForApp(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "on"    # Z

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore_audio_focus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "uid_for_soundassistant"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantParam(Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method public whitelist initApplicationVolume(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove_app_volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "param":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantProperty(Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public whitelist isApplicationMute(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 690
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isAppMute(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isFloatingButtonActivated()Z
    .locals 1

    .line 487
    iget-boolean v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mFloatingButton:Z

    return v0
.end method

.method public whitelist isMultiSoundOn()Z
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMultiSoundOn()Z

    move-result v0

    return v0
.end method

.method public whitelist isMultiSoundSupportedPackage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 920
    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 923
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isAlreadyInDB(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 924
    :catch_0
    move-exception v1

    .line 925
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SemSoundAssistant"

    const-string v3, "Error calling isAlreadyInDB"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 926
    const/4 v2, 0x0

    return v2
.end method

.method public whitelist isPredefinedMultiSoundSupportedPackage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 940
    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 943
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isInAllowedList(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 944
    :catch_0
    move-exception v1

    .line 945
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SemSoundAssistant"

    const-string v3, "Error calling isInAllowedList"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 946
    const/4 v2, 0x0

    return v2
.end method

.method public whitelist isSelfieStickModeEnabled()Z
    .locals 1

    .line 753
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeFromMultiSoundSupportedList(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 904
    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 907
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->removePackageForName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 910
    goto :goto_0

    .line 908
    :catch_0
    move-exception v1

    .line 909
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SemSoundAssistant"

    const-string v3, "Error calling removePackageForName"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 911
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist removeOnMediaKeyEventSessionChangedListener(Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;

    .line 1471
    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1472
    :try_start_0
    sget-object v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sMediaKeySessionChangedCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1473
    const-string v1, "SemSoundAssistant"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid listener : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    monitor-exit v0

    return-void

    .line 1477
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1478
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1479
    nop

    .line 1480
    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "media_session"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager;

    .line 1481
    .local v1, "manager":Landroid/media/session/MediaSessionManager;
    sget-object v2, Lcom/samsung/android/media/SemSoundAssistantManager;->sMediaKeySessionChangedListener:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSessionManager;->removeOnMediaKeyEventSessionChangedListener(Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;)V

    .line 1483
    .end local v1    # "manager":Landroid/media/session/MediaSessionManager;
    :cond_1
    monitor-exit v0

    .line 1484
    return-void

    .line 1483
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist sendMediaKeyEvent(Ljava/lang/String;Landroid/view/KeyEvent;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 1575
    const-string/jumbo v0, "packageName shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1576
    const-string v0, "keyEvent shouldn\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1578
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1579
    .local v0, "mediaButtonIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1580
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1581
    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1582
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1584
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 1585
    .local v1, "options":Landroid/app/BroadcastOptions;
    const-wide/16 v4, 0x2710

    const/4 v6, 0x0

    const/16 v7, 0x139

    const-string v8, ""

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 1588
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    .line 1590
    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1591
    return-void
.end method

.method public whitelist setApplicationMute(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "shouldMute"    # Z

    .line 680
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->setAppMute(IZ)V

    .line 681
    return-void
.end method

.method public whitelist setApplicationVolume(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "ratio"    # I

    .line 656
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->setAppVolume(II)V

    .line 657
    return-void
.end method

.method public whitelist setDefaultSoundOutputDevice(I)Z
    .locals 16
    .param p1, "deviceCategory"    # I

    .line 992
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    .line 994
    return v4

    .line 996
    :cond_0
    iget-object v5, v0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    .line 997
    invoke-virtual {v5}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result v5

    .line 996
    invoke-static {v5}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v5

    .line 999
    .local v5, "curDevice":I
    iget-object v6, v0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v6

    .line 1001
    .local v6, "outDevicesInfo":[Landroid/media/AudioDeviceInfo;
    move v7, v5

    .line 1002
    .local v7, "forceDevice":I
    const-string v8, ""

    .line 1004
    .local v8, "forceAddr":Ljava/lang/String;
    if-ne v1, v3, :cond_6

    .line 1006
    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 1019
    .local v2, "priorityDeviceOrder":[I
    array-length v9, v2

    move v10, v4

    :goto_0
    if-ge v10, v9, :cond_5

    aget v11, v2, v10

    .line 1020
    .local v11, "order":I
    const/4 v12, 0x0

    .line 1021
    .local v12, "found":Z
    array-length v13, v6

    move v14, v4

    :goto_1
    if-ge v14, v13, :cond_3

    aget-object v15, v6, v14

    .line 1022
    .local v15, "connectedDevice":Landroid/media/AudioDeviceInfo;
    invoke-virtual {v15}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v3

    const/16 v4, 0x19

    if-ne v3, v4, :cond_1

    .line 1023
    invoke-virtual {v15}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1024
    goto :goto_2

    .line 1026
    :cond_1
    invoke-virtual {v15}, Landroid/media/AudioDeviceInfo;->getDeviceId()I

    move-result v3

    if-ne v3, v11, :cond_2

    .line 1027
    move v3, v11

    .line 1028
    .end local v7    # "forceDevice":I
    .local v3, "forceDevice":I
    invoke-virtual {v15}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1029
    .end local v8    # "forceAddr":Ljava/lang/String;
    .local v4, "forceAddr":Ljava/lang/String;
    const/4 v12, 0x1

    .line 1030
    move v7, v3

    move-object v8, v4

    goto :goto_3

    .line 1021
    .end local v3    # "forceDevice":I
    .end local v4    # "forceAddr":Ljava/lang/String;
    .end local v15    # "connectedDevice":Landroid/media/AudioDeviceInfo;
    .restart local v7    # "forceDevice":I
    .restart local v8    # "forceAddr":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_1

    .line 1033
    :cond_3
    :goto_3
    if-eqz v12, :cond_4

    goto :goto_4

    .line 1019
    .end local v11    # "order":I
    .end local v12    # "found":Z
    :cond_4
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_0

    .line 1035
    .end local v2    # "priorityDeviceOrder":[I
    :cond_5
    :goto_4
    const/4 v3, 0x0

    goto :goto_7

    :cond_6
    if-ne v1, v2, :cond_a

    .line 1036
    const/4 v2, 0x0

    .line 1037
    .local v2, "found":Z
    array-length v3, v6

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_8

    aget-object v9, v6, v4

    .line 1038
    .local v9, "connectedDevice":Landroid/media/AudioDeviceInfo;
    invoke-virtual {v9}, Landroid/media/AudioDeviceInfo;->getDeviceId()I

    move-result v10

    const/16 v11, 0x80

    if-ne v10, v11, :cond_7

    .line 1039
    const/16 v3, 0x80

    .line 1040
    .end local v7    # "forceDevice":I
    .restart local v3    # "forceDevice":I
    invoke-virtual {v9}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1041
    .end local v8    # "forceAddr":Ljava/lang/String;
    .restart local v4    # "forceAddr":Ljava/lang/String;
    const/4 v2, 0x1

    .line 1042
    move v7, v3

    move-object v8, v4

    goto :goto_6

    .line 1037
    .end local v3    # "forceDevice":I
    .end local v4    # "forceAddr":Ljava/lang/String;
    .end local v9    # "connectedDevice":Landroid/media/AudioDeviceInfo;
    .restart local v7    # "forceDevice":I
    .restart local v8    # "forceAddr":Ljava/lang/String;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1045
    :cond_8
    :goto_6
    if-nez v2, :cond_9

    const/4 v3, 0x0

    return v3

    :cond_9
    const/4 v3, 0x0

    goto :goto_7

    .line 1035
    .end local v2    # "found":Z
    :cond_a
    const/4 v3, 0x0

    .line 1047
    :goto_7
    iget-object v2, v0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v7, v8, v3}, Landroid/media/AudioManager;->setDeviceToForceByUser(ILjava/lang/String;Z)I

    move-result v2

    if-nez v2, :cond_b

    const/4 v3, 0x1

    :cond_b
    return v3

    nop

    :array_0
    .array-data 4
        0x8000
        0x8
        0x4
        0x4000000
        0x2000
        0x4000
        0x1000
        0x400
        0x800
        0x2
    .end array-data
.end method

.method public whitelist setDeviceForStream(II)V
    .locals 7
    .param p1, "stream"    # I
    .param p2, "device"    # I

    .line 1179
    const-string v0, "Invalid parameter"

    const-string v1, "SemSoundAssistant"

    const/4 v2, 0x5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    if-eq p1, v2, :cond_0

    const/4 v4, 0x4

    if-eq p1, v4, :cond_0

    .line 1182
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    return-void

    .line 1186
    :cond_0
    const/4 v4, 0x3

    if-eqz p2, :cond_1

    if-eq p2, v4, :cond_1

    .line 1187
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    return-void

    .line 1191
    :cond_1
    const-string/jumbo v0, "ring_through_headset"

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1192
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1194
    .local v1, "prevStreams":I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v5

    goto :goto_0

    .line 1195
    :catch_0
    move-exception v5

    :goto_0
    nop

    .line 1197
    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isSeparateStreamForHeadsetOnly()Z

    move-result v5

    .line 1200
    .local v5, "separateStream":Z
    if-eqz v5, :cond_4

    .line 1201
    and-int/lit8 v1, v1, -0x5

    .line 1202
    if-ne p1, v3, :cond_2

    .line 1203
    const/4 v2, 0x1

    .local v2, "currentStream":I
    goto :goto_1

    .line 1204
    .end local v2    # "currentStream":I
    :cond_2
    if-ne p1, v2, :cond_3

    .line 1205
    const/16 v2, 0x20

    .restart local v2    # "currentStream":I
    goto :goto_1

    .line 1207
    .end local v2    # "currentStream":I
    :cond_3
    const/16 v2, 0x10

    .restart local v2    # "currentStream":I
    goto :goto_1

    .line 1210
    .end local v2    # "currentStream":I
    :cond_4
    const/16 v2, 0x31

    .line 1216
    .restart local v2    # "currentStream":I
    :goto_1
    if-ne p2, v4, :cond_5

    .line 1217
    or-int v3, v1, v2

    .local v3, "newStreams":I
    goto :goto_2

    .line 1219
    .end local v3    # "newStreams":I
    :cond_5
    not-int v3, v2

    and-int/2addr v3, v1

    .line 1222
    .restart local v3    # "newStreams":I
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ring_through_headset="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1223
    .local v4, "param":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantProperty(Ljava/lang/String;)V

    .line 1224
    return-void
.end method

.method public blacklist setFastAudioOpenMode()V
    .locals 1

    .line 1308
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setFastAudioOpenMode(Z)V

    .line 1309
    return-void
.end method

.method public greylist setFastAudioOpenMode(Z)V
    .locals 4
    .param p1, "longOpen"    # Z

    .line 1319
    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1320
    :try_start_0
    sget-boolean v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sIsRunning:Z

    if-eqz v1, :cond_0

    .line 1321
    monitor-exit v0

    return-void

    .line 1323
    :cond_0
    const-string v1, "SemSoundAssistant"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFastAudioOpenMode: play sound for quick audio path opening "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sIsRunning:Z

    .line 1326
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/media/SemSoundAssistantManager$FastTrackPlayerRunnable;

    invoke-direct {v2, p1}, Lcom/samsung/android/media/SemSoundAssistantManager$FastTrackPlayerRunnable;-><init>(Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1327
    monitor-exit v0

    .line 1328
    return-void

    .line 1327
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setForceDeviceForAppSoundOutput(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "device"    # I

    .line 507
    if-ltz p2, :cond_2

    const/4 v0, 0x2

    if-gt p2, v0, :cond_2

    .line 511
    const/4 v1, 0x0

    .line 512
    .local v1, "output":I
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 513
    const/4 v1, 0x2

    goto :goto_0

    .line 514
    :cond_0
    if-ne p2, v0, :cond_1

    .line 515
    const/16 v1, 0x8

    .line 518
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->setMultiSoundTargetDevice(II)V

    .line 519
    return-void

    .line 508
    .end local v1    # "output":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMediaVolumeInterval(I)V
    .locals 2
    .param p1, "volumeInterval"    # I

    .line 1058
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1063
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media_volume_step_index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1064
    .local v0, "param":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantProperty(Ljava/lang/String;)V

    .line 1065
    return-void

    .line 1059
    .end local v0    # "param":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v0, "SemSoundAssistant"

    const-string v1, "Invalid index"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    return-void
.end method

.method public whitelist setMediaVolumeSteps([I)Z
    .locals 2
    .param p1, "volumeStep"    # [I

    .line 1099
    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1102
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setMediaVolumeSteps([I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1103
    :catch_0
    move-exception v1

    .line 1104
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1106
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setMicInputControlMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .line 1528
    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->sMicModeParamTable:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "SemSoundAssistant"

    if-nez v1, :cond_0

    .line 1529
    const-string v0, "attempt to call setMicInputControlMode() invalid mode."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    return-void

    .line 1533
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1534
    .local v1, "caller":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMicInputControlMode mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    if-eqz p1, :cond_3

    .line 1537
    const-string v2, "l_mic_input_control_mode=0"

    .line 1541
    .local v2, "standardParam":Ljava/lang/String;
    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    .line 1545
    :cond_1
    const-string v2, "l_call_nc_booster_enable=0"

    .line 1547
    :cond_2
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    .end local v2    # "standardParam":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 1551
    return-void
.end method

.method public blacklist setMultiSoundDevice(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "deviceCategory"    # I

    .line 832
    if-ltz p2, :cond_2

    const/4 v0, 0x2

    if-gt p2, v0, :cond_2

    .line 836
    const/4 v1, 0x0

    .line 837
    .local v1, "output":I
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 838
    const/4 v1, 0x2

    goto :goto_0

    .line 839
    :cond_0
    if-ne p2, v0, :cond_1

    .line 840
    const/16 v1, 0x8

    .line 843
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->setMultiSoundTargetDevice(II)V

    .line 844
    return-void

    .line 833
    .end local v1    # "output":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMultiSoundDeviceVolume(III)Z
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .line 976
    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 977
    const-string v0, "SemSoundAssistant"

    const-string v1, "Multisound is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const/4 v0, 0x0

    return v0

    .line 980
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/media/AudioManager;->setFineVolume(IIII)V

    .line 981
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist setMultiSoundOn(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 811
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMultiSoundOn(Z)V

    .line 812
    return-void
.end method

.method public whitelist setMultiSoundTargetDevice(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "device"    # I

    .line 861
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/AudioManager;->setAppDevice(IIZ)V

    .line 862
    return-void
.end method

.method public whitelist setSoundAssistantProperty(Ljava/lang/String;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sound_assistant=1;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, "newParam":Ljava/lang/String;
    invoke-static {v0}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 794
    return-void
.end method

.method public whitelist setSoundSettingEventBroadcastIntent(ILandroid/app/PendingIntent;)V
    .locals 4
    .param p1, "eventType"    # I
    .param p2, "broadcastIntent"    # Landroid/app/PendingIntent;

    .line 1157
    if-eqz p2, :cond_0

    .line 1161
    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1163
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setSoundSettingEventBroadcastIntent(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1166
    goto :goto_0

    .line 1164
    :catch_0
    move-exception v1

    .line 1165
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SemSoundAssistant"

    const-string v3, "Dead object in setAppDevice"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1167
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1158
    .end local v0    # "service":Landroid/media/IAudioService;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setVoipExtraVolumeMode(Z)V
    .locals 2
    .param p1, "onOff"    # Z

    .line 1562
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 1563
    const-string v1, "l_call_voip_extra_volume_enable"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;Z)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 1564
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    .line 1565
    .local v0, "param":Lcom/samsung/android/media/AudioParameter;
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 1566
    return-void
.end method

.method public whitelist setVolumeKeyMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 603
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 604
    const-string v0, "SemSoundAssistant"

    const-string v1, "Invalid mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    return-void

    .line 609
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjust_media_volume_only="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "param":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantProperty(Ljava/lang/String;)V

    .line 611
    return-void
.end method

.method public whitelist setVolumeMode(IZ)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "onOff"    # Z

    .line 701
    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->VOLUME_MODE_PREDICATE:Ljava/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 702
    const-string v0, "SemSoundAssistant"

    const-string v1, "Invalid mode."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    return-void

    .line 706
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/media/SemSoundAssistantManager;->VOLUME_MODE_KEY:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, "param":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantParam(Ljava/lang/String;)V

    .line 708
    return-void
.end method
