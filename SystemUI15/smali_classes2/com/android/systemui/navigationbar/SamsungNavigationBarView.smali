.class public final Lcom/android/systemui/navigationbar/SamsungNavigationBarView;
.super Lcom/android/systemui/navigationbar/NavigationBarView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final AMOTION_EVENT_FLAG_BYPASSABLE_WINDOW_TYPE:I

.field public backAltIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

.field public canShowHideKeyboard:Z

.field public currentRemoteView:Landroid/view/View;

.field public final displayId:I

.field public final gestureHintGroup:Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;

.field public imeVisible:Z

.field public final keyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

.field public final marqueeLogic:Lcom/android/systemui/navigationbar/util/MarqueeLogic;

.field public final navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public final navBarTip:Lcom/android/systemui/navigationbar/NavBarTipPopup;

.field public notifyHideKeyboard:Z

.field public final pluginNavigationBar:Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;

.field public final searcleManager:Lcom/android/systemui/searcle/SearcleManager;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/NavigationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->displayId:I

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-virtual {p2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStore;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v0, Lcom/android/systemui/basic/util/LogWrapper;

    sget-object v1, Lcom/android/systemui/basic/util/ModuleType;->NAVBAR:Lcom/android/systemui/basic/util/ModuleType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/basic/util/LogWrapper;-><init>(Lcom/android/systemui/basic/util/ModuleType;Lcom/android/systemui/log/SamsungServiceLogger;)V

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    iput-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    new-instance v1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    sget-object v2, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;->Companion:Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;->INSTANCE:Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;

    invoke-direct {v2}, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;-><init>()V

    sput-object v2, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;->INSTANCE:Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;

    :cond_0
    invoke-direct {v1, v2, p2, p1, v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;-><init>(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;Lcom/android/systemui/navigationbar/store/NavBarStore;Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->keyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    new-instance v2, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;

    new-instance v3, Lcom/android/systemui/navigationbar/plugin/ButtonDispatcherProxy;

    iget-object v4, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/navigationbar/plugin/ButtonDispatcherProxy;-><init>(Landroid/content/Context;Landroid/util/SparseArray;)V

    iget-object v4, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, p2, v3, v4}, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;Lcom/android/systemui/navigationbar/store/NavBarStore;Lcom/android/systemui/navigationbar/plugin/ButtonDispatcherProxy;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->pluginNavigationBar:Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;

    const/high16 p2, 0x20000000

    iput p2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->AMOTION_EVENT_FLAG_BYPASSABLE_WINDOW_TYPE:I

    new-instance p2, Lcom/android/systemui/navigationbar/util/MarqueeLogic;

    invoke-direct {p2}, Lcom/android/systemui/navigationbar/util/MarqueeLogic;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->marqueeLogic:Lcom/android/systemui/navigationbar/util/MarqueeLogic;

    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    new-instance v2, Lcom/android/systemui/navigationbar/NavBarTipPopup;

    invoke-direct {v2, p1, p2, v0}, Lcom/android/systemui/navigationbar/NavBarTipPopup;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/systemui/basic/util/LogWrapper;)V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarTip:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    iput-object v1, p1, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mKeyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    new-instance p1, Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_IME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v1, 0x7f0a0525

    invoke-direct {p1, v1, p2, v0}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;-><init>(ILandroid/content/Context;Lcom/samsung/systemui/splugins/navigationbar/IconType;)V

    new-instance p2, Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_A11Y:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const v3, 0x7f0a0038

    invoke-direct {p2, v3, v0, v2}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;-><init>(ILandroid/content/Context;Lcom/samsung/systemui/splugins/navigationbar/IconType;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    iget-object v2, v2, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    invoke-virtual {v0, p2}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->addButton(Lcom/android/systemui/navigationbar/buttons/ContextualButton;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->addButton(Lcom/android/systemui/navigationbar/buttons/ContextualButton;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->addButton(Lcom/android/systemui/navigationbar/buttons/ContextualButton;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    invoke-virtual {v0, p2}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->addButton(Lcom/android/systemui/navigationbar/buttons/ContextualButton;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    const v2, 0x7f070edf

    iput v2, v0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mSamsungBottomMarginResource:I

    const v2, 0x7f070ee0

    iput v2, v0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mSamsungDiameterResource:I

    const v2, 0x7f080fdc

    iput v2, v0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mSamsungHiddenVisualCueRotateBtnResource:I

    invoke-virtual {v0}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->updateDimensionResources()V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    sget-object v2, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;->Companion:Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy$Companion;->getInstance()Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mBarProxy:Lcom/android/systemui/navigationbar/store/SystemBarProxy;

    const v2, 0x7f080ae6

    iput v2, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mSamsungRotateButtonResId:I

    const v2, 0x7f1402db

    iput v2, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mSamsungIconCWStart0ResId:I

    const v2, 0x7f1402d8

    iput v2, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mSamsungIconCCWStart0ResId:I

    const v2, 0x7f1402dc

    iput v2, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mSamsungIconCWStart90ResId:I

    const v2, 0x7f1402d9

    iput v2, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mSamsungIconCCWStart90ResId:I

    const v2, 0x7f1402da

    iput v2, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mSamsungIconCWStart180ResId:I

    const v2, 0x7f1402d7

    iput v2, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mSamsungIconCCWStart180ResId:I

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {p1, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance p2, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    const v0, 0x7f0a04f4

    invoke-direct {p2, v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance p2, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    const v0, 0x7f0a04f3

    invoke-direct {p2, v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance p2, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    const v0, 0x7f0a04f5

    invoke-direct {p2, v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p1, Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;

    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-direct {p1, p2}, Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;-><init>(Landroid/util/SparseArray;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->gestureHintGroup:Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;

    sget-boolean p1, Lcom/android/systemui/BasicRune;->SEARCLE:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/searcle/SearcleManager;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/searcle/SearcleManager;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->searcleManager:Lcom/android/systemui/searcle/SearcleManager;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    iput-object p0, p1, Lcom/android/systemui/searcle/SearcleManager;->navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object p0, p1, Lcom/android/systemui/searcle/SearcleManager;->tipPopup:Lcom/android/systemui/searcle/SearcleTipPopup;

    iput-object p2, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    :cond_2
    return-void
.end method


# virtual methods
.method public final getBackIconWithAlt(Z)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->backAltIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBackIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    :goto_0
    return-object p0
.end method

.method public final getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->keyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconTheme;

    move-result-object p0

    return-object p0
.end method

.method public final getHintGroup()Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->gestureHintGroup:Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final getHintView()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->gestureHintGroup:Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    sget v0, Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;->hintGroup:Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    return-object p0
.end method

.method public final getPluginBar()Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->pluginNavigationBar:Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;

    return-object p0
.end method

.method public final getSecondaryHomeHandleDrawable(I)Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->keyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_SECONDARY_HOME_HANDLE:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getIconResource(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->buttonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    check-cast p0, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;Lcom/samsung/systemui/splugins/navigationbar/IconResource;I)Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    move-result-object p0

    return-object p0
.end method

.method public final marqueeNavigationBarIcon(II)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->reorient()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->marqueeLogic:Lcom/android/systemui/navigationbar/util/MarqueeLogic;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iget v2, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->horizontalShift:I

    const/16 v3, -0x10

    if-gt v3, v2, :cond_1

    const/16 v3, 0x11

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget v3, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->horizontalMoved:I

    neg-int v3, v3

    iput v3, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->horizontalMoved:I

    :goto_0
    iget v3, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->verticalShift:I

    const/16 v4, -0xa

    if-gt v4, v3, :cond_2

    const/16 v4, 0xb

    if-ge v3, v4, :cond_2

    goto :goto_1

    :cond_2
    iget v4, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->verticalMoved:I

    neg-int v4, v4

    iput v4, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->verticalMoved:I

    :goto_1
    iget v4, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->horizontalMoved:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->horizontalShift:I

    iget v2, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->verticalMoved:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->verticalShift:I

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->scaleFactor:F

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->marqueeLogic:Lcom/android/systemui/navigationbar/util/MarqueeLogic;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->verticalShift:I

    :goto_2
    int-to-float v1, v1

    iget v0, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->scaleFactor:F

    mul-float/2addr v1, v0

    goto :goto_3

    :cond_3
    iget v1, v0, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->horizontalShift:I

    goto :goto_2

    :goto_3
    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->marqueeLogic:Lcom/android/systemui/navigationbar/util/MarqueeLogic;

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    if-eqz v2, :cond_4

    iget v2, v1, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->horizontalShift:I

    :goto_4
    int-to-float v2, v2

    iget v1, v1, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->scaleFactor:F

    mul-float/2addr v2, v1

    goto :goto_5

    :cond_4
    iget v2, v1, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->verticalShift:I

    goto :goto_4

    :goto_5
    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v2, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v2, v2, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean v2, v2, Lcom/android/systemui/navigationbar/model/NavBarStates;->canMove:Z

    iget-object v3, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->marqueeLogic:Lcom/android/systemui/navigationbar/util/MarqueeLogic;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double p1, p1

    const-wide v3, 0x3f96bb98c7e28241L    # 0.0222

    mul-double/2addr p1, v3

    double-to-int p1, p1

    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v3, 0x0

    move v4, v3

    :goto_6
    if-ge v4, p2, :cond_b

    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    if-eqz v2, :cond_9

    iget-object v6, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    iget-object v6, v6, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;

    iget-object v7, v7, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget v6, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    add-int v7, p1, v1

    goto :goto_7

    :cond_6
    move v7, v1

    :goto_7
    if-nez v6, :cond_7

    move v8, p1

    goto :goto_8

    :cond_7
    move v8, v3

    :goto_8
    const/4 v9, 0x3

    if-ne v6, v9, :cond_8

    move v6, p1

    goto :goto_9

    :cond_8
    move v6, v3

    :goto_9
    iget-object v5, v5, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9, v0, v7, v8, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_a

    :cond_9
    iget-object v5, v5, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v0, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_b

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_b
    return-void
.end method

.method public final needTouchableInsetsFrame()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->imeVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->canShowHideKeyboard:Z

    if-nez v1, :cond_3

    :cond_0
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget v1, v1, Lcom/android/systemui/navigationbar/model/NavBarStates;->rotation:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->canShowKeyboardButtonForRotation(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget v1, v1, Lcom/android/systemui/navigationbar/model/NavBarStates;->rotation:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->canShowMultiModalButtonForRotation(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->shouldShowSUWStyle()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->supportLargeCoverScreenNavBar()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarLargeCoverScreenPadding;

    invoke-direct {v2, v0}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarLargeCoverScreenPadding;-><init>(I)V

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplayId()I

    move-result v3

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->gestureHintGroup:Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v1, v0, v5}, Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;->setCurrentRotation(IZ)V

    :cond_2
    invoke-super {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarAttachedToWindow;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarAttachedToWindow;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;Lcom/android/systemui/navigationbar/NavigationBarTransitions;)V

    iget v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->displayId:I

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->updateCurrentView()V

    sget-boolean p1, Lcom/android/systemui/BasicRune;->SEARCLE:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->searcleManager:Lcom/android/systemui/searcle/SearcleManager;

    if-eqz p0, :cond_0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleManager;->tipPopup:Lcom/android/systemui/searcle/SearcleTipPopup;

    iget-boolean p1, p0, Lcom/android/systemui/searcle/SearcleTipPopup;->isTipPopupShowing:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/searcle/SearcleTipPopup;->hideImmediate()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/searcle/SearcleTipPopup;->showSearcleTip(Z)V

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 5

    invoke-super {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarDetachedFromWindow;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarDetachedFromWindow;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->displayId:I

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    const v0, 0x7f0a07c6

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->setButtonDispatchers(Landroid/util/SparseArray;)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateOrientationViews()V

    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onImeVisibilityChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->onImeVisibilityChanged(Z)V

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->imeVisible:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    invoke-static {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->canShowHideKeyboardButtonForRotation$default(Lcom/android/systemui/navigationbar/store/NavBarStateManager;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->canShowHideKeyboard:Z

    :cond_0
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->AMOTION_EVENT_FLAG_BYPASSABLE_WINDOW_TYPE:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/navigationbar/NavigationBarView;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarTip:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p0

    iget p2, p1, Lcom/android/systemui/navigationbar/NavBarTipPopup;->navBarWidth:I

    if-eq p2, p0, :cond_0

    iget-object p2, p1, Lcom/android/systemui/navigationbar/NavBarTipPopup;->tipLayout:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->hide()V

    :cond_0
    iput p0, p1, Lcom/android/systemui/navigationbar/NavBarTipPopup;->navBarWidth:I

    return-void
.end method

.method public final onMeasure(II)V
    .locals 10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v2, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v2, v2, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean v2, v2, Lcom/android/systemui/navigationbar/model/NavBarStates;->canMove:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10502c9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10502c4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v7, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v7}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    if-eqz v2, :cond_2

    const/4 v9, 0x2

    if-ne v2, v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    new-instance v3, Landroid/graphics/Rect;

    sub-int v4, v0, v5

    invoke-direct {v3, v4, v8, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mFrame:Landroid/graphics/Rect;

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-ne v2, v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v8, v8, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mFrame:Landroid/graphics/Rect;

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v7, :cond_3

    move v3, v8

    move v4, v3

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    new-instance v7, Landroid/graphics/Rect;

    sub-int/2addr v6, v5

    sub-int/2addr v0, v4

    invoke-direct {v7, v3, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mFrame:Landroid/graphics/Rect;

    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->onMeasure(II)V

    return-void
.end method

.method public final onScreenStateChanged(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenOn:Z

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_ICON_MOVEMENT:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarIconMarquee;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarIconMarquee;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-interface {p1, p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarTip:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->isTipPopupShowing:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->hide()V

    :cond_1
    return-void
.end method

.method public final orientBackButton(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V
    .locals 0

    return-void
.end method

.method public final orientHomeButton(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V
    .locals 0

    return-void
.end method

.method public final reInflateNavBarLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->createInflaters()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->updateLayoutProviderView()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->updateCurrentView()V

    return-void
.end method

.method public final reorient()V
    .locals 5

    invoke-super {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reorient()V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ICON_MOVEMENT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarIconMarquee;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarIconMarquee;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    :cond_0
    return-void
.end method

.method public final setDefaultIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->keyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "setPreloadedIconSet() null: "

    invoke-static {v1, v0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->preloadedIconSet:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    return-void
.end method

.method public final setIconThemeAlpha(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightsOutDisabled:Z

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mVertical:Landroid/view/View;

    const v1, 0x7f0a07b4

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final showA11ySwipeUpTipPopup()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarTip:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/navigationbar/NavBarTipPopup$showA11ySwipeUpTip$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/navigationbar/NavBarTipPopup$showA11ySwipeUpTip$1;-><init>(Lcom/android/systemui/navigationbar/NavBarTipPopup;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final showPinningEscapeToast()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isRecentsButtonVisible()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->showEscapeToast(ZZ)V

    return-void
.end method

.method public final updateActiveIndicatorSpringParams(FF)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->updateActiveIndicatorSpringParams(FF)V

    return-void
.end method

.method public final updateBackGestureIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->updateBackGestureIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final updateBackPanelColor(IIII)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->updateBackPanelColor(IIII)V

    return-void
.end method

.method public final updateCurrentView()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mVertical:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateCurrentRotation()V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean v1, v1, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportPhoneLayoutProvider:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mVertical:Landroid/view/View;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    :goto_1
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mIsVertical:Z

    if-eq v1, v2, :cond_4

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mIsVertical:Z

    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->updateButtonDispatchersCurrentView()V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateLayoutTransitionsEnabled()V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    if-eqz v0, :cond_5

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0a07b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->currentRemoteView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->updateRemoteViewContainer()V

    :cond_5
    return-void
.end method

.method public final updateDisabledSystemUiStateFlags(Lcom/android/systemui/model/SysUiState;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateDisabledSystemUiStateFlags(Lcom/android/systemui/model/SysUiState;)V

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/32 v1, 0x400000

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    return-void
.end method

.method public final updateGestureHintGroupRotation()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    const/4 v1, 0x0

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isBottomGestureMode(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->gestureHintGroup:Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->canMove:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;->setCurrentRotation(IZ)V

    :cond_1
    return-void
.end method

.method public final updateHintVisibility(ZZZ)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavBarButtonOrderDefault()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    rsub-int/lit8 v2, v0, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->getHintGroup()Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;

    move-result-object v3

    iget-object v4, v3, Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;->hintGroup:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    const/4 v5, 0x4

    if-eqz p2, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    invoke-virtual {v4, v6}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    iget-object v4, v3, Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;->hintGroup:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    if-eqz p1, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    invoke-virtual {v0, v4}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    iget-object v0, v3, Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;->hintGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    if-eqz p3, :cond_3

    move p3, v1

    goto :goto_3

    :cond_3
    move p3, v5

    :goto_3
    invoke-virtual {v0, p3}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_5

    :cond_4
    if-nez p1, :cond_6

    if-eqz p2, :cond_5

    goto :goto_4

    :cond_5
    move v1, v5

    :cond_6
    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method public final updateIcons(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-eq p1, v1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-nez v0, :cond_2

    if-eqz p1, :cond_4

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->keyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v3, :cond_3

    move v2, v3

    :cond_3
    iput-boolean v2, p1, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->isRTL:Z

    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RECENT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBackIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->backAltIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    :cond_4
    return-void
.end method

.method public final updateIconsAndHints()V
    .locals 1

    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->updateNavButtonIcons()V

    return-void
.end method

.method public final updateLayoutProviderView()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->updateLayoutProviderView()V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->updateCurrentView()V

    return-void
.end method

.method public final updateNavButtonIcons()V
    .locals 11

    invoke-super {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationIconHints:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    sget-boolean v5, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON_LARGE_COVER:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getDisplayId()I

    move-result v5

    if-ne v5, v3, :cond_1

    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v5, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->canShowButtonInLargeCoverIme()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    iget-object v6, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v6, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v6}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, v6, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    goto :goto_2

    :cond_2
    move-object v6, v2

    :goto_2
    check-cast v6, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->keyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    sget-object v8, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HANDLE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    iget-object v9, v7, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->context:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getIconResource(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v8

    iget-object v7, v7, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->buttonDrawableProvider:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;

    check-cast v7, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;

    invoke-virtual {v7, v9, v8, v4}, Lcom/android/systemui/navigationbar/NavBarButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;Lcom/samsung/systemui/splugins/navigationbar/IconResource;I)Lcom/android/systemui/navigationbar/gestural/GestureHintDrawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->gestureHintGroup:Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;

    if-nez v6, :cond_4

    move-object v6, v2

    :cond_4
    iget-object v7, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->keyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    iget-object v8, v6, Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;->hintGroup:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    iget-object v9, v9, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    check-cast v9, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;

    if-eqz v9, :cond_5

    iput-object v7, v9, Lcom/android/systemui/navigationbar/gestural/NavigationHintHandle;->iconResourceMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    goto :goto_3

    :cond_6
    iget v7, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    iget-object v8, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v8, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v8, v8, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean v8, v8, Lcom/android/systemui/navigationbar/model/NavBarStates;->canMove:Z

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;->setCurrentRotation(IZ)V

    sget-boolean v6, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getDisplayId()I

    move-result v6

    if-ne v6, v3, :cond_7

    if-eqz v0, :cond_7

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v6, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetGestureHintVisibility;

    invoke-direct {v6, v4, v4, v4}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetGestureHintVisibility;-><init>(ZZZ)V

    iget v7, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->displayId:I

    invoke-interface {v5, p0, v6, v7}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    goto :goto_7

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v6, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetGestureHintVisibility;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getVisibility()I

    move-result v7

    if-nez v7, :cond_8

    move v7, v3

    goto :goto_4

    :cond_8
    move v7, v4

    :goto_4
    iget v8, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    const/high16 v9, 0x200000

    and-int/2addr v9, v8

    if-nez v9, :cond_9

    move v9, v3

    goto :goto_5

    :cond_9
    move v9, v4

    :goto_5
    const/high16 v10, 0x400000

    and-int/2addr v8, v10

    if-nez v8, :cond_a

    move v8, v3

    goto :goto_6

    :cond_a
    move v8, v4

    :goto_6
    invoke-direct {v6, v7, v9, v8}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetGestureHintVisibility;-><init>(ZZZ)V

    iget v7, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->displayId:I

    invoke-interface {v5, p0, v6, v7}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    :goto_7
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    iget-object v6, v5, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iget v6, v6, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    invoke-virtual {v5, v6}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->applyDarkIntensity(F)V

    :cond_b
    if-eqz v0, :cond_d

    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    invoke-static {v5}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->canShowHideKeyboardButtonForRotation$default(Lcom/android/systemui/navigationbar/store/NavBarStateManager;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->canShowHideKeyboard:Z

    if-nez v5, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    :cond_c
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v5, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v6, v5, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget v6, v6, Lcom/android/systemui/navigationbar/model/NavBarStates;->rotation:I

    invoke-virtual {v5, v6}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->canShowKeyboardButtonForRotation(I)Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    const v6, 0x7f0a0525

    invoke-virtual {v5, v6, v4}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->setButtonVisibility(IZ)V

    :cond_d
    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->canShowHideKeyboard:Z

    if-eqz v0, :cond_e

    move v0, v3

    goto :goto_8

    :cond_e
    move v0, v4

    :goto_8
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v5, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-boolean v5, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->notifyHideKeyboard:Z

    if-eq v5, v0, :cond_f

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->notifyHideKeyboard:Z

    :cond_f
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->currentRemoteView:Landroid/view/View;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->updateRemoteViewContainerVisibility()V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v5, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateSysUiStateFlag;

    invoke-direct {v5, v4, v3, v2}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateSysUiStateFlag;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v0, p0, v5}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    :cond_10
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->pluginBarInteractionManager:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_9

    :cond_11
    move v3, v4

    :goto_9
    const v0, 0x7f0a07b6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v2, 0x7f0a07b7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v5, 0x7f0a07b8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f0a07b9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v7, 0x7f0a07ba

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v0, v2, v5, v6, v7}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    if-eqz v2, :cond_12

    if-eqz v3, :cond_13

    move v5, v4

    goto :goto_b

    :cond_13
    move v5, v1

    :goto_b
    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    goto :goto_a

    :cond_14
    return-void
.end method

.method public final updateNavigationBarColor()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v2, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;->getNavigationBarColor()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->context:Landroid/content/Context;

    const v2, 0x7f0601ea

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "getNavigationBarColor"

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->updateOpaqueColor(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper;->setNavigationBarCurrentColor(I)V

    return-void
.end method

.method public final updateOpaqueColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->updateOpaqueColor(I)V

    return-void
.end method

.method public final updateRemoteViewContainer()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->currentRemoteView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v2, 0x7f0a0624

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v4, v0

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->currentRemoteView:Landroid/view/View;

    if-eqz v0, :cond_2

    const v1, 0x7f0a09df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout;

    :cond_2
    move-object v5, v1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    if-eqz v0, :cond_3

    iget v0, v0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    :goto_1
    move v7, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->updateRemoteViewContainerVisibility()V

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    :cond_4
    move v6, v1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->getVisibleContextButton()Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    move v6, v0

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;

    iget v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    iget v8, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->displayId:I

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;-><init>(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFI)V

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    :cond_6
    return-void
.end method

.method public final updateRemoteViewContainerVisibility()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    iget v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->displayId:I

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const-class v2, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->currentRemoteView:Landroid/view/View;

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v5, 0x7f0a0525

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v4, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->showInGestureMode:Z

    if-nez v4, :cond_2

    :goto_0
    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->displayId:I

    iget-boolean v1, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->showInGestureMode:Z

    if-nez v1, :cond_3

    goto :goto_7

    :cond_3
    iget-object v1, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v4

    :goto_3
    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v1, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v1, v1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean v1, v1, Lcom/android/systemui/navigationbar/model/NavBarStates;->canMove:Z

    const/4 v5, 0x1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    if-eqz v1, :cond_5

    move-object v4, v1

    :cond_5
    check-cast v4, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v4, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget p0, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->rotation:I

    if-ne p0, v5, :cond_6

    iget p0, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->adaptivePosition:I

    rsub-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_6
    iget p0, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->adaptivePosition:I

    :goto_4
    iget-object v1, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftContainer:Landroid/widget/LinearLayout;

    if-nez v1, :cond_7

    goto :goto_6

    :cond_7
    if-nez p0, :cond_8

    move v4, v3

    goto :goto_5

    :cond_8
    move v4, v2

    :goto_5
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_6
    iget-object v0, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    if-ne p0, v5, :cond_a

    move v2, v3

    :cond_a
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_b
    :goto_7
    return-void
.end method
