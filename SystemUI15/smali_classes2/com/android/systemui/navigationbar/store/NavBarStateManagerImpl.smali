.class public final Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/store/NavBarStateManager;


# instance fields
.field public final context:Landroid/content/Context;

.field public final eventTypeFactory:Lcom/android/systemui/navigationbar/store/EventTypeFactory;

.field public final interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

.field public layoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

.field public final logWrapper:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

.field public navBarLayoutParams:Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;

.field public final navBarRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

.field public final navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public states:Lcom/android/systemui/navigationbar/model/NavBarStates;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/store/NavBarStore;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/navigationbar/interactor/InteractorFactory;Lcom/android/systemui/navigationbar/util/StoreLogUtil;Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;Lcom/android/systemui/settings/UserTracker;Landroid/graphics/Point;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p9

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->context:Landroid/content/Context;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    move-object/from16 v2, p5

    iput-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->logWrapper:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

    move-object/from16 v2, p6

    iput-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->layoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    move-object/from16 v2, p7

    iput-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->navBarRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    new-instance v15, Lcom/android/systemui/navigationbar/model/NavBarStates;

    move-object v2, v15

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v32, v15

    move/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const v30, 0x7fffffe

    const/16 v31, 0x0

    invoke-direct/range {v2 .. v31}, Lcom/android/systemui/navigationbar/model/NavBarStates;-><init>(Landroid/graphics/Point;ZZLcom/samsung/systemui/splugins/navigationbar/LayoutProvider;IIIZIZZIZZZZZZZIZZZZZILjava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v32

    iput-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    new-instance v2, Lcom/android/systemui/navigationbar/layout/NavBarLayoutParams;

    invoke-direct {v2, v1, v0}, Lcom/android/systemui/navigationbar/layout/NavBarLayoutParams;-><init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/store/NavBarStateManager;)V

    iput-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->navBarLayoutParams:Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;

    sget-object v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory;->Companion:Lcom/android/systemui/navigationbar/store/EventTypeFactory$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory;->INSTANCE:Lcom/android/systemui/navigationbar/store/EventTypeFactory;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory;

    invoke-direct {v2, v1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory;->INSTANCE:Lcom/android/systemui/navigationbar/store/EventTypeFactory;

    :cond_0
    iput-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->eventTypeFactory:Lcom/android/systemui/navigationbar/store/EventTypeFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->onNavigationBarCreated()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/store/NavBarStore;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/navigationbar/interactor/InteractorFactory;Lcom/android/systemui/navigationbar/util/StoreLogUtil;Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;Lcom/android/systemui/settings/UserTracker;Landroid/graphics/Point;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p10

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    move-object v10, v0

    goto :goto_0

    :cond_0
    move-object/from16 v10, p9

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/store/NavBarStore;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/navigationbar/interactor/InteractorFactory;Lcom/android/systemui/navigationbar/util/StoreLogUtil;Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;Lcom/android/systemui/settings/UserTracker;Landroid/graphics/Point;)V

    return-void
.end method


