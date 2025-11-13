.class public Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHardPressVibrationFeedbackController;
.super Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final SEP_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHardPressVibrationFeedbackController;->SEP_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    const-string v0, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NAVIGATION_BAR_THEME"

    const-string v1, "SupportForceTouch"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Rune$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator_manager"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibratorManager;

    invoke-virtual {v0}, Landroid/os/VibratorManager;->getDefaultVibrator()Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result v0

    if-lez v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110226

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEffect(I)Landroid/os/VibrationEffect;
    .locals 0

    const p0, 0xc376

    const/4 p1, -0x1

    invoke-static {p0, p1}, Landroid/os/VibrationEffect;->semCreateHaptic(II)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMaxVibrationIntensity()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getRingtone(I)Landroid/media/Ringtone;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSAEventId()I
    .locals 0

    const/16 p0, 0x1c34

    return p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStream()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSyncDbName(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemDBName()Ljava/lang/String;
    .locals 0

    const-string p0, "SEM_VIBRATION_FORCE_TOUCH_INTENSITY"

    return-object p0
.end method

.method public getTitle()I
    .locals 0

    const p0, 0x7f14100f

    return p0
.end method

.method public getVibrationAttributes()Landroid/os/VibrationAttributes;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationIntensityHardPressVibrationFeedbackController;->SEP_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

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

    invoke-super {p0, p1}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public updatePreferenceIcon(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/SecVibrationSeekBarPreference;->mVibrationIcon:Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/widget/SecVibrationIcon;->updateLayout(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
