.class public Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final MAX_TRY_IT_COUNT:I = 0x4


# instance fields
.field private final functionItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;",
            ">;"
        }
    .end annotation
.end field

.field private final tryItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/settings/accessibility/recommend/tryitem/TryItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$DE1mIpd3qiKKOO74Tjm60Qa0axo(Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController;Lcom/samsung/android/settings/accessibility/recommend/tryitem/TryItem;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController;->lambda$updateState$2(Lcom/samsung/android/settings/accessibility/recommend/tryitem/TryItem;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KeobHoUqOkrgw6cPZdgJxeCLd30(Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController;Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController;->lambda$updateState$0(Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZqGfQTPtMUIX_Xm8uDuKpMNaiAg(Ljava/util/Set;Lcom/samsung/android/settings/accessibility/recommend/tryitem/TryItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController;->lambda$updateState$1(Ljava/util/Set;Lcom/samsung/android/settings/accessibility/recommend/tryitem/TryItem;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/settings/accessibility/recommend/tryitem/LiveTranscribeTryItem;

    iget-object v2, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/samsung/android/settings/accessibility/recommend/tryitem/BixbyVisionTryItem;

    invoke-direct {v3, v2}, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AccessibilityTimeoutTryItem;

    iget-object v2, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v2}, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AudioDescriptionTryItem;

    invoke-direct {v5, v2}, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/samsung/android/settings/accessibility/recommend/tryitem/BixbyVisionForA11yTryItem;

    invoke-direct {v6, v2}, Lcom/samsung/android/settings/accessibility/recommend/tryitem/BixbyVisionForA11yTryItem;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/samsung/android/settings/accessibility/recommend/tryitem/BoldFontTryItem;

    iget-object v2, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v7, v2}, Lcom/samsung/android/settings/accessibility/recommend/tryitem/BoldFontTryItem;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/samsung/android/settings/accessibility/recommend/tryitem/CaptionPreferencesTryItem;

    iget-object v2, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v2}, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/samsung/android/settings/accessibility/recommend/tryitem/DarkModeTryItem;

    invoke-direct {v9, v2}, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/samsung/android/settings/accessibility/recommend/tryitem/CameraFlashNotificationTryItem;

    invoke-direct {v10, v2}, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;-><init>(Landroid/content/Context;)V

    new-instance v11, Lcom/samsung/android/settings/accessibility/recommend/tryitem/ScreenFlashNotificationTryItem;

    invoke-direct {v11, v2}, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;-><init>(Landroid/content/Context;)V

    new-instance v12, Lcom/samsung/android/settings/accessibility/recommend/tryitem/HighContrastKeyboardTryItem;

    invoke-direct {v12, v2}, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;-><init>(Landroid/content/Context;)V

    new-instance v13, Lcom/samsung/android/settings/accessibility/recommend/tryitem/LiveCaptionTryItem;

    iget-object v2, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v13, v2}, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;-><init>(Landroid/content/Context;)V

    new-instance v14, Lcom/samsung/android/settings/accessibility/recommend/tryitem/PointerSizeColorTryItem;

    invoke-direct {v14, v2}, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;-><init>(Landroid/content/Context;)V

    new-instance v15, Lcom/samsung/android/settings/accessibility/recommend/tryitem/RemoveAnimationsTryItem;

    invoke-direct {v15, v2}, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/settings/accessibility/recommend/tryitem/SpeakKeyboardInputAloudTryItem;

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;-><init>(Landroid/content/Context;)V

    move-object/from16 p1, v0

    new-instance v0, Lcom/samsung/android/settings/accessibility/recommend/tryitem/VibrationIntensityTryItem;

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;-><init>(Landroid/content/Context;)V

    move-object/from16 p2, v0

    new-instance v0, Lcom/samsung/android/settings/accessibility/recommend/tryitem/VibrationPatternTryItem;

    move-object/from16 v17, v0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/accessibility/recommend/tryitem/VibrationPatternTryItem;-><init>(Landroid/content/Context;)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    filled-new-array/range {v1 .. v17}, [Lcom/samsung/android/settings/accessibility/recommend/tryitem/TryItem;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController;->tryItems:Ljava/util/Set;

    iget-object v0, v1, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionsProvider;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionsProvider;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionsProvider;->usingFunctionItems:Ljava/util/List;

    iput-object v0, v1, Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController;->functionItems:Ljava/util/List;

    return-void
.end method

.method private synthetic lambda$updateState$0(Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;->isTurnedOn(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$updateState$1(Ljava/util/Set;Lcom/samsung/android/settings/accessibility/recommend/tryitem/TryItem;)Z
    .locals 2

    invoke-interface {p1}, Lcom/samsung/android/settings/accessibility/recommend/tryitem/TryItem;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/settings/accessibility/recommend/tryitem/TryItem;->getMappedUsingFunctionKeySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecCameraFlashNotificationPreferenceController$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/SecCameraFlashNotificationPreferenceController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private lambda$updateState$2(Lcom/samsung/android/settings/accessibility/recommend/tryitem/TryItem;Landroidx/preference/Preference;)Z
    .locals 1

    sget-object p2, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getA11ySettingsMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result p0

    invoke-interface {p1}, Lcom/samsung/android/settings/accessibility/recommend/tryitem/TryItem;->getFunctionName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "function"

    invoke-static {v0, p1}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "A11Y1010"

    invoke-virtual {p2, p0, v0, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(ILjava/lang/String;Ljava/util/Map;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    instance-of v0, p1, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    new-instance v2, Landroidx/preference/Preference;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
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

.method public updateState(Landroidx/preference/Preference;)V
    .locals 8

    instance-of v0, p1, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_2

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController;->functionItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController;->tryItems:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    const-wide/16 v1, 0x4

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz v4, :cond_2

    move v4, v2

    :goto_1
    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v5

    if-ge v4, v1, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/accessibility/recommend/tryitem/TryItem;

    invoke-interface {v6}, Lcom/samsung/android/settings/accessibility/recommend/tryitem/TryItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-interface {v6}, Lcom/samsung/android/settings/accessibility/recommend/tryitem/TryItem;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    new-instance v7, Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0, v6}, Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/accessibility/recommend/TryCategoryPreferenceController;Lcom/samsung/android/settings/accessibility/recommend/tryitem/TryItem;)V

    invoke-virtual {v5, v7}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    :cond_1
    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
