.class public final Lcom/android/systemui/navigationbar/NavigationBar$12;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavigationBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar$12;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationModeChanged(I)V
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$12;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v4, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v4, v4, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean v5, v4, Lcom/android/systemui/navigationbar/model/NavBarStates;->canMove:Z

    iget-boolean v6, v4, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportPhoneLayoutProvider:Z

    iget-boolean v4, v4, Lcom/android/systemui/navigationbar/model/NavBarStates;->imeDownButtonForAllRotation:Z

    invoke-direct {v3, v5, v6, v4, p1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;-><init>(ZZZI)V

    iget v4, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    invoke-interface {v2, p0, v3, v4}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    if-nez v2, :cond_2

    if-eqz v3, :cond_2

    iget-object v2, v3, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v2, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mOverrideAlpha:F

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_AOSP_BUG_FIX:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->resetSecondaryHandle()V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandleIntensityListener:Lcom/android/systemui/navigationbar/NavigationBar$4;

    iget-object v1, v3, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mDarkIntensityListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandleGlobalLayoutListener:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda19;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->initSecondaryHomeHandleForRotation()V

    :cond_4
    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$1900(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnShowA11YSwipeUpTipPopup;

    invoke-direct {v1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnShowA11YSwipeUpTipPopup;-><init>()V

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->setNavBarMode(I)V

    iget p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mCurrentRotation:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->repositionNavigationBar(I)V

    iget p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientationHandle:Lcom/android/systemui/navigationbar/gestural/QuickswitchOrientedNavHandle;

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->resetSecondaryHandle()V

    :goto_1
    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$2000(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result p0

    iput-boolean p0, p1, Lcom/android/systemui/navigationbar/NavigationBarView;->mShowSwipeUpUi:Z

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateStates()V

    return-void
.end method
