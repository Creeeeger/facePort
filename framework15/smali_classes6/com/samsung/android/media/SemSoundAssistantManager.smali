.class public Lcom/samsung/android/media/SemSoundAssistantManager;
.super Ljava/lang/Object;
.source "SemSoundAssistantManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemSoundAssistantManager$FastTrackPlayerRunnable;,
        Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;,
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

.field public static final blacklist IGNORE_DUCKING_BY_ALL_APPS:Ljava/lang/String; = "ignore_ducking_by_all_apps"

.field public static final blacklist IGNORE_DUCKING_BY_NAVIGATION:Ljava/lang/String; = "ignore_ducking"

.field public static final blacklist MEDIA_BUTTON_PACKAGE:Ljava/lang/String; = "media_button_package"

.field public static final blacklist MEDIA_VOLUME_MULTI_STEP:Ljava/lang/String; = "sec_volume_steps"

.field public static final blacklist MEDIA_VOLUME_STEP_DEFAULT:I = 0xa

.field public static final blacklist MEDIA_VOLUME_STEP_INDEX:Ljava/lang/String; = "media_volume_step_index"

.field public static final blacklist MEDIA_VOLUME_STEP_MAX:I = 0xa

.field public static final blacklist MEDIA_VOLUME_STEP_MIN:I = 0x1