# virtual methods
.method public final canPlaceKeyboardButton(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->imeDownButtonForAllRotation:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final canShowButtonInLargeCoverIme()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isMultiModalAvailableInLargeCover()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarHideKeyboardButtonEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isMultiModalAvailableInLargeCover()Z

    move-result p0

    :goto_1
    return p0
.end method

.method public final canShowFloatingGameTools(Z)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGameMode(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureProtectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isGameToolsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "canShowFloatingGameTools"

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public final canShowGestureHint()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureHintEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean v0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->sPayShowing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->shouldShowSUWStyle()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "canShowGestureHint"

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method public final canShowHideKeyboardButtonForRotation(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->shouldShowSUWStyle()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarHideKeyboardButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->canPlaceKeyboardButton(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final canShowKeyboardButtonForRotation(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget v1, v1, Lcom/android/systemui/navigationbar/model/NavBarStates;->lastTaskUserId:I

    const-string/jumbo v2, "show_keyboard_button"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->supportLargeCoverScreenNavBar()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->canPlaceKeyboardButton(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v3

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->canShowMultiModalButtonForRotation(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->canShowHideKeyboardButtonForRotation(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v3, v1

    :cond_4
    const-string v0, "canShowKeyboardButtonForRotation("

    const-string v1, ")"

    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    return v3
.end method

.method public final canShowKeyboardButtonOnLeft()Z
    .locals 4

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/model/SysUiState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/model/SysUiState;

    iget-wide v0, v0, Lcom/android/systemui/model/SysUiState;->mFlags:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget p0, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->lastTaskUserId:I

    const-string/jumbo v2, "show_keyboard_button_position"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1
.end method

.method public final canShowMultiModalButtonForRotation(I)Z
    .locals 3

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->navBarRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->isSetMultimodalButton()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->canPlaceKeyboardButton(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method public final getButtonWidth(Z)I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object v1, v1, Lcom/android/systemui/navigationbar/model/NavBarStates;->displaySize:Landroid/graphics/Point;

    invoke-interface {v0, v1, p1}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getButtonWidth(Landroid/graphics/Point;Z)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getButtonWidth(land: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getDefaultLayout()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object v1, v1, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavBarButtonOrderDefault()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getNavigationBarAlignPosition()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getLayout(ZI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getDefaultLayout"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getGesturalLayout(Z)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isNavBarButtonOrderDefault()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getGesturalLayout(ZZ)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getGesturalLayout"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final getGestureWidth(Z)I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object v1, v1, Lcom/android/systemui/navigationbar/model/NavBarStates;->displaySize:Landroid/graphics/Point;

    invoke-interface {v0, v1, p1}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getGestureWidth(Landroid/graphics/Point;Z)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getGestureWidth(land: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getNavBarHeight(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->shouldShowSUWStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10502c4

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->navBarLayoutParams:Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->canMove:Z

    invoke-interface {v0, p0, p1}, Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;->getBarHeight(ZI)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getSettingHelper()Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method public final getSpaceWidth(Z)I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object v1, v1, Lcom/android/systemui/navigationbar/model/NavBarStates;->displaySize:Landroid/graphics/Point;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isSideAndBottomGestureMode$default(Lcom/android/systemui/navigationbar/store/NavBarStateManager;)Z

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getSpaceWidth(Landroid/graphics/Point;ZZ)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSpaceWidth(land: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final isBottomGestureMode(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget v0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->navigationMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "isBottomGestureMode"

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public final isCoverDisplayNavBarEnabled()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->supportLargeCoverScreenNavBar()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isLargeCoverScreenSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isCoverLauncherNavBarEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_2

    :cond_0
    move v1, v2

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean v0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportCoverScreen:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v3, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->foldCache:Z

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v3, "supportCoverScreenNavBar"

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isCoverLauncherNavBarEnabled()Z

    move-result v1

    :cond_4
    :goto_2
    return v1
.end method

.method public final isCoverLauncherNavBarEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean v0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportCoverScreen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v2, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "isCoverLauncherNavBarEnabled"

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final isGameMode(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->navBarRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftViewList:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    if-eqz v0, :cond_0

    const-string v1, "com.samsung.android.game.gametools"

    iget-object v0, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->requestClass:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "isGameMode"

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public final isGestureHintEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureHintEnabled()Z

    move-result p0

    return p0
.end method

.method public final isGestureMode()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isBottomGestureMode(Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isSideAndBottomGestureMode$default(Lcom/android/systemui/navigationbar/store/NavBarStateManager;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final isLargeCoverScreenSyncEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean v0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportLargeCoverScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLargeCoverScreenNavigation()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isLargeCoverScreenSyncEnabled"

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isMultiModalAvailableInLargeCover()Z
    .locals 11

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->supportLargeCoverScreenNavBar()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "NavBarStateManager"

    if-nez v0, :cond_0

    const-string p0, "multiModalForLargeCover = false (not in cover display)"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->multiModalForLargeCover:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "content://com.samsung.android.honeyboard.provider.KeyboardSettingsProvider"

    const-string v3, "cover_voice_icon"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    if-eqz v10, :cond_3

    :cond_2
    :goto_0
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "NAME"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "VALUE"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_3
    if-eqz v10, :cond_4

    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catch_1
    move-exception v3

    move v0, v1

    :goto_2
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to retrieve cover_voice_icon. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_4

    goto :goto_1

    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    const/4 v4, 0x1

    if-ne v0, v4, :cond_5

    move v1, v4

    :cond_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lcom/android/systemui/navigationbar/model/NavBarStates;->multiModalForLargeCover:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->multiModalForLargeCover:Ljava/lang/Boolean;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "multiModalForLargeCover : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->multiModalForLargeCover:Ljava/lang/Boolean;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :goto_4
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p0
.end method

.method public final isNavBarHidden()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isNavBarHiddenByKnox()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_NEW_DEX:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->isEnabled()Z

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final isNavBarHiddenByKnox()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v1, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/knox/EdmMonitor;->mIsNavigationBarHidden:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "isNavBarHiddenByKnox"

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    return v1
.end method

.method public final isNavigationBarUseThemeDefault()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarUseThemeDefault()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isNavigationBarUseThemeDefault"

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method public final isTaskBarEnabled(Z)Z
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isTaskBarEnabled()Z

    move-result v0

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isFactoryBinary()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v3, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v4, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    invoke-virtual {v3, v4}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    iget-object v5, v5, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->userUnlocked:Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean v7, v7, Lcom/android/systemui/navigationbar/model/NavBarStates;->deviceProvisioned:Z

    iget-object v8, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper;->isEasyModeOn()Z

    move-result v8

    xor-int/2addr v8, v2

    iget-object v9, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v9}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v9

    xor-int/2addr v9, v2

    sget-object v10, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/app/IActivityTaskManager;->getLockTaskModeState()I

    move-result v10
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v10, v2, :cond_1

    move v10, v2

    goto :goto_1

    :catch_0
    :cond_1
    move v10, v6

    :goto_1
    xor-int/2addr v10, v2

    invoke-virtual {v3, v4}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    if-eqz v4, :cond_2

    iget-boolean v4, v4, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->isDefaultHome:Z

    if-ne v4, v2, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v6

    :goto_2
    iget-object v11, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean v11, v11, Lcom/android/systemui/navigationbar/model/NavBarStates;->userSetupCompleteForCurrentUser:Z

    sget-boolean v12, Lcom/android/systemui/BasicRune;->NAVBAR_NEW_DEX:Z

    if-eqz v12, :cond_3

    const-class v12, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;

    invoke-virtual {v3, v12}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->isEnabled()Z

    move-result v3

    if-ne v3, v2, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v6

    :goto_3
    if-eqz p1, :cond_10

    if-eqz v0, :cond_4

    const-string v12, "a"

    goto :goto_4

    :cond_4
    const-string v12, "A"

    :goto_4
    if-eqz v1, :cond_5

    const-string v13, "b"

    goto :goto_5

    :cond_5
    const-string v13, "B"

    :goto_5
    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v5, :cond_6

    const-string v13, "c"

    goto :goto_6

    :cond_6
    const-string v13, "C"

    :goto_6
    invoke-static {v12, v13}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez v13, :cond_7

    const-string v13, "d"

    goto :goto_7

    :cond_7
    const-string v13, "D"

    :goto_7
    invoke-static {v12, v13}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v13

    if-eqz v13, :cond_8

    const-string v13, "e"

    goto :goto_8

    :cond_8
    const-string v13, "E"

    :goto_8
    invoke-static {v12, v13}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v7, :cond_9

    const-string v13, "f"

    goto :goto_9

    :cond_9
    const-string v13, "F"

    :goto_9
    invoke-static {v12, v13}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v8, :cond_a

    const-string v13, "g"

    goto :goto_a

    :cond_a
    const-string v13, "G"

    :goto_a
    invoke-static {v12, v13}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v9, :cond_b

    const-string v13, "h"

    goto :goto_b

    :cond_b
    const-string v13, "H"

    :goto_b
    invoke-static {v12, v13}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v10, :cond_c

    const-string v13, "i"

    goto :goto_c

    :cond_c
    const-string v13, "I"

    :goto_c
    invoke-static {v12, v13}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v4, :cond_d

    const-string v13, "j"

    goto :goto_d

    :cond_d
    const-string v13, "J"

    :goto_d
    invoke-static {v12, v13}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v11, :cond_e

    const-string v13, "k"

    goto :goto_e

    :cond_e
    const-string v13, "K"

    :goto_e
    invoke-static {v12, v13}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v3, :cond_f

    const-string v13, "l"

    goto :goto_f

    :cond_f
    const-string v13, "L"

    :goto_f
    invoke-static {v12, v13}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_10

    :cond_10
    const-string v12, ""

    :goto_10
    if-eqz v0, :cond_12

    if-eqz v1, :cond_12

    if-eqz v5, :cond_12

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez v0, :cond_11

    goto :goto_11

    :cond_11
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_11
    if-eqz v7, :cond_12

    if-eqz v8, :cond_12

    if-eqz v9, :cond_12

    if-eqz v10, :cond_12

    if-eqz v4, :cond_12

    if-nez v11, :cond_14

    :cond_12
    if-eqz v3, :cond_13

    if-eqz v5, :cond_13

    goto :goto_12

    :cond_13
    move v2, v6

    :cond_14
    :goto_12
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sem_task_bar_available"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_15

    const-string p1, "isTaskbarEnabled("

    const-string v0, ")"

    invoke-static {p1, v12, v0}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_15
    return v2
.end method

.method public final logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    const-string v0, "NavBarStates("

    const-string v1, ") "

    const-string v2, ": "

    invoke-static {p0, v0, v1, p2, v2}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavBarStateManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onNavigationBarCreated()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_COVER_DISPLAY:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    if-ne v1, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportCoverScreen:Z

    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    if-eqz v2, :cond_1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportLargeCoverScreen:Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    const-string/jumbo v5, "user_setup_complete"

    invoke-static {v1, v5, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->userSetupCompleteForCurrentUser:Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->eventTypeFactory:Lcom/android/systemui/navigationbar/store/EventTypeFactory;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory;->updatableEvents:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory;->updatableEvents:Ljava/util/List;

    new-instance v5, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnConfigChanged;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnConfigChanged;-><init>(Landroid/content/res/Configuration;)V

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory;->updatableEvents:Ljava/util/List;

    new-instance v5, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;

    const v6, 0x11101e7

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v6

    if-nez v6, :cond_3

    move v6, v3

    goto :goto_3

    :cond_3
    move v6, v4

    :goto_3
    const v7, 0x7f050029

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_4

    :cond_4
    move v3, v4

    :goto_4
    const v4, 0x11101ea

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    const v7, 0x10e00ef

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-direct {v5, v6, v3, v4, v1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;-><init>(ZZZI)V

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory;->updatableEvents:Ljava/util/List;

    new-instance v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnRotationChanged;

    iget-object v3, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnRotationChanged;-><init>(I)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory;->updatableEvents:Ljava/util/List;

    new-instance v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnDeviceProvisionedChanged;

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnDeviceProvisionedChanged;-><init>(Z)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory;->updatableEvents:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->updateStateFromEvent(Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->updateLayoutProvider()V

    return-void
.end method

.method public final rotateDisabledByPolicy()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarRotateSuggestionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final shouldShowSUWStyle()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean v0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->userSetupCompleteForCurrentUser:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final supportLargeCoverScreenNavBar()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean v0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportLargeCoverScreen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v2, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->foldCache:Z

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v2, "supportLargeCoverScreenNavBar"

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    return v1
.end method

.method public final updateLayoutProvider()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->layoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateLayoutProvider() layoutProviderContainer = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->logWrapper:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

    iget-boolean v2, v1, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->allowLogging:Z

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->lastDepth:I

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->layoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->supportLargeCoverScreenNavBar()Z

    move-result p0

    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportPhoneLayoutProvider:Z

    invoke-interface {v1, p0, v2}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;->updateLayoutProvider(ZZ)Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    move-result-object p0

    iput-object p0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    return-void
.end method

.method public final updateStateFromEvent(Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnConfigChanged;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnConfigChanged;

    iget-object p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnConfigChanged;->newConfig:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p0

    iput p0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->rotation:I

    iget-object p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnConfigChanged;->newConfig:Landroid/content/res/Configuration;

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v3

    :goto_0
    iput-boolean p0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->darkMode:Z

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnConfigChanged;->newConfig:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object p1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnConfigChanged;->newConfig:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/graphics/Point;->set(II)V

    iget-object p1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->displaySize:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget v4, p0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->displayChanged:Z

    iput-object p0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->displaySize:Landroid/graphics/Point;

    goto/16 :goto_4

    :cond_2
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;

    iget-boolean v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;->canMove:Z

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->canMove:Z

    iget-boolean v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;->supportPhoneLayoutProvider:Z

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportPhoneLayoutProvider:Z

    iget-boolean v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;->imeDownButtonForAllRotation:Z

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->imeDownButtonForAllRotation:Z

    iget v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;->navigationMode:I

    iput v1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->navigationMode:I

    iput-boolean v3, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->displayChanged:Z

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->layoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->supportLargeCoverScreenNavBar()Z

    move-result v2

    iget-boolean p1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;->supportPhoneLayoutProvider:Z

    invoke-interface {v1, v2, p1}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;->updateLayoutProvider(ZZ)Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    sget-object p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;->Companion:Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy$Companion;->getInstance()Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->updateLayoutProvider()V

    goto/16 :goto_4

    :cond_3
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnRotationChanged;

    if-eqz v1, :cond_4

    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnRotationChanged;

    iget p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnRotationChanged;->rotation:I

    iput p0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->rotation:I

    goto/16 :goto_4

    :cond_4
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnDeviceProvisionedChanged;

    if-eqz v1, :cond_5

    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnDeviceProvisionedChanged;

    iget-boolean p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnDeviceProvisionedChanged;->provisioned:Z

    iput-boolean p0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->deviceProvisioned:Z

    goto/16 :goto_4

    :cond_5
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarIconHintChanged;

    if-eqz v1, :cond_6

    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarIconHintChanged;

    iget p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarIconHintChanged;->iconHint:I

    iput p0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->iconHint:I

    goto/16 :goto_4

    :cond_6
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnEdgeBackGestureDisabledByPolicyChanged;

    if-eqz v1, :cond_7

    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnEdgeBackGestureDisabledByPolicyChanged;

    iget-boolean p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnEdgeBackGestureDisabledByPolicyChanged;->disabled:Z

    iput-boolean p0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->gestureDisabledByPolicy:Z

    goto/16 :goto_4

    :cond_7
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateSpayVisibility;

    if-eqz v1, :cond_8

    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateSpayVisibility;

    iget-boolean p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateSpayVisibility;->showing:Z

    iput-boolean p0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->sPayShowing:Z

    goto/16 :goto_4

    :cond_8
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetGestureHintVisibility;

    if-eqz v1, :cond_9

    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetGestureHintVisibility;

    iget-boolean p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetGestureHintVisibility;->recentVisible:Z

    iput-boolean p0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->recentVisible:Z

    iget-boolean p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetGestureHintVisibility;->homeVisible:Z

    iput-boolean p0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->homeVisible:Z

    iget-boolean p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetGestureHintVisibility;->backVisible:Z

    iput-boolean p0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->backVisible:Z

    goto/16 :goto_4

    :cond_9
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnHardKeyIntentPolicyChanged;

    if-eqz v1, :cond_a

    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnHardKeyIntentPolicyChanged;

    iget-boolean p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnHardKeyIntentPolicyChanged;->intentStatus:Z

    iput-boolean p0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->hardKeyIntentPolicy:Z

    goto/16 :goto_4

    :cond_a
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarTransitionModeChanged;

    if-eqz v1, :cond_b

    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarTransitionModeChanged;

    iget p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarTransitionModeChanged;->transitionMode:I

    iput p0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->transitionMode:I

    goto/16 :goto_4

    :cond_b
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRegionSamplingListener;

    if-eqz v1, :cond_c

    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRegionSamplingListener;

    iget-boolean p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRegionSamplingListener;->registered:Z

    iput-boolean p0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->regionSamplingEnabled:Z

    goto/16 :goto_4

    :cond_c
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnLayoutContainerChanged;

    if-eqz v1, :cond_d

    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnLayoutContainerChanged;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnLayoutContainerChanged;->layoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->layoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->updateLayoutProvider()V

    goto/16 :goto_4

    :cond_d
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetDisableFlags;

    if-eqz v1, :cond_e

    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetDisableFlags;

    iget p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetDisableFlags;->disable1:I

    iput p0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->disable1:I

    iget p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetDisableFlags;->disable2:I

    iput p0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->disable2:I

    goto :goto_4

    :cond_e
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnBarLayoutParamsProviderChanged;

    if-eqz v1, :cond_11

    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnBarLayoutParamsProviderChanged;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnBarLayoutParamsProviderChanged;->layoutParamsProvider:Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;

    if-nez p1, :cond_10

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->supportLargeCoverScreenNavBar()Z

    move-result p1

    if-eqz p1, :cond_f

    new-instance p1, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->context:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;-><init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/store/NavBarStateManager;)V

    goto :goto_2

    :cond_f
    new-instance p1, Lcom/android/systemui/navigationbar/layout/NavBarLayoutParams;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->context:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/navigationbar/layout/NavBarLayoutParams;-><init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/store/NavBarStateManager;)V

    :goto_2
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->navBarLayoutParams:Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;

    goto :goto_4

    :cond_10
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->navBarLayoutParams:Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;

    goto :goto_4

    :cond_11
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnCoverRotationChanged;

    if-eqz v1, :cond_12

    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnCoverRotationChanged;

    iget p1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnCoverRotationChanged;->rotation:I

    iput p1, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->rotation:I

    iget-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->layoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->supportLargeCoverScreenNavBar()Z

    move-result p0

    invoke-interface {p1, p0, v2}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;->updateLayoutProvider(ZZ)Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    move-result-object p0

    iput-object p0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    goto :goto_4

    :cond_12
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarStyleChanged;

    if-eqz v1, :cond_13

    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarStyleChanged;

    iget-boolean p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarStyleChanged;->currentUserSetupComplete:Z

    iput-boolean p0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->userSetupCompleteForCurrentUser:Z

    goto :goto_4

    :cond_13
    instance-of p1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateTaskbarAvailable;

    if-eqz p1, :cond_15

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, -0x2

    const-string/jumbo v1, "user_setup_complete"

    invoke-static {p0, v1, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v2, :cond_14

    goto :goto_3

    :cond_14
    move v2, v3

    :goto_3
    iput-boolean v2, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->userSetupCompleteForCurrentUser:Z

    :cond_15
    :goto_4
    return-void
.end method

.method public final updateUseThemeDefault()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getActiveThemePackage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isColorThemeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper;->setNavigationBarUseThemeDefault(I)V

    return-void
.end method
