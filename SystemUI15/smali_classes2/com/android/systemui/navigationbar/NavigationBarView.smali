.class public Lcom/android/systemui/navigationbar/NavigationBarView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

.field public mBackIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

.field public mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

.field public mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mButtonDispatchers:Landroid/util/SparseArray;

.field public final mConfiguration:Landroid/content/res/Configuration;

.field public final mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

.field public mCurrentRotation:I

.field public mCurrentView:Landroid/view/View;

.field public final mDarkIconColor:I

.field public final mDeadZone:Lcom/android/systemui/navigationbar/buttons/DeadZone;

.field public mDisabledFlags:I

.field public mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public mDockedIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

.field public mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

.field public final mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

.field public mHomeDefaultIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

.field public mHorizontal:Landroid/view/View;

.field public final mImeCanRenderGesturalNavButtons:Z

.field public mImeDrawsImeNavBar:Z

.field public mInCarMode:Z

.field public mIsVertical:Z

.field public mLayoutTransitionsEnabled:Z

.field public final mLightContext:Landroid/content/Context;

.field public final mLightIconColor:I

.field public mNavBarMode:I

.field public mNavigationIconHints:I

.field public mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

.field public mOnVerticalChangedListener:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda2;

.field public mOverviewProxyEnabled:Z

.field public mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

.field public final mPipListener:Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;

.field public final mQuickStepAccessibilityDelegate:Lcom/android/systemui/navigationbar/NavigationBarView$1;

.field public mRecentIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

.field public mRecentsOptional:Ljava/util/Optional;

.field public final mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

.field public final mRotationButtonListener:Lcom/android/systemui/navigationbar/NavigationBarView$2;

.field public mScreenOn:Z

.field public mScreenPinningActive:Z

.field public final mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

.field public mShowSwipeUpUi:Z

.field public final mTmpLastConfiguration:Landroid/content/res/Configuration;

.field public mTouchHandler:Lcom/android/systemui/Gefingerpoken;

.field public final mTransitionListener:Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;

.field public mUpdateActiveTouchRegionsCallback:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda2;

.field public mVertical:Landroid/view/View;

.field public mWakeAndUnlocking:Z

