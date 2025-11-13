.class public Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final KEY_MUTE_DURATION:Ljava/lang/String; = "mute_duration"

.field private static final KEY_SOUND_MODE:Ljava/lang/String; = "sound_mode"

.field private static final KEY_TEMPORARY_MUTE:Ljava/lang/String; = "temporary_mute"

.field private static final KEY_VIBRATE_WHEN_RINGING:Ljava/lang/String; = "vibrate_when_ringing"

.field private static final MUTE_TIME_PRESET:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SOUND_MODE_NORMAL:I = 0x0

.field private static final SOUND_MODE_SILENT:I = 0x2

.field private static final SOUND_MODE_VIBRATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SecSoundModeController"

.field private static mAudioManager:Landroid/media/AudioManager;


# instance fields
.field private mIntervalTime:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

.field private mIsInResume:Z

.field private mIsInUpdateProgress:Z

.field private mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

.field private mObserver:Landroid/database/ContentObserver;

.field private mPrevMuteInterval:I

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSoundModeMultiBtn:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;

.field private mSoundModeUIAsync:Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$UpdateSoundModeControlsAsync;

.field private mSoundSettings:Lcom/samsung/android/settings/asbase/audio/SoundSettings;

.field private mVibrateWhileRinging:Landroidx/preference/SecSwitchPreference;


