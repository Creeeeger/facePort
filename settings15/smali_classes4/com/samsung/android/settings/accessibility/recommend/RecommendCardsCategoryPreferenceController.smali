.class public Lcom/samsung/android/settings/accessibility/recommend/RecommendCardsCategoryPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final KEY_CATEGORY_SUFFIX:Ljava/lang/String; = "_category"

.field private static final KEY_PROFILE_RECOMMEND_CARD_1:Ljava/lang/String; = "recommend_card_1"

.field private static final KEY_PROFILE_RECOMMEND_CARD_2:Ljava/lang/String; = "recommend_card_2"

.field private static final KEY_TALKBACK_RECOMMEND_CARD:Ljava/lang/String; = "talkback_recommend_card"


# instance fields
.field private a11yProfile:Lcom/samsung/android/settings/accessibility/recommend/AccessibilityProfile;

.field private final cardItemList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem;",
            ">;"
        }
    .end annotation
.end field

.field private final talkBackCardItem:Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem;


# direct methods
.method public static synthetic $r8$lambda$IFU2KgjxAvijYtgiCwf7aR01PLA(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/recommend/RecommendCardsCategoryPreferenceController;->lambda$updateState$1(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QdQXNmLLEjWW_FkxHcY4AoBvoes(Lcom/samsung/android/settings/accessibility/recommend/RecommendCardsCategoryPreferenceController;Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem$ActionButtonInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/recommend/RecommendCardsCategoryPreferenceController;->lambda$convertCardItemToPreference$2(Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem$ActionButtonInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RFHJQWDEQIc5qeGdDV3dnlWkgME(Lcom/samsung/android/settings/accessibility/recommend/RecommendCardsCategoryPreferenceController;Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/recommend/RecommendCardsCategoryPreferenceController;->lambda$updateState$0(Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/BixbyTextCallRecommendCard;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/CameraOCRRecommendCard;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/DarkModeRecommendCard;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/ExtraDimRecommendCard;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RoutineRecommendCardForNoProfile;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/BixbyQuickCommandRecommendCard;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/CallBackgroundRecommendCard;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v8, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/CaptionRecommendCard;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v9, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/EditLockScreenRecommendCard;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    new-instance v10, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/HighContrastRecommendCard;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    new-instance v11, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/MagnificationRecommendCard;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    new-instance v12, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/MagnifierRecommendCard;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    new-instance v13, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RoutineRecommendCardForColor;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    new-instance v14, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RoutineRecommendCardForFlash;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    new-instance v15, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/SamsungInternetHighContrastRecommendCard;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    new-instance v16, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/SmartThingsRecommendCard;

    invoke-direct/range {v16 .. v16}, Ljava/lang/Object;-><init>()V

    new-instance v17, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/VoiceInputRecommendCard;

    invoke-direct/range {v17 .. v17}, Ljava/lang/Object;-><init>()V

    new-instance v18, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/VoiceRecorderRecommendCard;

    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    new-instance v19, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RoutineRecommendCardForAAS;

    invoke-direct/range {v19 .. v19}, Ljava/lang/Object;-><init>()V

    new-instance v20, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RoutineRecommendCardForSoundMode;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    new-instance v21, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/AnsweringCallsRecommendCard;

    invoke-direct/range {v21 .. v21}, Ljava/lang/Object;-><init>()V

    filled-new-array/range {v1 .. v21}, [Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/accessibility/recommend/RecommendCardsCategoryPreferenceController;->cardItemList:Ljava/util/Set;

    new-instance v1, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/TalkBackGestureRecommendCard;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/settings/accessibility/recommend/RecommendCardsCategoryPreferenceController;->talkBackCardItem:Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem;

    return-void
.end method

.method private convertCardItemToPreference(Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem;)Landroidx/preference/Preference;
    .locals 3

    new-instance v0, Lcom/samsung/android/settings/accessibility/base/widget/InlineCuePreference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/base/widget/InlineCuePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem;->getCardContent(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem;->getActionButtonInfo(Landroid/content/Context;)Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem$ActionButtonInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem$ActionButtonInfo;->getButtonText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/accessibility/recommend/RecommendCardsCategoryPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/accessibility/recommend/RecommendCardsCategoryPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/recommend/RecommendCardsCategoryPreferenceController;Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem$ActionButtonInfo;)V

    iput-object v1, v0, Lcom/samsung/android/settings/accessibility/base/widget/InlineCuePreference;->firstButtonTitle:Ljava/lang/CharSequence;

    iput-object v2, v0, Lcom/samsung/android/settings/accessibility/base/widget/InlineCuePreference;->firstButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {p1, p0}, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem$ActionButtonInfo;->getButtonContentDescription(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/settings/accessibility/base/widget/InlineCuePreference;->firstButtonContentDescription:Ljava/lang/CharSequence;

    :cond_0
    return-object v0
.end method

.method private lambda$convertCardItemToPreference$2(Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem$ActionButtonInfo;Landroid/view/View;)V
    .locals 2

    sget-object p2, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getA11ySettingsMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result p0

    invoke-interface {p1}, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem$ActionButtonInfo;->getButtonLoggingValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TipButton"

    invoke-static {v1, v0}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "A11Y1011"

    invoke-virtual {p2, p0, v1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(ILjava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1}, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem$ActionButtonInfo;->onButtonClicked()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic lambda$updateState$0(Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/recommend/RecommendCardsCategoryPreferenceController;->a11yProfile:Lcom/samsung/android/settings/accessibility/recommend/AccessibilityProfile;

    invoke-interface {p1}, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem;->getSupportProfileType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/recommend/AccessibilityProfile;->isProfileRegistered(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateState$1(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    instance-of v1, v0, Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/recommend/RecommendCardsCategoryPreferenceController;->talkBackCardItem:Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessibility/recommend/RecommendCardsCategoryPreferenceController;->convertCardItemToPreference(Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem;)Landroidx/preference/Preference;

    move-result-object v0

    const-string/jumbo v1, "talkback_recommend_card"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    new-instance v0, Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const-string/jumbo p0, "talkback_recommend_card_category"

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

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
    .locals 11

    instance-of v0, p1, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/recommend/RecommendCardsCategoryPreferenceController;->talkBackCardItem:Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    const-string/jumbo v1, "talkback_recommend_card"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    const-string/jumbo v1, "talkback_recommend_card_category"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/recommend/RecommendCardsCategoryPreferenceController;->a11yProfile:Lcom/samsung/android/settings/accessibility/recommend/AccessibilityProfile;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/settings/accessibility/recommend/AccessibilityProfile;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/accessibility/recommend/AccessibilityProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/recommend/RecommendCardsCategoryPreferenceController;->a11yProfile:Lcom/samsung/android/settings/accessibility/recommend/AccessibilityProfile;

    move v4, v1

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lcom/samsung/android/settings/accessibility/recommend/AccessibilityProfile;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/recommend/AccessibilityProfile;->initProfileType(Landroid/content/Context;)I

    move-result v3

    iget v4, v0, Lcom/samsung/android/settings/accessibility/recommend/AccessibilityProfile;->profileType:I

    if-eq v4, v3, :cond_3

    move v4, v1

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    iput v3, v0, Lcom/samsung/android/settings/accessibility/recommend/AccessibilityProfile;->profileType:I

    :goto_1
    if-eqz v4, :cond_9

    const-string/jumbo v0, "recommend_card_1"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreferenceRecursively(Ljava/lang/CharSequence;)V

    const-string/jumbo v3, "recommend_card_1_category"

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->removePreferenceRecursively(Ljava/lang/CharSequence;)V

    const-string/jumbo v4, "recommend_card_2"

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceGroup;->removePreferenceRecursively(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/recommend/RecommendCardsCategoryPreferenceController;->cardItemList:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/accessibility/recommend/RecommendCardsCategoryPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/accessibility/recommend/RecommendCardsCategoryPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/accessibility/recommend/RecommendCardsCategoryPreferenceController;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-static {v6}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/accessibility/recommend/RecommendCardsCategoryPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-static {v6, v7}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    move v6, v2

    move v7, v6

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_9

    const/4 v8, 0x2

    if-lt v6, v8, :cond_4

    goto :goto_5

    :cond_4
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/AbstractRoutineRecommendCard;

    if-eqz v8, :cond_6

    if-eqz v7, :cond_5

    goto :goto_4

    :cond_5
    move v7, v1

    :cond_6
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem;

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/accessibility/recommend/RecommendCardsCategoryPreferenceController;->convertCardItemToPreference(Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem;)Landroidx/preference/Preference;

    move-result-object v8

    if-nez v6, :cond_7

    invoke-virtual {v8, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_3

    :cond_7
    if-ne v6, v1, :cond_8

    new-instance v9, Landroidx/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    invoke-virtual {v8, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_8
    :goto_3
    add-int/lit8 v6, v6, 0x1

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    :goto_5
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
