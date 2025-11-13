.class public Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityMediaController;
.super Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;
.source "SecVibrationIntensityMediaController.java"


# static fields
.field private static final SEP_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    const/16 v1, 0x13

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityMediaController;->SEP_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/VibUtils;->isSupportDcHaptic(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
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

.method protected getRingtone()Landroid/media/Ringtone;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getSALogID()I
    .locals 0

    const/16 p0, 0xfb6

    return p0
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

.method protected getStream()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method protected getSystemDBName()Ljava/lang/String;
    .locals 0

    const-string p0, "media_vibration_intensity"

    return-object p0
.end method

.method public getTitle()I
    .locals 0

    .line 57
    sget p0, Lcom/android/settings/R$string;->sec_vibration_media:I

    return p0
.end method

.method protected getVibrationAttributes()Landroid/os/VibrationAttributes;
    .locals 0

    .line 39
    sget-object p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityMediaController;->SEP_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

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

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

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

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public updatePreferenceIcon(I)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    if-eqz p0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->updateIconView()V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
