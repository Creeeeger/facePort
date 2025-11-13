.class public final Lcom/android/systemui/qs/tiles/SoundModeTile;
.super Lcom/android/systemui/qs/tileimpl/SQSTileImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final SOUNDMODE_SETTINGS:Landroid/content/Intent;

.field public static final SOUND_MODE_LOGGING_VALUE:[Ljava/lang/String;

.field public static final SOUND_MODE_MUTE_ALL_SOUNDS_TEXT:[I

.field public static final SOUND_MODE_TEXT:[I


# instance fields
.field public final SOUND_MODE_ICON:[Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field public mListening:Z

.field public mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mMuteAllSound:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field public final mReceiver:Lcom/android/systemui/qs/tiles/SoundModeTile$1;

.field public final mSoundModeTilePrefEditor:Landroid/content/SharedPreferences$Editor;

.field public final mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SOUND_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUNDMODE_SETTINGS:Landroid/content/Intent;

    const v0, 0x7f130f48

    const v1, 0x7f130f47

    const v2, 0x7f130f49

    filled-new-array {v1, v2, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_TEXT:[I

    const v0, 0x7f130f46

    filled-new-array {v1, v2, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_MUTE_ALL_SOUNDS_TEXT:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/keyguard/DisplayLifecycle;)V
    .locals 11

    move-object v10, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v1, 0x7f080f3a

    const v2, 0x7f080f46

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v2, 0x7f080f51

    const v3, 0x7f080f61

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    new-instance v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v3, 0x7f080f47

    const v4, 0x7f080f50

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    const v3, 0x7f080ed1

    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, v10, Lcom/android/systemui/qs/tiles/SoundModeTile;->mMuteAllSound:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    filled-new-array {v2, v1, v0}, [Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    move-result-object v0

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_ICON:[Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTile;)V

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/SoundModeTile;->mReceiver:Lcom/android/systemui/qs/tiles/SoundModeTile$1;

    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/SoundModeTile;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v0, p11

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/SoundModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v0, v10, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v1, "quick_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/SoundModeTile;->mSoundModeTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    :cond_0
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_DEFAULT:Z

    return-void
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUNDMODE_SETTINGS:Landroid/content/Intent;

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x138a

    return p0
.end method

.method public final getSearchTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode(Z)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->isSystemSettingAllSoundOff()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_MUTE_ALL_SOUNDS_TEXT:[I

    aget p0, p0, v0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_TEXT:[I

    aget p0, p0, v0

    :goto_0
    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSearchWords()Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->isSystemSettingAllSoundOff()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode(Z)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    sget-object v1, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_MUTE_ALL_SOUNDS_TEXT:[I

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_TEXT:[I

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    aget v4, v1, v2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->isSystemSettingAllSoundOff()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode(Z)I

    move-result p0

    sget-object v1, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_MUTE_ALL_SOUNDS_TEXT:[I

    aget p0, v1, p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode(Z)I

    move-result p0

    sget-object v1, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_TEXT:[I

    aget p0, v1, p0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTileMapValue()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode(Z)I

    move-result p0

    return p0
.end method

.method public final handleClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 4

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isSoundModeTileBlocked()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getSubScreenContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToastOnSubScreen(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    :goto_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserManager:Landroid/os/UserManager;

    iget p1, p1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const-string v2, "no_adjust_volume"

    invoke-virtual {v1, v2, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const p1, 0x10404d4

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    xor-int/2addr v2, v1

    const/16 v3, 0x138a

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->action(IZ)V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode(Z)I

    move-result p1

    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceType;->isVibratorSupported(Landroid/content/Context;)Z

    move-result v2

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->isSystemSettingAllSoundOff()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceType;->isVibratorSupported(Landroid/content/Context;)Z

    move-result v2

    :cond_6
    :goto_1
    const-string/jumbo p1, "setSoundProfile(soundProfile:"

    const-string v1, ", detailSet:false)"

    invoke-static {v2, p1, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isSoundModeTileBlocked()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->setRingerModeInternal(I)V

    :goto_2
    return-void
.end method

.method public final handleDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-void
.end method

.method public final handleSecondaryClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserManager:Landroid/os/UserManager;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const-string v2, "no_adjust_volume"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const p1, 0x10404d4

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->handleSecondaryClick(Lcom/android/systemui/animation/Expandable;)V

    return-void
.end method

.method public final handleSetListening(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mListening:Z

    const-string v0, "handleSetListening: listening "

    invoke-static {v0, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mReceiver:Lcom/android/systemui/qs/tiles/SoundModeTile$1;

    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    if-eqz p1, :cond_1

    const-string p1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    const-string v1, "android.settings.ALL_SOUND_MUTE"

    invoke-static {p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p1, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode(Z)I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->isSystemSettingAllSoundOff()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "handleUpdateState: profile "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", muteAllSound "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    if-nez v3, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    iput-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    sget-object v5, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_MUTE_ALL_SOUNDS_TEXT:[I

    aget v5, v5, p2

    goto :goto_2

    :cond_2
    sget-object v5, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_TEXT:[I

    aget v5, v5, p2

    :goto_2
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_ICON:[Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    if-eqz v3, :cond_3

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mMuteAllSound:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_3

    :cond_3
    aget-object v5, v4, p2

    :goto_3
    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    if-nez p2, :cond_4

    move p2, v2

    goto :goto_4

    :cond_4
    if-ne p2, v0, :cond_5

    move p2, v1

    goto :goto_4

    :cond_5
    if-ne p2, v2, :cond_6

    move p2, v0

    :cond_6
    :goto_4
    if-eqz v3, :cond_7

    const/4 p2, 0x0

    goto :goto_5

    :cond_7
    aget-object p2, v4, p2

    :goto_5
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->nextIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f13132a

    invoke-static {p0, v1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-eqz p2, :cond_8

    move v0, v2

    :cond_8
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public final isSystemSettingAllSoundOff()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "all_sound_off"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public final sendTileStatusLog()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode(Z)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mute"

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "vibrate"

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "sound"

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileMapKey()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/systemui/qs/QSTileHost$TilesMap;->SID_TILE_STATE:I

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTilesMap:Lcom/android/systemui/qs/QSTileHost$TilesMap;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Lcom/android/systemui/qs/QSTileHost$TilesMap;->getId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mSoundModeTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mSoundModeTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    return-void
.end method