.field public final navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    iput v2, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationIconHints:I

    new-instance v3, Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;

    invoke-direct {v3, v0, v2}, Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;I)V

    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTransitionListener:Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLayoutTransitionsEnabled:Z

    iput-boolean v2, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mInCarMode:Z

    iput-boolean v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenOn:Z

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentsOptional:Ljava/util/Optional;

    iput-boolean v2, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenPinningActive:Z

    invoke-static {}, Landroid/inputmethodservice/InputMethodService;->canImeRenderGesturalNavButtons()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mImeCanRenderGesturalNavButtons:Z

    new-instance v4, Lcom/android/systemui/navigationbar/NavigationBarView$1;

    invoke-direct {v4, v0}, Lcom/android/systemui/navigationbar/NavigationBarView$1;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mQuickStepAccessibilityDelegate:Lcom/android/systemui/navigationbar/NavigationBarView$1;

    new-instance v4, Lcom/android/systemui/navigationbar/NavigationBarView$2;

    invoke-direct {v4, v0}, Lcom/android/systemui/navigationbar/NavigationBarView$2;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonListener:Lcom/android/systemui/navigationbar/NavigationBarView$2;

    new-instance v4, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mPipListener:Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    const v5, 0x7f0401bd

    invoke-static {v5, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(ILandroid/content/Context;)I

    move-result v5

    invoke-direct {v4, v1, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v7, Landroid/view/ContextThemeWrapper;

    const v5, 0x7f0403e1

    invoke-static {v5, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(ILandroid/content/Context;)I

    move-result v5

    invoke-direct {v7, v1, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v7, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    const v5, 0x7f040621

    invoke-static {v7, v5, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v8

    iput v8, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightIconColor:I

    invoke-static {v4, v5, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v9

    iput v9, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDarkIconColor:I

    iput-boolean v2, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    new-instance v2, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    const v4, 0x7f0a06fd

    invoke-direct {v2, v4}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;-><init>(I)V

    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    new-instance v5, Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    const v15, 0x7f0a0525

    const v6, 0x7f080967

    invoke-direct {v5, v15, v7, v6}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;-><init>(ILandroid/content/Context;I)V

    new-instance v14, Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    const v13, 0x7f0a0038

    const v6, 0x7f080b21

    invoke-direct {v14, v13, v7, v6}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;-><init>(ILandroid/content/Context;I)V

    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->addButton(Lcom/android/systemui/navigationbar/buttons/ContextualButton;)V

    invoke-virtual {v2, v14}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->addButton(Lcom/android/systemui/navigationbar/buttons/ContextualButton;)V

    new-instance v6, Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    iget-object v10, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v24, 0x7f0703e8

    const v25, 0x7f0703e6

    const v18, 0x7f130127

    const v19, 0x7f0d0327

    const v20, 0x7f0a09f1

    const v21, 0x7f0703e7

    const v22, 0x7f070ed4

    const v23, 0x7f0703e9

    const v26, 0x7f07047b

    const v27, 0x7f05006a

    move-object/from16 v16, v6

    move-object/from16 v17, v10

    invoke-direct/range {v16 .. v27}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;-><init>(Landroid/content/Context;IIIIIIIIII)V

    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    new-instance v12, Lcom/android/systemui/shared/rotation/RotationButtonController;

    new-instance v11, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda1;

    invoke-direct {v11, v0}, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    const v16, 0x7f080b34

    const v17, 0x7f080b35

    const v10, 0x7f080b32

    const v18, 0x7f080b33

    move-object v6, v12

    move-object/from16 v19, v11

    move/from16 v11, v18

    move-object v4, v12

    move/from16 v12, v16

    move/from16 v13, v17

    move-object/from16 v28, v14

    move-object/from16 v14, v19

    invoke-direct/range {v6 .. v14}, Lcom/android/systemui/shared/rotation/RotationButtonController;-><init>(Landroid/content/Context;IIIIIILjava/util/function/Supplier;)V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    new-instance v6, Landroid/content/res/Configuration;

    invoke-direct {v6}, Landroid/content/res/Configuration;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    new-instance v1, Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    iget-object v4, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/systemui/navigationbar/ScreenPinningNotify;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    new-instance v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    const v4, 0x7f0a013a

    invoke-direct {v1, v4}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    const v4, 0x7f0a04f8

    invoke-direct {v1, v4}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    const v4, 0x7f0a04fb

    invoke-direct {v1, v4}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    const v4, 0x7f0a09a6

    invoke-direct {v1, v4}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v3, v15, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v1, v28

    const v4, 0x7f0a0038

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x7f0a06fd

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/systemui/navigationbar/buttons/DeadZone;

    invoke-direct {v1, v0}, Lcom/android/systemui/navigationbar/buttons/DeadZone;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDeadZone:Lcom/android/systemui/navigationbar/buttons/DeadZone;

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStore;

    iget-object v2, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    :cond_0
    return-void
.end method

.method public static dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "      "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p1, "null"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getVisibility()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " alpha="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getAlpha()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public static visibilityToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const-string p0, "VISIBLE"

    return-object p0

    :cond_0
    const-string p0, "GONE"

    return-object p0

    :cond_1
    const-string p0, "INVISIBLE"

    return-object p0
.end method


# virtual methods
.method public final abortCurrentGesture()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/navigationbar/buttons/ButtonInterface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/navigationbar/buttons/ButtonInterface;

    invoke-interface {v2}, Lcom/android/systemui/navigationbar/buttons/ButtonInterface;->abortCurrentGesture()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getAccessibilityButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v0, 0x7f0a0038

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    return-object p0
.end method

.method public final getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v0, 0x7f0a013a

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    return-object p0
.end method

.method public getBackIconWithAlt(Z)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBackIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    return-object p0
.end method

.method public getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDrawable(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightIconColor:I

    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDarkIconColor:I

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, p1, v2}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->create(Landroid/content/Context;IIIZ)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getHintGroup()Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHintView()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v0, 0x7f0a04f8

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    return-object p0
.end method

.method public final getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v0, 0x7f0a04fb

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    return-object p0
.end method

.method public getPluginBar()Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v0, 0x7f0a09a6

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    return-object p0
.end method

.method public getSecondaryHomeHandleDrawable(I)Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isImeRenderingNavButtons()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mImeDrawsImeNavBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mImeCanRenderGesturalNavButtons:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isOverviewEnabled()Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    const/high16 v0, 0x1000000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecentsButtonDisabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isOverviewEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_0

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

.method public final isRecentsButtonVisible()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public marqueeNavigationBarIcon(II)V
    .locals 0

    return-void
.end method

.method public needTouchableInsetsFrame()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final notifyActiveTouchRegions()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mUpdateActiveTouchRegionsCallback:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda2;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/navigationbar/NavigationBar;->getButtonLocations(ZZ)Landroid/graphics/Region;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iput-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mActiveNavBarRegion:Landroid/graphics/Region;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz p0, :cond_0

    :try_start_0
    check-cast p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->onActiveNavBarRegionChanges(Landroid/graphics/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "OverviewProxyService"

    const-string v1, "Failed to call onActiveNavBarRegionChanges()"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    if-eq v2, v3, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    invoke-virtual {p0, v0, v2, v1, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    iput v0, v2, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLeftInset:I

    iput v1, v2, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mRightInset:I

    iget-object v2, v2, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    if-eqz v2, :cond_2

    invoke-interface {v2, v0, v1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->setInsets(II)V

    :cond_2
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :cond_4
    :goto_0
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reorient()V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mListenersRegistered:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.type.pc"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mListenersRegistered:Z

    iget-object v1, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/shared/rotation/RotationButtonController;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object v1, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->INSTANCE:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    iget-object v2, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mTaskStackListener:Lcom/android/systemui/shared/rotation/RotationButtonController$TaskStackListenerImpl;

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    sget-boolean v1, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mBarProxy:Lcom/android/systemui/navigationbar/store/SystemBarProxy;

    iget-object v0, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationLockCallback:Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda3;

    check-cast v1, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v1, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;->rotationLockCallback:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    sget-object p0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit16 v1, p1, 0x1000

    if-nez v1, :cond_0

    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->updateDimensionResources()V

    iget-boolean v1, v0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mIsShowing:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->adjustViewPositionAndCreateLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, v0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mKeyButtonContainer:Landroid/view/ViewGroup;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    iget-object p1, v0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mContext:Landroid/content/Context;

    iget v1, v0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mContentDescriptionResource:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, v0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz p1, :cond_4

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0xf

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mInCarMode:Z

    if-eq p1, v0, :cond_4

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mInCarMode:Z

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateRecentsIcon()V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateCurrentRotation()V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-eq p1, v0, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    :cond_6
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    invoke-virtual {v1}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->hide()V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    iget-boolean v1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mListenersRegistered:Z

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mListenersRegistered:Z

    iget-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->INSTANCE:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    iget-object v1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mTaskStackListener:Lcom/android/systemui/shared/rotation/RotationButtonController$TaskStackListenerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    sget-boolean v0, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mBarProxy:Lcom/android/systemui/navigationbar/store/SystemBarProxy;

    iget-object p0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationLockCallback:Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda3;

    check-cast v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;->rotationLockCallback:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDeadZone:Lcom/android/systemui/navigationbar/buttons/DeadZone;

    iget-boolean v1, v0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mUseDeadZone:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mShouldFlash:Z

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mFlashFrac:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/navigationbar/buttons/DeadZone;->getSize(J)F

    move-result v1

    float-to-int v1, v1

    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mVertical:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mDisplayRotation:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p1, v3, v3, v2, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :goto_0
    iget v0, v0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mFlashFrac:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0xaa

    const/16 v2, 0xdd

    const/16 v3, 0xee

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a07c6

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->setButtonDispatchers(Landroid/util/SparseArray;)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateOrientationViews()V

    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onImeVisibilityChanged(Z)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTransitionListener:Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;->this$0:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;->mBackTransitioning:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;->mHomeAppearing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;->this$0:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;->this$0:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setAlpha(FZ)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-wide v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;->mStartDelay:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-wide v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTouchHandler:Lcom/android/systemui/Gefingerpoken;

    invoke-interface {v0, p1}, Lcom/android/systemui/Gefingerpoken;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->notifyActiveTouchRegions()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_2

    if-le v1, v0, :cond_2

    sget-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    sget-object v5, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->INSTANCE:Lcom/android/systemui/navigationbar/util/NavigationModeUtil;

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v4}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v3

    :goto_1
    iget-boolean v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    if-eq v4, v5, :cond_3

    iput-boolean v4, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reorient()V

    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda2;

    if-eqz v5, :cond_3

    iget-object v5, v5, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/navigationbar/NavigationBar;

    iget-object v6, v5, Lcom/android/systemui/navigationbar/NavigationBar;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Optional;

    invoke-virtual {v6}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_3

    xor-int/2addr v2, v4

    iget-object v4, v5, Lcom/android/systemui/navigationbar/NavigationBar;->mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    invoke-interface {v4, v2}, Lcom/android/systemui/shade/ShadeViewController;->setQsScrimEnabled(Z)V

    :cond_3
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_LIGHTBAR:Z

    if-nez v2, :cond_6

    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v2}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10502cb

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10502c9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10502c4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    new-instance v6, Landroid/graphics/Rect;

    sub-int/2addr v4, v2

    invoke-direct {v6, v3, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, v5, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mFrame:Landroid/graphics/Rect;

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mFrame:Landroid/graphics/Rect;

    :cond_6
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onScreenStateChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenOn:Z

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTouchHandler:Lcom/android/systemui/Gefingerpoken;

    invoke-interface {v0, p1}, Lcom/android/systemui/Gefingerpoken;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public orientBackButton(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V
    .locals 6

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationIconHints:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    const/4 v4, 0x0

    if-eqz v0, :cond_3

    if-eqz v3, :cond_2

    const/16 v3, 0x5a

    goto :goto_2

    :cond_2
    const/16 v3, -0x5a

    :goto_2
    int-to-float v3, v3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    iget-object v5, p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->mState:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable$ShadowDrawableState;

    iget v5, v5, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    cmpl-float v5, v5, v3

    if-nez v5, :cond_4

    return-void

    :cond_4
    iget v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v5}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p1, v3}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->setRotation(F)V

    return-void

    :cond_5
    iget-boolean v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mShowSwipeUpUi:Z

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    if-nez v5, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070aba

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    neg-float v4, p0

    :cond_6
    const/4 p0, 0x2

    new-array p0, p0, [Landroid/animation/PropertyValuesHolder;

    sget-object v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->KEY_DRAWABLE_ROTATE:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable$1;

    new-array v5, v1, [F

    aput v3, v5, v2

    invoke-static {v0, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, p0, v2

    sget-object v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->KEY_DRAWABLE_TRANSLATE_Y:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable$2;

    new-array v3, v1, [F

    aput v4, v3, v2

    invoke-static {v0, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, p0, v1

    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public orientHomeButton(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    if-eqz p0, :cond_0

    const/high16 p0, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->setRotation(F)V

    return-void
.end method

.method public reInflateNavBarLayout()V
    .locals 0

    return-void
.end method

.method public reorient()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateCurrentView()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarFrame;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDeadZone:Lcom/android/systemui/navigationbar/buttons/DeadZone;

    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarFrame;->mDeadZone:Lcom/android/systemui/navigationbar/buttons/DeadZone;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->applyModeBackground(IZ)V

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->applyLightsOut(ZZ)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutDirectionResolved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->resolveLayoutDirection()Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    iput-boolean p0, v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mVertical:Z

    iget-object p0, v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_0
    if-ge v2, p0, :cond_2

    iget-object v1, v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v3, v1, Lcom/android/systemui/navigationbar/buttons/ButtonInterface;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/android/systemui/navigationbar/buttons/ButtonInterface;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final setAccessibilityButtonState(ZZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setLongClickable(Z)V

    sget-boolean p2, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON_LARGE_COVER:Z

    const v0, 0x7f0a0038

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getDisplayId()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->setButtonVisibility(IZ)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->setButtonVisibility(IZ)V

    :goto_0
    return-void
.end method

.method public setDefaultIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V
    .locals 0

    return-void
.end method

.method public final setDisabledFlags(ILcom/android/systemui/model/SysUiState;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isOverviewEnabled()Z

    move-result v0

    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isOverviewEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateSlippery()V

    invoke-virtual {p0, p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateDisabledSystemUiStateFlags(Lcom/android/systemui/model/SysUiState;)V

    return-void
.end method

.method public setIconThemeAlpha(F)V
    .locals 0

    return-void
.end method

.method public final setLayoutDirection(I)V
    .locals 1

    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    return-void
.end method

.method public final setSlippery(Z)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_4

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000000

    and-int v4, v2, v3

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-ne p1, v4, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    or-int p1, v2, v3

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    :cond_3
    const p1, -0x20000001

    and-int/2addr p1, v2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/view/WindowManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public showA11ySwipeUpTipPopup()V
    .locals 0

    return-void
.end method

.method public showPinningEscapeToast()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isRecentsButtonVisible()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->showEscapeToast(ZZ)V

    return-void
.end method

.method public updateActiveIndicatorSpringParams(FF)V
    .locals 0

    return-void
.end method

.method public updateBackGestureIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public updateBackPanelColor(IIII)V
    .locals 0

    return-void
.end method

.method public final updateCurrentRotation()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-boolean v0, v1, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mAlternativeOrder:Z

    if-eq v2, v0, :cond_2

    iput-boolean v2, v1, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mAlternativeOrder:Z

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->updateAlternativeOrder()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDeadZone:Lcom/android/systemui/navigationbar/buttons/DeadZone;

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/DeadZone;->onConfigurationChanged(I)V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateGestureHintGroupRotation()V

    :cond_3
    return-void
.end method

.method public updateCurrentView()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mVertical:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mVertical:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mIsVertical:Z

    if-eq v1, v2, :cond_1

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mIsVertical:Z

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->updateButtonDispatchersCurrentView()V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateLayoutTransitionsEnabled()V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateCurrentRotation()V

    return-void
.end method

.method public updateDisabledSystemUiStateFlags(Lcom/android/systemui/model/SysUiState;)V
    .locals 6

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-wide/16 v4, 0x80

    invoke-virtual {p1, v4, v5, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    const/high16 v4, 0x200000

    and-int/2addr v1, v4

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-wide/16 v4, 0x100

    invoke-virtual {p1, v4, v5, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    const/high16 v1, 0x2000000

    and-int/2addr p0, v1

    if-eqz p0, :cond_2

    move v2, v3

    :cond_2
    const-wide/16 v3, 0x400

    invoke-virtual {p1, v3, v4, v2}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    return-void
.end method

.method public updateGestureHintGroupRotation()V
    .locals 0

    return-void
.end method

.method public updateHintVisibility(ZZZ)V
    .locals 0

    return-void
.end method

.method public updateIcons(Landroid/content/res/Configuration;)V
    .locals 11

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_0

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-nez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-eq p1, v2, :cond_2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_5

    :cond_3
    const p1, 0x7f080b27

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getDrawable(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDockedIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mShowSwipeUpUi:Z

    if-eqz p1, :cond_4

    const p1, 0x7f080b2c

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getDrawable(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p1

    goto :goto_3

    :cond_4
    const p1, 0x7f080b2a

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getDrawable(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p1

    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->orientHomeButton(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    :cond_5
    if-nez v1, :cond_6

    if-eqz v4, :cond_a

    :cond_6
    const p1, 0x7f080b2f

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getDrawable(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightIconColor:I

    iget v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDarkIconColor:I

    iget-object p1, p1, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;

    iget-object v6, v6, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v7, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    iget-object v8, v6, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    iget v9, v6, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mIconResId:I

    if-eqz v7, :cond_7

    if-nez v8, :cond_7

    if-nez v9, :cond_7

    goto :goto_4

    :cond_7
    iget-object v10, v6, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mImageDrawable:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    if-eqz v7, :cond_8

    if-eqz v8, :cond_8

    iget-object v7, v6, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    iget-object v7, v7, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mKeyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    invoke-virtual {v7, v8}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object v7

    goto :goto_5

    :cond_8
    iget-object v7, v6, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mLightContext:Landroid/content/Context;

    invoke-static {v7, v2, v5, v9, v3}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->create(Landroid/content/Context;IIIZ)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object v7

    :goto_5
    if-eqz v10, :cond_9

    iget-object v8, v10, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->mState:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable$ShadowDrawableState;

    iget v8, v8, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable$ShadowDrawableState;->mDarkIntensity:F

    invoke-virtual {v7, v8}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->setDarkIntensity(F)V

    :cond_9
    invoke-virtual {v6, v7}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    goto :goto_4

    :cond_a
    if-nez v0, :cond_b

    if-nez v1, :cond_b

    if-eqz v4, :cond_c

    :cond_b
    const p1, 0x7f080b22

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getDrawable(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->orientBackButton(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBackIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    :cond_c
    return-void
.end method

.method public updateIconsAndHints()V
    .locals 0

    return-void
.end method

.method public updateLayoutProviderView()V
    .locals 0

    return-void
.end method

.method public final updateLayoutTransitionsEnabled()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mWakeAndUnlocking:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLayoutTransitionsEnabled:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v3, 0x7f0a07b4

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p0, v4}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    invoke-virtual {p0, v3}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    invoke-virtual {p0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    invoke-virtual {p0, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v4}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    invoke-virtual {p0, v3}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    invoke-virtual {p0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    invoke-virtual {p0, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateNavButtonIcons()V
    .locals 14

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationIconHints:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackIconWithAlt(Z)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBackIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/NavigationBarView;->orientBackButton(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/NavigationBarView;->orientHomeButton(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateRecentsIcon()V

    iget v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationIconHints:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isImeRenderingNavButtons()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v1

    :goto_3
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    xor-int/lit8 v6, v3, 0x1

    const v7, 0x7f0a0525

    invoke-virtual {v5, v7, v6}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->setButtonVisibility(IZ)V

    sget-boolean v5, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v6, 0x7f0a07bb

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    if-eqz v5, :cond_5

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    move v3, v4

    :goto_4
    invoke-virtual {v5, v3}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    iget-object v5, v3, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iget v5, v5, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    invoke-virtual {v3, v5}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->applyDarkIntensity(F)V

    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    const/high16 v5, 0x200000

    if-eqz v3, :cond_6

    iget v6, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    sget-object v7, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->INSTANCE:Lcom/android/systemui/navigationbar/util/NavigationModeUtil;

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    goto :goto_5

    :cond_6
    iget v6, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v6}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v6

    if-nez v6, :cond_9

    :cond_7
    iget v6, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    and-int/2addr v6, v5

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    move v6, v2

    goto :goto_6

    :cond_9
    :goto_5
    move v6, v1

    :goto_6
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isRecentsButtonDisabled()Z

    move-result v7

    if-eqz v7, :cond_a

    iget v8, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    and-int/2addr v5, v8

    if-eqz v5, :cond_a

    move v5, v1

    goto :goto_7

    :cond_a
    move v5, v2

    :goto_7
    sget-boolean v8, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON_LARGE_COVER:Z

    if-eqz v8, :cond_b

    iget-object v8, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getDisplayId()I

    move-result v8

    if-ne v8, v1, :cond_b

    iget-object v8, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v8, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v8}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->canShowButtonInLargeCoverIme()Z

    move-result v8

    if-eqz v8, :cond_b

    or-int/2addr v6, v0

    or-int/2addr v5, v0

    :cond_b
    iget-object v8, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {v8}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isHandlingGestures()Z

    move-result v8

    sget-boolean v9, Lcom/android/systemui/BasicRune;->NAVBAR_POLICY_VISIBILITY:Z

    if-eqz v9, :cond_c

    sget-object v9, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v10, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    invoke-virtual {v9, v10}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    check-cast v9, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;

    iget-object v9, v9, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {v9}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isHandlingGestures()Z

    move-result v9

    or-int/2addr v8, v9

    :cond_c
    const/high16 v9, 0x400000

    if-nez v0, :cond_e

    if-eqz v8, :cond_d

    sget-boolean v10, Lcom/android/systemui/BasicRune;->NAVBAR_AOSP_BUG_FIX:Z

    if-eqz v10, :cond_d

    iget v10, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v10}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v10

    if-nez v10, :cond_f

    :cond_d
    iget v10, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    and-int/2addr v10, v9

    if-nez v10, :cond_f

    if-eqz v3, :cond_e

    iget v10, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v10}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->isBottomGesture(I)Z

    move-result v10

    if-nez v10, :cond_f

    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isImeRenderingNavButtons()Z

    move-result v10

    if-eqz v10, :cond_10

    :cond_f
    move v10, v1

    goto :goto_8

    :cond_10
    move v10, v2

    :goto_8
    sget-boolean v11, Lcom/android/systemui/BasicRune;->NAVBAR_ADDITIONAL_LOG:Z

    if-eqz v11, :cond_12

    const-string v11, "disableBack="

    const-string v12, " (useAltBack="

    const-string v13, ", handlingGestures="

    invoke-static {v11, v12, v13, v10, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", disabledFlagBack="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_11

    move v8, v1

    goto :goto_9

    :cond_11
    move v8, v2

    :goto_9
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isBottomGesture="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v8}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->isBottomGesture(I)Z

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isImeRenderingNavButtons="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isImeRenderingNavButtons()Z

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "NavBarView"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    if-nez v3, :cond_15

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mOverviewProxyEnabled:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    sget-boolean v3, Lcom/android/systemui/shared/system/QuickStepContract;->SYSUI_FORCE_SET_BACK_GESTURE_BY_SPLUGIN:Z

    if-nez v0, :cond_13

    move v3, v1

    goto :goto_a

    :cond_13
    move v3, v2

    :goto_a
    xor-int/2addr v1, v3

    or-int/2addr v7, v1

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenPinningActive:Z

    if-eqz v1, :cond_15

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-nez v0, :cond_15

    move v6, v2

    move v10, v6

    goto :goto_b

    :cond_14
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenPinningActive:Z

    if-eqz v0, :cond_15

    move v7, v2

    move v10, v7

    :cond_15
    :goto_b
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0a07b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->getTransitionListeners()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTransitionListener:Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mTransitionListener:Lcom/android/systemui/navigationbar/NavigationBarView$NavTransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    :cond_16
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    if-eqz v10, :cond_17

    move v1, v4

    goto :goto_c

    :cond_17
    move v1, v2

    :goto_c
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    if-eqz v6, :cond_18

    move v1, v4

    goto :goto_d

    :cond_18
    move v1, v2

    :goto_d
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    if-eqz v7, :cond_19

    move v1, v4

    goto :goto_e

    :cond_19
    move v1, v2

    :goto_e
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    if-eqz v5, :cond_1a

    move v2, v4

    :cond_1a
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->notifyActiveTouchRegions()V

    return-void
.end method

.method public updateNavigationBarColor()V
    .locals 0

    return-void
.end method

.method public updateOpaqueColor(I)V
    .locals 0

    return-void
.end method

.method public final updateOrientationViews()V
    .locals 1

    const v0, 0x7f0a04fd

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    const v0, 0x7f0a0e08

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mVertical:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateCurrentView()V

    return-void
.end method

.method public final updateRecentsIcon()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDockedIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->setRotation(F)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->applyDarkIntensity(F)V

    return-void
.end method

.method public updateRemoteViewContainer()V
    .locals 0

    return-void
.end method

.method public final updateRotationButton()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonListener:Lcom/android/systemui/navigationbar/NavigationBarView$2;

    sget-boolean v2, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    if-eqz v2, :cond_0

    if-eq v2, v1, :cond_0

    iget-boolean v3, v2, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mIsShowing:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->hide()V

    :cond_0
    iput-object v1, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    iput-object v0, v1, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    iget v2, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mLightIconColor:I

    iget v3, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mDarkIconColor:I

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->updateIcon(II)V

    iget-object v1, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    new-instance v2, Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/shared/rotation/RotationButtonController;)V

    iget-object v1, v1, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    new-instance v2, Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0}, Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/shared/rotation/RotationButtonController;)V

    iget-object v1, v1, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v0, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    iput-object p0, v0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mUpdatesCallback:Lcom/android/systemui/navigationbar/NavigationBarView$2;

    return-void
.end method

.method public final updateSlippery()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mShowSwipeUpUi:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isOverviewEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;->isFullyExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    invoke-interface {v0}, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->setSlippery(Z)V

    return-void
.end method

.method public final updateStates()V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mCurrentLayout:Ljava/lang/String;

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->clearViews()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateSlippery()V

    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mShowSwipeUpUi:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mQuickStepAccessibilityDelegate:Lcom/android/systemui/navigationbar/NavigationBarView$1;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    iput-object p0, v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v3, v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