# direct methods
.method public static synthetic $r8$lambda$0uIVMgwYb4m7JO0INtFlS0zWWfI(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->lambda$displayPreference$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$e4oUJST2vTEs4YgfrYpn5Rp3e_8(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->lambda$displayPreference$0(Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsInUpdateProgress(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mIsInUpdateProgress:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMuteIntervalOn(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;)Landroidx/preference/SecSwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSoundSettings(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;)Lcom/samsung/android/settings/asbase/audio/SoundSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mSoundSettings:Lcom/samsung/android/settings/asbase/audio/SoundSettings;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misInUpdateSoundModeControlsAsync(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->isInUpdateSoundModeControlsAsync()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateControls(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->updateControls()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateUIByUser(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->updateUIByUser()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetmAudioManager()Landroid/media/AudioManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->MUTE_TIME_PRESET:Ljava/util/ArrayList;

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x78

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0xb4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/asbase/audio/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    const-string/jumbo v0, "sound_mode"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$1;-><init>(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mObserver:Landroid/database/ContentObserver;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mSoundSettings:Lcom/samsung/android/settings/asbase/audio/SoundSettings;

    const-string p0, "audio"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    sput-object p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getRemainTimeString()Landroid/text/SpannableString;
    .locals 6

    sget-object v0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRemainingMuteIntervalMs()I

    move-result v0

    const v1, 0x36ee80

    div-int v1, v0, v1

    const v2, 0xea60

    div-int v2, v0, v2

    rem-int/lit8 v2, v2, 0x3c

    const-string v3, "getRemainTimeString(), currentRemainTime="

    const-string v4, "SecSoundModeController"

    invoke-static {v0, v3, v4}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12001e

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f12001f

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    if-nez v0, :cond_0

    new-instance p0, Landroid/text/SpannableString;

    invoke-direct {p0, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p0

    :cond_0
    if-nez v1, :cond_1

    if-gtz v2, :cond_2

    :cond_1
    if-lez v1, :cond_3

    if-nez v2, :cond_3

    :cond_2
    if-nez v1, :cond_5

    move-object v3, v4

    goto :goto_0

    :cond_3
    if-lez v1, :cond_4

    if-lez v2, :cond_4

    const-string v0, " "

    invoke-static {v3, v0, v4}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    move-object v3, v5

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1425ae

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f060659

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v0

    const/16 v3, 0x21

    invoke-virtual {v1, v2, v0, p0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method private isInUpdateSoundModeControlsAsync()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mSoundModeUIAsync:Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$UpdateSoundModeControlsAsync;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p0

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$displayPreference$0(Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;I)Z
    .locals 0

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->updateRingerMode(I)Z

    move-result p0

    return p0
.end method

.method private lambda$displayPreference$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-boolean p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mIsInUpdateProgress:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v1, "mode_ringer_time_on"

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    move v0, v2

    :cond_1
    if-ne p1, v0, :cond_2

    return v2

    :cond_2
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_3

    sget-object p2, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p2}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result p2

    sget-object v0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2}, Landroid/media/AudioManager;->setMuteInterval(I)V

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->setFocusTemporaryMuteInterval(I)V

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->updateUIByUser()V

    if-eqz p1, :cond_4

    const-wide/16 p0, 0x1

    goto :goto_0

    :cond_4
    const-wide/16 p0, 0x0

    :goto_0
    const/16 p2, 0x150

    const/16 v0, 0x1c24

    invoke-static {p2, v0, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return v2
.end method

.method private registerListenersAndObserver()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$3;-><init>(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;)V

    iput-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer_time_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "all_sound_off"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer_time"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private releaseListenersAndObserver()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private setFocusTemporaryMuteInterval(I)V
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->MUTE_TIME_PRESET:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->setFocusWithoutExecute(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->setFocusWithoutExecute(I)V

    :goto_0
    return-void
.end method

.method private setPreferenceEnabled(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mVibrateWhileRinging:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mVibrateWhileRinging:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->isSupportVibrateWhenRing(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mVibrateWhileRinging:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mVibrateWhileRinging:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    if-eqz p1, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroidx/preference/Preference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_7
    return-void
.end method

.method private updateControls()V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mIsInUpdateProgress:Z

    sget-object v1, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mode_ringer_time_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateControls(), currentRingerMode="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " currentMuteIntervalOn="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SecSoundModeController"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mSoundModeMultiBtn:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;

    const/4 v6, 0x2

    if-eqz v3, :cond_3

    if-ne v6, v1, :cond_1

    iput v4, v3, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mSelectedPosition:I

    iget-object v1, v3, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->updateButtonStatus(I)V

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_2

    iput v0, v3, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mSelectedPosition:I

    iget-object v1, v3, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->updateButtonStatus(I)V

    goto :goto_1

    :cond_2
    iput v6, v3, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mSelectedPosition:I

    iget-object v1, v3, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->updateButtonStatus(I)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    sget-object v1, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getPrevRingerMode()I

    move-result v1

    const-string v2, "\n\n"

    const v3, 0x7f1427ae

    if-eq v1, v0, :cond_6

    if-eq v1, v6, :cond_4

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const v1, 0x7f142cf1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->getRemainTimeString()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const v1, 0x7f1427a3

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->getRemainTimeString()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    sget-object v0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mIsInResume:Z

    if-eqz v1, :cond_8

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->setFocusTemporaryMuteInterval(I)V

    iput-boolean v4, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mIsInResume:Z

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_8
    :goto_3
    sget-object v1, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->MUTE_TIME_PRESET:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    div-int/lit8 v2, v0, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->setValue(Ljava/lang/String;)V

    iput v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mPrevMuteInterval:I

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    iget-boolean v1, v0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mCustomHourFlag:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->setFocusWithoutExecute(I)V

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_a
    :goto_5
    sget-object v0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->setPreferenceEnabled(I)V

    iput-boolean v4, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mIsInUpdateProgress:Z

    const-string/jumbo p0, "updateControls() end"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateRingerMode(I)Z
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    if-ne p1, v3, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    move v0, v2

    :cond_2
    :goto_0
    sget-object v1, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    if-eq v0, v1, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mIsInUpdateProgress:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer_time_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->updateUIByUser()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x150

    const/16 v0, 0x1c21

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    return v3

    :cond_5
    :goto_1
    return v2
.end method

.method private updateUIByUser()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$UpdateSoundModeControlsAsync;

    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$UpdateSoundModeControlsAsync;->mControllerWeakReference:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mSoundModeUIAsync:Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$UpdateSoundModeControlsAsync;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mSoundModeMultiBtn:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;

    const-string/jumbo v0, "temporary_mute"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    const-string/jumbo v0, "mute_duration"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    const-string/jumbo v0, "vibrate_when_ringing"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mVibrateWhileRinging:Landroidx/preference/SecSwitchPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mSoundModeMultiBtn:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->hasVibrator(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mSoundModeMultiBtn:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;

    const/16 v0, 0x8

    iput v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mMidVisible:I

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mSoundModeMultiBtn:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1427a2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1427a3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f1427a1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mLowText:Ljava/lang/String;

    iput-object v1, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mMidText:Ljava/lang/String;

    iput-object v2, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mHighText:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mSoundModeMultiBtn:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;

    new-instance v0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;)V

    iput-object v0, p1, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mListener:Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$$ExternalSyntheticLambda0;

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    new-instance v0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12001e

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v7, 0x3

    invoke-virtual {v3, v4, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f14255e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    iput-object v1, p1, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    new-instance v0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$2;-><init>(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->updateControls()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "sound_mode"

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onCreate()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->registerListenersAndObserver()V

    return-void
.end method

.method public onDestroy()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->releaseListenersAndObserver()V

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->isInUpdateSoundModeControlsAsync()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mSoundModeUIAsync:Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$UpdateSoundModeControlsAsync;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mIsInResume:Z

    sget-object v1, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mPrevMuteInterval:I

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->updateControls()V

    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    const-string/jumbo v2, "no_adjust_volume"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v0

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mVibrateWhileRinging:Landroidx/preference/SecSwitchPreference;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mSoundModeMultiBtn:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mSoundModeMultiBtn:Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;

    iput-boolean v0, p0, Lcom/samsung/android/settings/asbase/widget/SecSoundModePreference;->mIsInit:Z

    :cond_4
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setIntervalTime(II)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "mode_ringer_time_on"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->MUTE_TIME_PRESET:Ljava/util/ArrayList;

    mul-int/lit8 p1, p1, 0x3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    sget-object p2, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p2, p1}, Landroid/media/AudioManager;->setMuteInterval(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->setCustomHourFlag(Z)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    add-int/2addr p1, p2

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setMuteInterval(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->setCustomHourFlag(Z)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->setFocusWithoutExecute(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->updateUIByUser()V

    return-void
.end method

.method public setIntervalTimeCancel(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->MUTE_TIME_PRESET:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;

    iget-boolean v0, p0, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->mCustomHourFlag:Z

    if-nez v0, :cond_1

    div-int/lit8 p1, p1, 0x3c

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/widget/SoundModeDropDownPreference;->setFocusWithoutExecute(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
