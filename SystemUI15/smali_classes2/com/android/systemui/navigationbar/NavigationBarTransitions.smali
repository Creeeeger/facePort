.class public final Lcom/android/systemui/navigationbar/NavigationBarTransitions;
.super Lcom/android/systemui/statusbar/phone/BarTransitions;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;


# instance fields
.field public final mAllowAutoDimWallpaperNotVisible:Z

.field public mAutoDim:Z

.field public final mDarkIntensityListeners:Ljava/util/List;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

.field public mLightsOut:Z

.field public mLightsOutDisabled:Z

.field public final mListeners:Ljava/util/List;

.field public mNavBarMode:I

.field public final mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public mNavButtons:Landroid/view/View;

.field public final mView:Lcom/android/systemui/navigationbar/NavigationBarView;

.field public mWallpaperVisible:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarView;Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Factory;Lcom/android/systemui/settings/DisplayTracker;)V
    .locals 2

    const v0, 0x7f080d21

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;-><init>(Landroid/view/View;I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mListeners:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mNavBarMode:I

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightsOutDisabled:Z

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-interface {p2, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Factory;->create(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;)Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iput-object p3, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f05002a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mAllowAutoDimWallpaperNotVisible:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mDarkIntensityListeners:Ljava/util/List;

    sget-boolean p2, Lcom/android/systemui/BasicRune;->NAVBAR_LIGHTBAR:Z

    if-eqz p2, :cond_0

    new-instance p3, Lcom/android/systemui/navigationbar/NavigationBarTransitions$NavigationBarBackgroundDrawable;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1, v0}, Lcom/android/systemui/navigationbar/NavigationBarTransitions$NavigationBarBackgroundDrawable;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    new-instance p3, Lcom/android/systemui/navigationbar/NavigationBarTransitions$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/systemui/navigationbar/NavigationBarTransitions$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/NavigationBarTransitions;)V

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p1, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    if-eqz p1, :cond_1

    const p3, 0x7f0a07b4

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mNavButtons:Landroid/view/View;

    :cond_1
    if-eqz p2, :cond_2

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStore;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    :cond_2
    return-void
.end method


# virtual methods
.method public final applyDarkIntensity(F)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mView:Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    const/4 v4, 0x0

    if-ltz v2, :cond_2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, v5, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mDarkIntensity:Ljava/lang/Float;

    iget-object v6, v5, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_1
    if-ge v4, v6, :cond_1

    iget-object v7, v5, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/android/systemui/navigationbar/buttons/ButtonInterface;

    if-eqz v7, :cond_0

    iget-object v7, v5, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/navigationbar/buttons/ButtonInterface;

    invoke-interface {v7, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonInterface;->setDarkIntensity(F)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    iget-object v0, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    iget-object v0, v0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;

    iget-object v0, v0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;->mRipple:Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/navigationbar/KeyButtonRipple;->setDarkIntensity(F)V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SETUP_WIZARD:Z

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateDarkIntensity;

    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateDarkIntensity;-><init>(F)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mDarkIntensityListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBarTransitions$DarkIntensityListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/navigationbar/NavigationBarTransitions$DarkIntensityListener;->onDarkIntensity(F)V

    goto :goto_2

    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mAutoDim:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->applyLightsOut(ZZ)V

    :cond_6
    return-void
.end method

.method public final applyLightsOut(ZZ)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->isLightsOut(I)Z

    move-result v0

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_LIGHTBAR:Z

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightsOutDisabled:Z

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightsOut:Z

    if-ne v0, p2, :cond_1

    goto :goto_2

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightsOut:Z

    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mNavButtons:Landroid/view/View;

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iget p2, p2, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr p2, v2

    if-eqz v0, :cond_4

    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v2, :cond_3

    const p2, 0x3f333333    # 0.7f

    goto :goto_0

    :cond_3
    const v2, 0x3f19999a    # 0.6f

    add-float/2addr p2, v2

    goto :goto_0

    :cond_4
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mNavButtons:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    const/16 p1, 0xa

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    const/16 p1, 0x5dc

    goto :goto_1

    :cond_7
    const/16 p1, 0xfa

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mNavButtons:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_2
    return-void
.end method

.method public final getTintAnimationDuration()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mNavBarMode:I

    invoke-static {v0, v1, p0}, Lcom/android/systemui/util/Utils;->isGesturalModeOnDefaultDisplay(Landroid/content/Context;Lcom/android/systemui/settings/DisplayTracker;I)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    const/16 v0, 0x190

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/16 p0, 0x6a4

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    const/16 p0, 0x78

    return p0
.end method

.method public final isLightsOut(I)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->isLightsOut(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mAllowAutoDimWallpaperNotVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mAutoDim:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mWallpaperVisible:Z

    if-nez p0, :cond_0

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

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

.method public final onTransition(IIZ)V
    .locals 4

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->applyModeBackground(IZ)V

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->applyLightsOut(ZZ)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda2;

    iget-object p3, p3, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/navigationbar/NavigationBar;

    iget-object v0, p3, Lcom/android/systemui/navigationbar/NavigationBar;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    const/4 v1, 0x4

    if-ne p2, v1, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->stop()V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_LIGHTBAR:Z

    const/4 v2, 0x1

    iget-object v3, p3, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    if-eqz v0, :cond_2

    iget-object v0, v3, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iget-object p3, p3, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast p3, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v3, p3, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget v3, v3, Lcom/android/systemui/navigationbar/model/NavBarStates;->transitionMode:I

    if-eq v3, v1, :cond_0

    const/4 v1, 0x3

    if-eq v3, v1, :cond_0

    const/16 v1, 0x8

    if-ne v3, v1, :cond_1

    invoke-virtual {p3}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isNavigationBarUseThemeDefault()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object p3, p3, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean p3, p3, Lcom/android/systemui/navigationbar/model/NavBarStates;->darkMode:Z

    if-nez p3, :cond_1

    move p3, v2

    goto :goto_1

    :cond_1
    move p3, p1

    :goto_1
    invoke-virtual {v0, p3, v2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    goto :goto_0

    :cond_2
    iget-object p3, v3, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {p3, p1, v2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    goto :goto_0

    :cond_3
    iget-object p3, p3, Lcom/android/systemui/navigationbar/NavigationBar;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final setAutoDim(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mNavBarMode:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/Utils;->isGesturalModeOnDefaultDisplay(Landroid/content/Context;Lcom/android/systemui/settings/DisplayTracker;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mAutoDim:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mAutoDim:Z

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->applyLightsOut(ZZ)V

    return-void
.end method
