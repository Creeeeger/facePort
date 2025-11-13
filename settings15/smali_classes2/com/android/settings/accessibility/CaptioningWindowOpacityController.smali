.class public Lcom/android/settings/accessibility/CaptioningWindowOpacityController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;


# instance fields
.field private final mCaptionHelper:Lcom/android/settings/accessibility/CaptionHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Lcom/android/settings/accessibility/CaptionHelper;

    invoke-direct {p2, p1}, Lcom/android/settings/accessibility/CaptionHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/accessibility/CaptioningWindowOpacityController;->mCaptionHelper:Lcom/android/settings/accessibility/CaptionHelper;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accessibility/ColorPreference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/accessibility/CaptionUtils;->localizedOpacityValues(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryTitles:[Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f060af9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/accessibility/ListDialogPreference;->setValues([I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptioningWindowOpacityController;->mCaptionHelper:Lcom/android/settings/accessibility/CaptionHelper;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/CaptionHelper;->getWindowColor()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/accessibility/CaptionUtils;->parseOpacity(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/accessibility/ListDialogPreference;->setValue(I)V

    iput-object p0, p1, Lcom/android/settings/accessibility/ListDialogPreference;->mOnValueChangedListener:Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;

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

.method public onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/accessibility/CaptioningWindowOpacityController;->mCaptionHelper:Lcom/android/settings/accessibility/CaptionHelper;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/CaptionHelper;->getWindowColor()I

    move-result p1

    invoke-static {p1}, Lcom/android/settings/accessibility/CaptionUtils;->parseColor(I)I

    move-result p1

    invoke-static {p1, p2}, Lcom/android/settings/accessibility/CaptionUtils;->mergeColorOpacity(II)I

    move-result p1

    iget-object p0, p0, Lcom/android/settings/accessibility/CaptioningWindowOpacityController;->mCaptionHelper:Lcom/android/settings/accessibility/CaptionHelper;

    iget-object p0, p0, Lcom/android/settings/accessibility/CaptionHelper;->mContentResolver:Landroid/content/ContentResolver;

    const-string p2, "accessibility_captioning_window_color"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