.field public static final whitelist MIC_INPUT_CONTROL_MODE_DEFAULT:I = 0x64

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
    .locals 5

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/media/SemSoundAssistantManager;->VOLUME_MODE_ALL:Ljava/util/Set;

    const-string v2, "adjust_media_volume_only"

    const-string v3, "mute_media_by_vibrate_or_silent_mode"

    const-string v4, ""

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/media/SemSoundAssistantManager;->VOLUME_MODE_KEY:[Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/media/SemSoundAssistantManager;->VOLUME_MODE_ALL:Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/media/SemSoundAssistantManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/samsung/android/media/SemSoundAssistantManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    sput-object v3, Lcom/samsung/android/media/SemSoundAssistantManager;->VOLUME_MODE_PREDICATE:Ljava/util/function/IntPredicate;

    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/android/media/SemSoundAssistantManager;->sIsRunning:Z

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sput-object v3, Lcom/samsung/android/media/SemSoundAssistantManager;->sLock:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sput-object v3, Lcom/samsung/android/media/SemSoundAssistantManager;->mLock:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/samsung/android/media/SemSoundAssistantManager;->sMediaKeySessionChangedCallbacks:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/media/SemSoundAssistantManager$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/samsung/android/media/SemSoundAssistantManager$$ExternalSyntheticLambda1;-><init>()V

    sput-object v3, Lcom/samsung/android/media/SemSoundAssistantManager;->sMediaKeySessionChangedListener:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    sput-object v3, Lcom/samsung/android/media/SemSoundAssistantManager;->sMicModeParamTable:Landroid/util/ArrayMap;

    sget-object v3, Lcom/samsung/android/media/SemSoundAssistantManager;->sMicModeParamTable:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "l_mic_input_control_mode=0"

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/media/SemSoundAssistantManager;->sMicModeParamTable:Landroid/util/ArrayMap;

    const-string v3, "l_mic_input_control_mode=1"

    invoke-virtual {v2, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->sMicModeParamTable:Landroid/util/ArrayMap;

    const-string v2, "l_mic_input_control_mode=2"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->sMicModeParamTable:Landroid/util/ArrayMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "l_call_nc_booster_enable=1"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->sMicModeParamTable:Landroid/util/ArrayMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "l_call_nc_booster_enable=2"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->sMicModeParamTable:Landroid/util/ArrayMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "l_mic_input_control_mode_2mic=0"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->sMicModeParamTable:Landroid/util/ArrayMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "l_mic_input_control_mode_2mic=1"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->sMicModeParamTable:Landroid/util/ArrayMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "l_mic_input_control_mode_2mic=2"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->sMicModeParamTable:Landroid/util/ArrayMap;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "l_mic_input_control_mode=100"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemSoundAssistantManager;->setContext(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private blacklist getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mOriginalContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setContext(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mApplicationContext:Landroid/content/Context;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mOriginalContext:Landroid/content/Context;

    return-object v0
.end method

.method private blacklist getIntegerArrayFromString(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
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

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ";"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    :goto_1
    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method

.method private static blacklist getService()Landroid/media/IAudioService;
    .locals 2

    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->sService:Landroid/media/IAudioService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->sService:Landroid/media/IAudioService;

    return-object v0

    :cond_0
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sService:Landroid/media/IAudioService;

    sget-object v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sService:Landroid/media/IAudioService;

    return-object v1
.end method

.method private blacklist getSoundAssistantParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sound_assistant;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist isSeparateStreamForHeadsetOnly()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "separate_stream"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    nop

    return v0
.end method

.method static synthetic blacklist lambda$static$0(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

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

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;->onMediaKeyEventSessionChanged(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist setContext(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mApplicationContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mOriginalContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mOriginalContext:Landroid/content/Context;

    :goto_0
    return-void
.end method

.method private blacklist setSoundAssistantParam(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sound_assistant=1;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist sleep(J)V
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist activateFloatingButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mFloatingButton:Z

    return-void
.end method

.method public whitelist addOnMediaKeyEventSessionChangedListener(Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;)V
    .locals 5

    const-string v0, "listener shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sMediaKeySessionChangedCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

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

    monitor-exit v0

    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sMediaKeySessionChangedCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    :cond_1
    if-eqz v2, :cond_2

    new-instance v1, Landroid/os/HandlerExecutor;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    :goto_0
    nop

    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "media_session"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaSessionManager;

    sget-object v4, Lcom/samsung/android/media/SemSoundAssistantManager;->sMediaKeySessionChangedListener:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

    invoke-virtual {v3, v1, v4}, Landroid/media/session/MediaSessionManager;->addOnMediaKeyEventSessionChangedListener(Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;)V

    :cond_3
    sget-object v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sMediaKeySessionChangedCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist addToMultiSoundSupportedList(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1, p1}, Landroid/media/IAudioService;->addPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemSoundAssistant"

    const-string v3, "Error calling addPackage"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public whitelist adjustSoundBalance(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sound_balance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantParam(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad ratio value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist enableSelfieStickMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist forceMonoSound(Z)V
    .locals 2

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

    const-string v0, "using_audio_uids"

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getIntegerArrayFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getApplicationVolume(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getAppVolume(I)I

    move-result v0

    return v0
.end method

.method public whitelist getAudioFrameworkVersion()I
    .locals 3

    const-string v0, "version"

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    return v1
.end method

.method public whitelist getDeviceForStream(I)I
    .locals 7

    const/4 v0, 0x5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const-string v2, "SemSoundAssistant"

    const-string v3, "Invalid parameter"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "ring_through_headset"

    invoke-direct {p0, v2}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v4

    :goto_0
    nop

    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isSeparateStreamForHeadsetOnly()Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    if-ne p1, v0, :cond_2

    const/16 p1, 0x20

    goto :goto_1

    :cond_2
    const/16 p1, 0x10

    :goto_1
    and-int v0, v3, p1

    if-eqz v0, :cond_3

    return v5

    :cond_3
    return v6

    :cond_4
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_5

    return v5

    :cond_5
    return v6
.end method

.method public whitelist getMediaVolumeInterval()I
    .locals 3

    const-string v0, "media_volume_step_index"

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    return v1
.end method

.method public whitelist getMediaVolumeSteps()[I
    .locals 2

    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getMediaVolumeSteps()[I

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getMultiSoundDevice()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v0

    return v0
.end method

.method public whitelist getMultiSoundDeviceVolume(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SemSoundAssistant"

    const-string v1, "Multisound is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->getFineVolume(II)I

    move-result v0

    return v0
.end method

.method public whitelist getRecommandedPackagesForSoundAssistant()[Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getSelectedAppList()[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

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

    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sound_assistant;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getUidIgnoredAudioFocus()I
    .locals 3

    const-string v0, "ignore_audio_focus"

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    return v1
.end method

.method public whitelist getVolumeKeyMode()I
    .locals 3

    const-string v0, "adjust_media_volume_only"

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

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

    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->VOLUME_MODE_PREDICATE:Ljava/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemSoundAssistant"

    const-string v2, "Invalid mode."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->VOLUME_MODE_KEY:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move v1, v3

    :cond_1
    return v1
.end method

.method public whitelist ignoreAudioFocusForApp(IZ)V
    .locals 2

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

    const-string v1, "uid_for_soundassistant"

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

    return-void
.end method

.method public whitelist initApplicationVolume(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove_app_volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantProperty(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist isApplicationMute(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isAppMute(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isFloatingButtonActivated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mFloatingButton:Z

    return v0
.end method

.method public whitelist isMultiSoundOn()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMultiSoundOn()Z

    move-result v0

    return v0
.end method

.method public whitelist isMultiSoundSupportedPackage(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isAlreadyInDB(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SemSoundAssistant"

    const-string v3, "Error calling isAlreadyInDB"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public whitelist isPredefinedMultiSoundSupportedPackage(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isInAllowedList(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SemSoundAssistant"

    const-string v3, "Error calling isInAllowedList"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public whitelist isSelfieStickModeEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeFromMultiSoundSupportedList(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->removePackageForName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemSoundAssistant"

    const-string v3, "Error calling removePackageForName"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public whitelist removeOnMediaKeyEventSessionChangedListener(Lcom/samsung/android/media/SemSoundAssistantManager$OnMediaKeyEventSessionChangedListener;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sMediaKeySessionChangedCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

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

    monitor-exit v0

    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sMediaKeySessionChangedCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sMediaKeySessionChangedCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    nop

    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "media_session"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager;

    sget-object v2, Lcom/samsung/android/media/SemSoundAssistantManager;->sMediaKeySessionChangedListener:Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSessionManager;->removeOnMediaKeyEventSessionChangedListener(Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist sendMediaKeyEvent(Ljava/lang/String;Landroid/view/KeyEvent;)V
    .locals 9

    const-string v0, "packageName shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "keyEvent shouldn\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    const/16 v7, 0x139

    const-string v8, ""

    const-wide/16 v4, 0x2710

    const/4 v6, 0x0

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public whitelist setApplicationMute(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->setAppMute(IZ)V

    return-void
.end method

.method public whitelist setApplicationVolume(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->setAppVolume(II)V

    return-void
.end method

.method public whitelist setDefaultSoundOutputDevice(I)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    iget-object v5, v0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result v5

    invoke-static {v5}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v5

    iget-object v6, v0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v6

    move v7, v5

    const-string v8, ""

    if-ne v1, v4, :cond_6

    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    array-length v9, v2

    move v10, v3

    :goto_0
    if-ge v10, v9, :cond_5

    aget v11, v2, v10

    const/4 v12, 0x0

    array-length v13, v6

    move v14, v3

    :goto_1
    if-ge v14, v13, :cond_3

    aget-object v15, v6, v14

    invoke-virtual {v15}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/16 v3, 0x19

    if-ne v4, v3, :cond_1

    invoke-virtual {v15}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v15}, Landroid/media/AudioDeviceInfo;->getDeviceId()I

    move-result v3

    if-ne v3, v11, :cond_2

    move v3, v11

    invoke-virtual {v15}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x1

    move v7, v3

    move-object v8, v4

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-eqz v12, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    const/4 v3, 0x0

    goto :goto_7

    :cond_6
    if-ne v1, v2, :cond_a

    const/4 v2, 0x0

    array-length v3, v6

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_8

    aget-object v9, v6, v4

    invoke-virtual {v9}, Landroid/media/AudioDeviceInfo;->getDeviceId()I

    move-result v10

    const/16 v11, 0x80

    if-ne v10, v11, :cond_7

    const/16 v3, 0x80

    invoke-virtual {v9}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    move v7, v3

    move-object v8, v4

    goto :goto_6

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    if-nez v2, :cond_9

    const/4 v3, 0x0

    return v3

    :cond_9
    const/4 v3, 0x0

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

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

    const-string v0, "Invalid parameter"

    const-string v1, "SemSoundAssistant"

    const/4 v2, 0x5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    if-eq p1, v2, :cond_0

    const/4 v4, 0x4

    if-eq p1, v4, :cond_0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v4, 0x3

    if-eqz p2, :cond_1

    if-eq p2, v4, :cond_1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "ring_through_headset"

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v5

    goto :goto_0

    :catch_0
    move-exception v5

    :goto_0
    nop

    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isSeparateStreamForHeadsetOnly()Z

    move-result v5

    if-eqz v5, :cond_4

    and-int/lit8 v1, v1, -0x5

    if-ne p1, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    if-ne p1, v2, :cond_3

    const/16 v2, 0x20

    goto :goto_1

    :cond_3
    const/16 v2, 0x10

    goto :goto_1

    :cond_4
    const/16 v2, 0x31

    :goto_1
    if-ne p2, v4, :cond_5

    or-int v3, v1, v2

    goto :goto_2

    :cond_5
    not-int v3, v2

    and-int/2addr v3, v1

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ring_through_headset="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantProperty(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setFastAudioOpenMode()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setFastAudioOpenMode(Z)V

    return-void
.end method

.method public greylist setFastAudioOpenMode(Z)V
    .locals 4

    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sIsRunning:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "SemSoundAssistant"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFastAudioOpenMode: play sound for quick audio path opening "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sIsRunning:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/media/SemSoundAssistantManager$FastTrackPlayerRunnable;

    invoke-direct {v2, p1}, Lcom/samsung/android/media/SemSoundAssistantManager$FastTrackPlayerRunnable;-><init>(Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setForceDeviceForAppSoundOutput(II)V
    .locals 3

    if-ltz p2, :cond_2

    const/4 v0, 0x2

    if-gt p2, v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    const/16 v1, 0x8

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->setMultiSoundTargetDevice(II)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMediaVolumeInterval(I)V
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    goto :goto_0

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

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantProperty(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "SemSoundAssistant"

    const-string v1, "Invalid index"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist setMediaVolumeSteps([I)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setMediaVolumeSteps([I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setMicInputControlMode(I)V
    .locals 4

    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->sMicModeParamTable:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SemSoundAssistant"

    if-nez v0, :cond_0

    const-string v0, "attempt to call setMicInputControlMode() invalid mode."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMicInputControlMode mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    const-string v1, "l_mic_input_control_mode=0"

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    :cond_1
    const-string v1, "l_call_nc_booster_enable=0"

    :cond_2
    sget-object v2, Lcom/samsung/android/media/SemSoundAssistantManager;->sMicModeParamTable:Landroid/util/ArrayMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sMicModeParamTable:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setMultiSoundDevice(II)V
    .locals 3

    if-ltz p2, :cond_2

    const/4 v0, 0x2

    if-gt p2, v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    const/16 v1, 0x8

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->setMultiSoundTargetDevice(II)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMultiSoundDeviceVolume(III)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SemSoundAssistant"

    const-string v1, "Multisound is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/media/AudioManager;->setFineVolume(IIII)V

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist setMultiSoundOn(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMultiSoundOn(Z)V

    return-void
.end method

.method public whitelist setMultiSoundTargetDevice(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/AudioManager;->setAppDevice(IIZ)V

    return-void
.end method

.method public whitelist setSoundAssistantProperty(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sound_assistant=1;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist setSoundSettingEventBroadcastIntent(ILandroid/app/PendingIntent;)V
    .locals 4

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setSoundSettingEventBroadcastIntent(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemSoundAssistant"

    const-string v3, "Dead object in setAppDevice"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setVoipAntiHowlingMode(Z)V
    .locals 2

    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    const-string v1, "l_call_voip_extra_volume_enable"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;Z)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setVoipExtraVolumeMode(Z)V
    .locals 2

    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    const-string v1, "l_call_voip_extra_volume_enable"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;Z)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist setVolumeKeyMode(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string v0, "SemSoundAssistant"

    const-string v1, "Invalid mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

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

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantProperty(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist setVolumeMode(IZ)V
    .locals 2

    sget-object v0, Lcom/samsung/android/media/SemSoundAssistantManager;->VOLUME_MODE_PREDICATE:Ljava/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SemSoundAssistant"

    const-string v1, "Invalid mode."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

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

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantParam(Ljava/lang/String;)V

    return-void
.end method
