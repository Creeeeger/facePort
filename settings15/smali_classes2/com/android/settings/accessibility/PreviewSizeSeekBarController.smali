.class abstract Lcom/android/settings/accessibility/PreviewSizeSeekBarController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/accessibility/TextReadingResetController$ResetStateListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;


# static fields
.field private static final KEY_SAVED_QS_TOOLTIP_RESHOW:Ljava/lang/String; = "qs_tooltip_reshow"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mInteractionListener:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/settings/accessibility/PreviewSizeSeekBarController$ProgressInteractionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLastProgress:I

.field private mNeedsQSTooltipReshow:Z

.field private final mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekBarPreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

.field private mSeekByTouch:Z

.field private final mSizeData:Lcom/android/settings/accessibility/PreviewSizeData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/accessibility/PreviewSizeData;"
        }
    .end annotation
.end field

.field private mStateLabels:[Ljava/lang/String;

.field private mTooltipWindow:Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;


# direct methods
.method public static synthetic $r8$lambda$ueKp--YwWvOhMb2Y0DkyB1bEFvo(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->showQuickSettingsTooltipIfNeeded()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmInteractionListener(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mInteractionListener:Ljava/util/Optional;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSeekByTouch(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekByTouch:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmSeekByTouch(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekByTouch:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$monProgressFinalized(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->onProgressFinalized()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSeekbarStateDescription(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->setSeekbarStateDescription(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/accessibility/PreviewSizeData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/android/settings/accessibility/PreviewSizeData;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mInteractionListener:Ljava/util/Optional;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mNeedsQSTooltipReshow:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mStateLabels:[Ljava/lang/String;

    new-instance p2, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$1;-><init>(Lcom/android/settings/accessibility/PreviewSizeSeekBarController;)V

    iput-object p2, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iput-object p3, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSizeData:Lcom/android/settings/accessibility/PreviewSizeData;

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private onProgressFinalized()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    iget v0, v0, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    iget v1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mLastProgress:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->showQuickSettingsTooltipIfNeeded()V

    iput v0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mLastProgress:I

    :cond_0
    return-void
.end method

.method private setSeekbarStateDescription(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mStateLabels:[Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    aget-object p1, v0, p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBarStateDescription:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/android/settings/widget/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setStateDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private showQuickSettingsTooltipIfNeeded()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->getTileComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mNeedsQSTooltipReshow:Z

    if-nez v1, :cond_2

    sget-object p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingUtils;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    iget-object v1, v1, Lcom/android/settings/widget/LabeledSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mTooltipWindow:Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->getTileTooltipContent()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->setup(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mTooltipWindow:Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;

    iget-object v3, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    iget-object v3, v3, Lcom/android/settings/widget/LabeledSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v4, 0x31

    invoke-virtual {v1, v3, v4, v2, v2}, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_3
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings/accessibility/AccessibilityQuickSettingUtils;->optInValueToSharedPreferences(Landroid/content/Context;Landroid/content/ComponentName;)V

    iput-boolean v2, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mNeedsQSTooltipReshow:Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSizeData:Lcom/android/settings/accessibility/PreviewSizeData;

    iget-object v0, v0, Lcom/android/settings/accessibility/PreviewSizeData;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSizeData:Lcom/android/settings/accessibility/PreviewSizeData;

    iget v1, v1, Lcom/android/settings/accessibility/PreviewSizeData;->mInitialIndex:I

    iput v1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mLastProgress:I

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/LabeledSeekBarPreference;

    iput-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    iget-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(IZ)V

    iget-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    iput-boolean v2, p1, Lcom/android/settings/widget/SeekBarPreference;->mContinuousUpdates:Z

    iget-object v0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iput-object v0, p1, Lcom/android/settings/widget/LabeledSeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget-boolean p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mNeedsQSTooltipReshow:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    iget p1, p1, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->setSeekbarStateDescription(I)V

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

.method public abstract getTileComponentName()Landroid/content/ComponentName;
.end method

.method public abstract getTileTooltipContent()Ljava/lang/CharSequence;
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "qs_tooltip_reshow"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mNeedsQSTooltipReshow:Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mTooltipWindow:Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mTooltipWindow:Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mTooltipWindow:Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean p0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mNeedsQSTooltipReshow:Z

    if-nez p0, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const-string p0, "qs_tooltip_reshow"

    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public resetState()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSizeData:Lcom/android/settings/accessibility/PreviewSizeData;

    iget-object v1, v0, Lcom/android/settings/accessibility/PreviewSizeData;->mValues:Ljava/util/List;

    iget-object v0, v0, Lcom/android/settings/accessibility/PreviewSizeData;->mDefaultValue:Ljava/lang/Number;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(IZ)V

    iget-object p0, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mInteractionListener:Ljava/util/Optional;

    new-instance v0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setInteractionListener(Lcom/android/settings/accessibility/PreviewSizeSeekBarController$ProgressInteractionListener;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mInteractionListener:Ljava/util/Optional;

    return-void
.end method

.method public setProgressStateLabels([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mStateLabels:[Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
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
