.class public Lcom/samsung/android/settings/as/audio/SecSoundModeController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SecSoundModeController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/as/audio/SecSoundModeController$UpdateSoundModeControlsAsync;
    }
.end annotation


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
.field private mIntervalTime:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

.field private mIsInResume:Z

.field private mIsInUpdateProgress:Z

.field private mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

.field private mObserver:Landroid/database/ContentObserver;

.field private mPrevMuteInterval:I

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSoundModeMultiBtn:Lcom/samsung/android/settings/as/widget/SecSoundModePreference;

.field private mSoundModeUIAsync:Lcom/samsung/android/settings/as/audio/SecSoundModeController$UpdateSoundModeControlsAsync;

.field private mSoundSettings:Lcom/samsung/android/settings/as/audio/SoundSettings;

.field private mVibrateWhileRinging:Landroidx/preference/SecSwitchPreference;


# direct methods
.method public static synthetic $r8$lambda$-677xFeK43yPD0Ghuq-YpWnUUwM(Lcom/samsung/android/settings/as/audio/SecSoundModeController;Lcom/samsung/android/settings/as/widget/SecSoundModePreference;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->lambda$displayPreference$0(Lcom/samsung/android/settings/as/widget/SecSoundModePreference;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$N_8MMG1lyQrlagm2hzg-GDx9N18(Lcom/samsung/android/settings/as/audio/SecSoundModeController;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->lambda$displayPreference$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsInUpdateProgress(Lcom/samsung/android/settings/as/audio/SecSoundModeController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mIsInUpdateProgress:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMuteIntervalOn(Lcom/samsung/android/settings/as/audio/SecSoundModeController;)Landroidx/preference/SecSwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoundSettings(Lcom/samsung/android/settings/as/audio/SecSoundModeController;)Lcom/samsung/android/settings/as/audio/SoundSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mSoundSettings:Lcom/samsung/android/settings/as/audio/SoundSettings;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misInUpdateSoundModeControlsAsync(Lcom/samsung/android/settings/as/audio/SecSoundModeController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->isInUpdateSoundModeControlsAsync()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateControls(Lcom/samsung/android/settings/as/audio/SecSoundModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->updateControls()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateUIByUser(Lcom/samsung/android/settings/as/audio/SecSoundModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->updateUIByUser()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmAudioManager()Landroid/media/AudioManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->MUTE_TIME_PRESET:Ljava/util/ArrayList;

    const/16 v1, 0x3c

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0x78

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v1, 0xb4

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/as/audio/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    const-string v0, "sound_mode"

    .line 79
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/samsung/android/settings/as/audio/SecSoundModeController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/as/audio/SecSoundModeController$1;-><init>(Lcom/samsung/android/settings/as/audio/SecSoundModeController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mObserver:Landroid/database/ContentObserver;

    if-eqz p3, :cond_0

    .line 81
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 83
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mSoundSettings:Lcom/samsung/android/settings/as/audio/SoundSettings;

    const-string p0, "audio"

    .line 84
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    sput-object p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/as/audio/SecSoundModeController;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getRemainTimeString()Landroid/text/SpannableString;
    .locals 9

    .line 422
    sget-object v0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRemainingMuteIntervalMs()I

    move-result v0

    const v1, 0x36ee80

    .line 423
    div-int v1, v0, v1

    const v2, 0xea60

    .line 424
    div-int v2, v0, v2

    rem-int/lit8 v2, v2, 0x3c

    .line 428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRemainTimeString(), currentRemainTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SecSoundModeController"

    invoke-static {v4, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 430
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$plurals;->lock_timeout_hours:I

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 431
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 429
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 432
    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 433
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$plurals;->lock_timeout_minutes:I

    invoke-virtual {v5, v6, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    .line 434
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 432
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-nez v0, :cond_0

    .line 438
    new-instance p0, Landroid/text/SpannableString;

    invoke-direct {p0, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p0

    :cond_0
    if-nez v1, :cond_1

    if-gtz v2, :cond_2

    :cond_1
    if-lez v1, :cond_4

    if-nez v2, :cond_4

    :cond_2
    const-string v0, "%s"

    if-nez v1, :cond_3

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v5, v1, v7

    .line 443
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v3, v1, v7

    .line 445
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_4
    if-lez v1, :cond_5

    if-lez v2, :cond_5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v7

    aput-object v5, v0, v4

    const-string v1, "%s %s"

    .line 448
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 451
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_mute_interval_time_remaining:I

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v6, v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 453
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 454
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 455
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$color;->sec_preference_summary_primary_color:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 458
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v0

    const/16 v3, 0x21

    invoke-virtual {v1, v2, v0, p0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method private isInUpdateSoundModeControlsAsync()Z
    .locals 1

    .line 506
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mSoundModeUIAsync:Lcom/samsung/android/settings/as/audio/SecSoundModeController$UpdateSoundModeControlsAsync;

    if-eqz p0, :cond_0

    .line 507
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

.method private isZenModeEnabled()Z
    .locals 2

    .line 417
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "zen_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private synthetic lambda$displayPreference$0(Lcom/samsung/android/settings/as/widget/SecSoundModePreference;I)Z
    .locals 0

    .line 113
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->updateRingerMode(I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$displayPreference$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 117
    iget-boolean p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mIsInUpdateProgress:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 121
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 122
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "mode_ringer_time_on"

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    move v0, v2

    :cond_1
    if-ne p1, v0, :cond_2

    return v2

    .line 127
    :cond_2
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_3

    .line 131
    sget-object p2, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p2}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result p2

    .line 132
    sget-object v0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2}, Landroid/media/AudioManager;->setMuteInterval(I)V

    .line 134
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->setFocusTemporaryMuteInterval(I)V

    .line 136
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->updateUIByUser()V

    const/16 p0, 0x150

    const/16 p2, 0x1c24

    if-eqz p1, :cond_4

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x0

    .line 139
    :goto_0
    invoke-static {p0, p2, v0, v1}, Lcom/samsung/android/settings/as/logging/LoggingWrapper;->insertEventLogging(IIJ)V

    return v2
.end method

.method private registerListenersAndObserver()V
    .locals 4

    .line 465
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 466
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    .line 467
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 468
    new-instance v1, Lcom/samsung/android/settings/as/audio/SecSoundModeController$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/as/audio/SecSoundModeController$3;-><init>(Lcom/samsung/android/settings/as/audio/SecSoundModeController;)V

    iput-object v1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 482
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mode_ringer_time_on"

    .line 486
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 485
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 488
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    .line 489
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mObserver:Landroid/database/ContentObserver;

    .line 488
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 490
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "all_sound_off"

    .line 491
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mObserver:Landroid/database/ContentObserver;

    .line 490
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 492
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mode_ringer_time"

    .line 493
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mObserver:Landroid/database/ContentObserver;

    .line 492
    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private releaseListenersAndObserver()V
    .locals 2

    .line 498
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 499
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 500
    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private setFocusTemporaryMuteInterval(I)V
    .locals 1

    .line 408
    sget-object v0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->MUTE_TIME_PRESET:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 410
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->setFocusWithoutExecute(I)V

    goto :goto_0

    .line 412
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->setFocusWithoutExecute(I)V

    :goto_0
    return-void
.end method

.method private setPreferenceEnabled(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 293
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mVibrateWhileRinging:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_0

    .line 294
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 296
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_5

    .line 297
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 300
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mVibrateWhileRinging:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->isSupportVibrateWhenRing(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 301
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mVibrateWhileRinging:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 303
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_5

    .line 304
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 307
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mVibrateWhileRinging:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_4

    .line 308
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 310
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_5

    .line 311
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 314
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    if-eqz p1, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    if-eqz v2, :cond_7

    .line 315
    invoke-virtual {v2}, Landroidx/preference/Preference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

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
    .locals 10

    const/4 v0, 0x1

    .line 320
    iput-boolean v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mIsInUpdateProgress:Z

    .line 321
    sget-object v1, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    .line 322
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mode_ringer_time_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v4

    .line 324
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateControls(), currentRingerMode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " currentMuteIntervalOn="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SecSoundModeController"

    invoke-static {v5, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v3, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mSoundModeMultiBtn:Lcom/samsung/android/settings/as/widget/SecSoundModePreference;

    const/4 v6, 0x2

    if-eqz v3, :cond_3

    if-ne v6, v1, :cond_1

    .line 329
    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->setSelectedPosition(I)V

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_2

    .line 331
    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->setSelectedPosition(I)V

    goto :goto_1

    .line 333
    :cond_2
    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->setSelectedPosition(I)V

    .line 337
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 339
    sget-object v1, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getPrevRingerMode()I

    move-result v1

    const-string v2, "\n\n"

    if-eq v1, v0, :cond_6

    if-eq v1, v6, :cond_4

    goto/16 :goto_2

    .line 354
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 355
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->sec_sound_temporary_mute_summary:I

    .line 356
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings/R$string;->sound_settings:I

    .line 357
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 355
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->getRemainTimeString()Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 355
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 360
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->sec_sound_temporary_mute_summary:I

    .line 361
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->sound_settings:I

    .line 362
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    .line 360
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 341
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 342
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->sec_sound_temporary_mute_summary:I

    .line 343
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings/R$string;->sec_sound_mode_vibrate:I

    .line 344
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 342
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->getRemainTimeString()Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 342
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 347
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->sec_sound_temporary_mute_summary:I

    .line 348
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->sec_sound_mode_vibrate:I

    .line 349
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    .line 347
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 371
    :goto_2
    sget-object v1, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result v1

    .line 374
    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mIsInResume:Z

    if-eqz v2, :cond_8

    .line 375
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->setFocusTemporaryMuteInterval(I)V

    .line 376
    iput-boolean v4, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mIsInResume:Z

    .line 379
    :cond_8
    sget-object v2, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->MUTE_TIME_PRESET:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 380
    iget-object v2, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    div-int/lit8 v3, v1, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 381
    iput v1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mPrevMuteInterval:I

    .line 382
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->getCustomHourFlag()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 383
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->setFocusWithoutExecute(I)V

    goto :goto_3

    .line 386
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 389
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 392
    :cond_a
    :goto_3
    sget-object v1, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->setPreferenceEnabled(I)V

    .line 394
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mSoundModeMultiBtn:Lcom/samsung/android/settings/as/widget/SecSoundModePreference;

    if-eqz v1, :cond_d

    .line 395
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/as/utils/SoundUtils;->isMuteAllSoundEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 396
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->sec_all_sound_mute_enabled:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 397
    :cond_b
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->sec_dnd_enabled:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 399
    :goto_4
    iget-object v3, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mSoundModeMultiBtn:Lcom/samsung/android/settings/as/widget/SecSoundModePreference;

    if-eqz v1, :cond_c

    move v6, v1

    goto :goto_5

    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->isZenModeEnabled()Z

    move-result v6

    :goto_5
    invoke-virtual {v3, v6, v2}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->setOptionVisible(ZLjava/lang/String;)V

    .line 400
    iget-object v2, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mSoundModeMultiBtn:Lcom/samsung/android/settings/as/widget/SecSoundModePreference;

    xor-int/2addr v0, v1

    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->setButtonEnabled(IZ)V

    .line 403
    :cond_d
    iput-boolean v4, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mIsInUpdateProgress:Z

    const-string p0, "updateControls() end"

    .line 404
    invoke-static {v5, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateRingerMode(I)Z
    .locals 4

    .line 234
    sget-object v0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

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

    .line 243
    :cond_2
    :goto_0
    sget-object v1, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    if-eq v0, v1, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mIsInUpdateProgress:Z

    if-eqz v1, :cond_3

    goto :goto_1

    .line 247
    :cond_3
    sget-object v1, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    if-eqz v0, :cond_4

    .line 249
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mode_ringer_time_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 252
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->updateUIByUser()V

    const/16 p0, 0x150

    const/16 v0, 0x1c21

    .line 255
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    .line 254
    invoke-static {p0, v0, p1, v1, v2}, Lcom/samsung/android/settings/as/logging/LoggingWrapper;->insertEventLogging(IILjava/lang/String;J)V

    return v3

    :cond_5
    :goto_1
    return v2
.end method

.method private updateUIByUser()V
    .locals 1

    .line 287
    new-instance v0, Lcom/samsung/android/settings/as/audio/SecSoundModeController$UpdateSoundModeControlsAsync;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/audio/SecSoundModeController$UpdateSoundModeControlsAsync;-><init>(Lcom/samsung/android/settings/as/audio/SecSoundModeController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mSoundModeUIAsync:Lcom/samsung/android/settings/as/audio/SecSoundModeController$UpdateSoundModeControlsAsync;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 288
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 9

    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mSoundModeMultiBtn:Lcom/samsung/android/settings/as/widget/SecSoundModePreference;

    const-string v0, "temporary_mute"

    .line 101
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    const-string v0, "mute_duration"

    .line 102
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    const-string v0, "vibrate_when_ringing"

    .line 103
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mVibrateWhileRinging:Landroidx/preference/SecSwitchPreference;

    .line 105
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mSoundModeMultiBtn:Lcom/samsung/android/settings/as/widget/SecSoundModePreference;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 106
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasVibrator(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mSoundModeMultiBtn:Lcom/samsung/android/settings/as/widget/SecSoundModePreference;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->setButtonVisible(II)V

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mSoundModeMultiBtn:Lcom/samsung/android/settings/as/widget/SecSoundModePreference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_sound_mode_sound:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->sec_sound_mode_vibrate:I

    .line 110
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->sec_sound_mode_mute:I

    .line 111
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-virtual {p1, v1, v2, v3}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->setTextForButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mSoundModeMultiBtn:Lcom/samsung/android/settings/as/widget/SecSoundModePreference;

    new-instance v1, Lcom/samsung/android/settings/as/audio/SecSoundModeController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/as/audio/SecSoundModeController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/as/audio/SecSoundModeController;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->setOnButtonSelectedListener(Lcom/samsung/android/settings/as/widget/SecSoundModePreference$OnButtonSelectedListener;)V

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mMuteIntervalOn:Landroidx/preference/SecSwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/as/audio/SecSoundModeController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/as/audio/SecSoundModeController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/as/audio/SecSoundModeController;)V

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 145
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/SecListPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 147
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 149
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$plurals;->lock_timeout_hours:I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    new-array v5, v0, [Ljava/lang/Object;

    .line 150
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 148
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 152
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    new-array v6, v0, [Ljava/lang/Object;

    .line 153
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 151
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 155
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    .line 156
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    .line 154
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->sec_longpress_custom_button:I

    .line 157
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 147
    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 160
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 161
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 162
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 163
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    .line 164
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    .line 160
    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 167
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    new-instance v0, Lcom/samsung/android/settings/as/audio/SecSoundModeController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/audio/SecSoundModeController$2;-><init>(Lcom/samsung/android/settings/as/audio/SecSoundModeController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 202
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->updateControls()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "sound_mode"

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 207
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->registerListenersAndObserver()V

    return-void
.end method

.method public onDestroy()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 222
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->releaseListenersAndObserver()V

    .line 223
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->isInUpdateSoundModeControlsAsync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mSoundModeUIAsync:Lcom/samsung/android/settings/as/audio/SecSoundModeController$UpdateSoundModeControlsAsync;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mIsInResume:Z

    .line 213
    sget-object v0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result v0

    .line 214
    iget v1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mPrevMuteInterval:I

    if-eq v0, v1, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->updateControls()V

    .line 217
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mSoundModeMultiBtn:Lcom/samsung/android/settings/as/widget/SecSoundModePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/widget/SecSoundModePreference;->updateIconUI()V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setIntervalTime(II)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 269
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "mode_ringer_time_on"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 271
    :cond_0
    sget-object v1, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->MUTE_TIME_PRESET:Ljava/util/ArrayList;

    mul-int/lit8 p1, p1, 0x3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    .line 272
    sget-object p2, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p2, p1}, Landroid/media/AudioManager;->setMuteInterval(I)V

    .line 273
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->setCustomHourFlag(Z)V

    goto :goto_0

    .line 275
    :cond_1
    sget-object v1, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mAudioManager:Landroid/media/AudioManager;

    add-int/2addr p1, p2

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setMuteInterval(I)V

    .line 276
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->setCustomHourFlag(Z)V

    .line 279
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->setFocusWithoutExecute(I)V

    .line 280
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->updateUIByUser()V

    return-void
.end method

.method public setIntervalTimeCancel(I)V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->MUTE_TIME_PRESET:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->getCustomHourFlag()Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->mIntervalTime:Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;

    div-int/lit8 p1, p1, 0x3c

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/widget/SoundModeDropDownPreference;->setFocusWithoutExecute(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 230
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
