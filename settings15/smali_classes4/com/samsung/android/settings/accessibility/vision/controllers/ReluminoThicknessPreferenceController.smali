.class public Lcom/samsung/android/settings/accessibility/vision/controllers/ReluminoThicknessPreferenceController;
.super Lcom/android/settings/core/SliderPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final DEFAULT_THICKNESS:I = 0x1

.field static final MAX_THICKNESS:I = 0x4

.field static final THICKNESS:[F


# instance fields
.field private mPreference:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarWithButtonsPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/settings/accessibility/vision/controllers/ReluminoThicknessPreferenceController;->THICKNESS:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x409fae14    # 4.99f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarWithButtonsPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/ReluminoThicknessPreferenceController;->mPreference:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarWithButtonsPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/vision/controllers/ReluminoThicknessPreferenceController;->getMax()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/SeekBarPreference;->setMax(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/ReluminoThicknessPreferenceController;->mPreference:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarWithButtonsPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/vision/controllers/ReluminoThicknessPreferenceController;->getMin()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/SeekBarPreference;->setMin(I)V

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

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->getBackupKeys()Ljava/util/List;

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

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMax()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getMin()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSliderPosition()I
    .locals 3

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "relumino_edge_thickness"

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/settings/accessibility/vision/controllers/ReluminoThicknessPreferenceController;->THICKNESS:[F

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget v1, v1, v0

    cmpl-float v1, p0, v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->isControllable()Z

    move-result p0

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

    invoke-super {p0, p1}, Lcom/android/settings/core/SliderPreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setSliderPosition(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/settings/accessibility/vision/controllers/ReluminoThicknessPreferenceController;->THICKNESS:[F

    aget v2, v1, p1

    sget-object v3, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->excludeDeviceNameSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "relumino_edge_thickness"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/ReluminoThicknessPreferenceController;->mPreference:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarWithButtonsPreference;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    aget p1, v1, p1

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->setStateDescription(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/SliderPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "relumino_edge_thickness"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    instance-of v0, p1, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarWithButtonsPreference;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarWithButtonsPreference;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->setStateDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
