.class public Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;


# static fields
.field private static final PERSONALIZED:I = 0x4


# instance fields
.field private final mAccessibilityColorAdjustmentKeyToValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessibilityColorAdjustmentValue:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mOnChangeListener:Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController$OnChangeListener;

.field private mPreference:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->mAccessibilityColorAdjustmentKeyToValueMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->mResources:Landroid/content/res/Resources;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->mAccessibilityColorAdjustmentKeyToValueMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private getColorAdjustmentValueToKeyMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->mAccessibilityColorAdjustmentKeyToValueMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f03008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->mAccessibilityColorAdjustmentKeyToValueMap:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->mAccessibilityColorAdjustmentKeyToValueMap:Ljava/util/Map;

    return-object p0
.end method

.method private handlePreferenceChange(I)V
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind_test"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->startColorTest()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "color_adjustment_type"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->setColorAdjustment(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private startColorTest()V
    .locals 4

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentTestFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 v1, 0x0

    const v3, 0x7f141c1c

    invoke-virtual {v0, v3, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->getMetricsCategory()I

    move-result p0

    iput p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->mPreference:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;

    iput-object p0, p1, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    iget-object v0, p1, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mAppendix:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iput v1, p1, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mAppendixVisibility:I

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->mPreference:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->updateState(Landroidx/preference/Preference;)V

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

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xc08

    return p0
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

.method public onRadioButtonClicked(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->getColorAdjustmentValueToKeyMap()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->handlePreferenceChange(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->mOnChangeListener:Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController$OnChangeListener;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->mPreference:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;

    check-cast p1, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->sControllers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->updateSeekBarPreference()V

    :cond_1
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setOnChangeListener(Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController$OnChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->mOnChangeListener:Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController$OnChangeListener;

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updatePreferenceCheckedState(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->mAccessibilityColorAdjustmentValue:I

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->mPreference:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "color_adjustment_type"

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->mAccessibilityColorAdjustmentValue:I

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->mPreference:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->getColorAdjustmentValueToKeyMap()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->mPreference:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->updatePreferenceCheckedState(I)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
