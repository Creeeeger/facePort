.class public final Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;
.super Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final accessibilityDelegate:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$accessibilityDelegate$1;

.field public final barOrderInteractor:Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;

.field public cloneBarRunnable:Ljava/lang/Runnable;

.field public final coloredBGHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

.field public final customizerWindowHelper:Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;

.field public doShowingInRotation:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

.field public final editResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

.field public mCurrentOrientation:I

.field public panelHost:Lcom/android/systemui/qs/QSPanelHost;

.field public final popupButtonController:Lcom/android/systemui/qs/customize/QSCPopupButtonController;

.field public final primeContainer:Landroid/widget/FrameLayout;

.field public final resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final subContainer:Landroid/widget/FrameLayout;

.field public transitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

.field public final viewControllerRepo$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/view/QSCMainView;Landroid/content/Context;Lcom/android/systemui/qs/customize/SecQSSettingEditResources;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;Lcom/android/systemui/qs/customize/QSCPopupButtonController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/qs/bar/ColoredBGHelper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;-><init>(Landroid/view/View;)V

    iput-object p3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->editResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

    iput-object p4, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object p5, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->barOrderInteractor:Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;

    iput-object p6, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->popupButtonController:Lcom/android/systemui/qs/customize/QSCPopupButtonController;

    iput-object p7, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p8, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->coloredBGHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    const-string p1, "QSCutomizerMainViewCon"

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->TAG:Ljava/lang/String;

    sget-object p1, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$viewControllerRepo$2;->INSTANCE:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$viewControllerRepo$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->viewControllerRepo$delegate:Lkotlin/Lazy;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/customize/view/QSCMainView;

    const p3, 0x7f0a091a

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->primeContainer:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/customize/view/QSCMainView;

    const p3, 0x7f0a0c31

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->subContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->mCurrentOrientation:I

    new-instance p1, Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;

    invoke-direct {p1, p2}, Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->customizerWindowHelper:Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;

    new-instance p1, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$accessibilityDelegate$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$accessibilityDelegate$1;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->accessibilityDelegate:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$accessibilityDelegate$1;

    return-void
.end method


# virtual methods
.method public final backKeyEvent()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->getViewControllerRepo()Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->prevType:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    sget-object v1, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;->None:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    if-eq v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->getViewControllerRepo()Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->currentType:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->getCurrentViewController()Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->close()V

    :cond_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->message:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->getViewControllerRepo()Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;

    move-result-object v4

    iget-object v5, v4, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->prevType:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    if-ne v5, v1, :cond_2

    :goto_1
    move-object v1, v3

    goto :goto_2

    :cond_2
    if-ne v5, v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, v4, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->viewControllers:[Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v1, v1, v4

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->resolveMessage(Ljava/lang/Integer;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->getCurrentViewController()Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->view:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->subContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->getViewControllerRepo()Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->prevType:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->showViewWithFixRotation(Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->getViewControllerRepo()Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->viewControllers:[Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aput-object v3, p0, v0

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->close()V

    :goto_3
    return-void
.end method

.method public final close()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->isShown:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->prepareForShowing(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->transitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->showQsPanelForCustomizer(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->TAG:Ljava/lang/String;

    const-string v3, "close()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->close()V

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mQsEditMode:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->getCurrentViewController()Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->close()V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->popupButtonController:Lcom/android/systemui/qs/customize/QSCPopupButtonController;

    iget-object v1, v1, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->qsBlurPopUpMenu:Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->primeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->subContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->getViewControllerRepo()Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->viewControllers:[Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;

    array-length v3, v1

    :goto_1
    if-ge v0, v3, :cond_4

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->editResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

    iput-object v2, v0, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->tileFullAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    iput-object v2, v0, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->tileTopAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->customizerWindowHelper:Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;

    iget-object v1, v0, Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;->windowRootView:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v3, v0, Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v3, :cond_5

    invoke-interface {v3, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_5
    iput-object v2, v0, Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;->windowRootView:Landroid/view/View;

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/view/QSCMainView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->cloneBarRunnable:Ljava/lang/Runnable;

    const-string p0, "QPP101"

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    return-void
.end method

.method public final getCurrentViewController()Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->getViewControllerRepo()Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;

    move-result-object p0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->currentType:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    sget-object v1, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;->None:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->viewControllers:[Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object v2, p0, v0

    :goto_0
    return-object v2
.end method

.method public final getViewControllerRepo()Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->viewControllerRepo$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;

    return-object p0
.end method

.method public final initResources()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/view/QSCMainView;

    const v1, 0x7f0a07c4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->editResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    xor-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070ac2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/view/QSCMainView;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    move-result v1

    const v4, 0x7f0a0681

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/view/QSCMainView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object v1, v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getDateButtonContainerTopMargin(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_1
    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/view/QSCMainView;

    new-instance v1, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$onViewAttached$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$onViewAttached$1;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;)V

    iput-object v1, v0, Lcom/android/systemui/qs/customize/view/QSCMainView;->configChangedCallback:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/customize/view/QSCMainView;

    sget-object v0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$onViewAttached$2;->INSTANCE:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$onViewAttached$2;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->customizerWindowHelper:Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;

    iget-object v1, v0, Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;->windowRootView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, v0, Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v3, :cond_0

    invoke-interface {v3, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    iput-object v2, v0, Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;->windowRootView:Landroid/view/View;

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/customize/view/QSCMainView;

    iput-object v2, p0, Lcom/android/systemui/qs/customize/view/QSCMainView;->configChangedCallback:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    return-void
.end method

.method public final prepareForShowing(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->transitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    iget-boolean v0, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mExpandSettingsPanel:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->isThereNoView()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mAnimatorsInitialiezed:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->setCustomizerShowing(Z)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->setCustomizerShowing(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final setPosition(F)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/view/QSCMainView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    const v1, 0x3e99999a    # 0.3f

    iput v1, v0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    cmpg-float p1, p1, v2

    const/4 v0, 0x4

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/customize/view/QSCMainView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->popupButtonController:Lcom/android/systemui/qs/customize/QSCPopupButtonController;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCPopupButtonController;->qsBlurPopUpMenu:Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final show(Ljava/lang/Runnable;)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->isShown:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-super {v0, v1}, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->show(Ljava/lang/Runnable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->mCurrentOrientation:I

    iput-object v1, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->doShowingInRotation:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->cloneBarRunnable:Ljava/lang/Runnable;

    iget-object v2, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->transitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->showQsPanelForCustomizer(Z)V

    iget-object v2, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->subContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->getViewControllerRepo()Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;->None:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    iput-object v3, v2, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->prevType:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->getViewControllerRepo()Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;

    move-result-object v2

    iget-object v4, v2, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->MAIN_TYPE:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    if-ne v3, v4, :cond_2

    move-object v4, v3

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;->Setting:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    if-ne v3, v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, v2, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->currentType:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    :goto_1
    iput-object v4, v2, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->prevType:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    iput-object v3, v2, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->currentType:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    iget-object v2, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "show()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->customizerWindowHelper:Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;

    iget-object v3, v2, Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;->windowRootView:Landroid/view/View;

    if-nez v3, :cond_4

    iget-object v3, v2, Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;->sysUIContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d02e4

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;->windowRootView:Landroid/view/View;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;->WINDOW_PREFIX:I

    add-int/lit16 v6, v3, 0x7f8

    const/16 v7, 0x208

    const/4 v8, -0x2

    const/4 v4, -0x2

    const/4 v5, -0x2

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget-object v3, v2, Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;->WINDOW_TITLE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v3, -0x1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v3, v2, Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v3, :cond_4

    iget-object v2, v2, Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;->windowRootView:Landroid/view/View;

    invoke-interface {v3, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    iget-object v2, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->editResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

    iget-object v5, v2, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->context:Landroid/content/Context;

    iget-object v9, v2, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->mainExecutor:Ljava/util/concurrent/Executor;

    iget-object v10, v2, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->bgExecutor:Ljava/util/concurrent/Executor;

    iget-object v8, v2, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v6, v2, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->tileHost:Lcom/android/systemui/qs/QSTileHost;

    const/4 v7, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;ZLcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    iput-object v1, v2, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->tileFullAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    iget-object v12, v2, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->context:Landroid/content/Context;

    iget-object v3, v2, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->mainExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, v2, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->bgExecutor:Ljava/util/concurrent/Executor;

    iget-object v15, v2, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v13, v2, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->tileHost:Lcom/android/systemui/qs/QSTileHost;

    const/4 v14, 0x1

    move-object v11, v1

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    invoke-direct/range {v11 .. v17}, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;ZLcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    iput-object v1, v2, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->tileTopAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    iget-object v1, v2, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->tileFullAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->updateTiles()V

    :cond_5
    iget-object v1, v2, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->tileTopAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->updateTiles()V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->initResources()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->getViewControllerRepo()Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->MAIN_TYPE:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->showViewWithFixRotation(Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;)V

    sget-object v1, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;->Companion:Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator$Companion;

    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v2, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;->mainView:Landroid/view/View;

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    const v2, 0x3f6e147b    # 0.93f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_7

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_7

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_7

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-object v1, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator$Companion$startShowView$1;->INSTANCE:Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator$Companion$startShowView$1;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_7
    const-string v0, "QPS103"

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    return-void
.end method

.method public final showView(Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->doShowingInRotation:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->getViewControllerRepo()Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->MAIN_TYPE:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    if-eqz v2, :cond_2

    iget-object v5, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->primeContainer:Landroid/widget/FrameLayout;

    goto :goto_1

    :cond_2
    iget-object v5, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->subContainer:Landroid/widget/FrameLayout;

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v6

    if-lez v6, :cond_3

    move v6, v3

    goto :goto_2

    :cond_3
    move v6, v4

    :goto_2
    if-eqz v2, :cond_4

    iget-object v7, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->subContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "setCurrentType: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->TAG:Ljava/lang/String;

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->getViewControllerRepo()Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;

    move-result-object v7

    iget-object v9, v7, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->MAIN_TYPE:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    if-ne v1, v9, :cond_5

    sget-object v9, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;->None:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    goto :goto_3

    :cond_5
    sget-object v10, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;->Setting:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    if-ne v1, v10, :cond_6

    goto :goto_3

    :cond_6
    iget-object v9, v7, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->currentType:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    :goto_3
    iput-object v9, v7, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->prevType:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    iput-object v1, v7, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->currentType:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->getCurrentViewController()Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;

    move-result-object v1

    const/4 v7, 0x0

    iget-object v9, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->editResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

    if-nez v1, :cond_c

    const-string v1, "createCurrentViewController()"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->getViewControllerRepo()Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->currentType:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    sget-object v8, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v8, v1

    if-eq v1, v3, :cond_b

    const/4 v8, 0x2

    if-eq v1, v8, :cond_8

    const/4 v8, 0x3

    if-eq v1, v8, :cond_7

    move-object v1, v7

    goto :goto_5

    :cond_7
    new-instance v1, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v11

    new-instance v15, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$createCurrentViewController$controller$4;

    invoke-direct {v15, v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$createCurrentViewController$controller$4;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;)V

    new-instance v8, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$createCurrentViewController$controller$5;

    invoke-direct {v8, v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$createCurrentViewController$controller$5;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;)V

    iget-object v12, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->editResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

    iget-object v13, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->popupButtonController:Lcom/android/systemui/qs/customize/QSCPopupButtonController;

    iget-object v14, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->accessibilityDelegate:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$accessibilityDelegate$1;

    move-object v10, v1

    move-object/from16 v16, v8

    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/qs/customize/viewcontroller/QSSettingViewController;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/SecQSSettingEditResources;Lcom/android/systemui/qs/customize/QSCPopupButtonController;Landroidx/core/view/AccessibilityDelegateCompat;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_8
    iget-object v1, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->cloneBarRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v11

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->panelHost:Lcom/android/systemui/qs/QSPanelHost;

    if-eqz v1, :cond_a

    goto :goto_4

    :cond_a
    move-object v1, v7

    :goto_4
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanelHost;->getBarItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v1, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$createCurrentViewController$controller$2;

    invoke-direct {v1, v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$createCurrentViewController$controller$2;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;)V

    new-instance v8, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$createCurrentViewController$controller$3;

    invoke-direct {v8, v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$createCurrentViewController$controller$3;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;)V

    new-instance v18, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;

    iget-object v12, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->barOrderInteractor:Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;

    iget-object v13, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->coloredBGHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    iget-object v15, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->editResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

    move-object/from16 v10, v18

    move-object/from16 v16, v1

    move-object/from16 v17, v8

    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;Lcom/android/systemui/qs/bar/ColoredBGHelper;Ljava/util/ArrayList;Lcom/android/systemui/qs/customize/SecQSSettingEditResources;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    move-object/from16 v1, v18

    goto :goto_5

    :cond_b
    new-instance v1, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8, v9}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/SecQSSettingEditResources;)V

    :goto_5
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->getViewControllerRepo()Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;

    move-result-object v8

    iget-object v10, v8, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->currentType:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    iget-object v8, v8, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->viewControllers:[Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput-object v1, v8, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->getCurrentViewController()Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;

    move-result-object v1

    const/16 v8, 0x8

    if-eqz v1, :cond_13

    if-nez v6, :cond_d

    iget-object v6, v1, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_d

    iget-object v6, v1, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->view:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v5, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$showView$1$1;

    invoke-direct {v5, v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$showView$1$1;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;)V

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->show(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_d
    iget-object v1, v1, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->view:Landroid/view/View;

    if-nez v1, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->getViewControllerRepo()Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->prevType:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->getViewControllerRepo()Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->MAIN_TYPE:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    if-eq v1, v5, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->getViewControllerRepo()Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;

    move-result-object v1

    iget-object v5, v1, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->prevType:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    sget-object v6, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;->None:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    if-ne v5, v6, :cond_f

    :goto_7
    move-object v1, v7

    goto :goto_8

    :cond_f
    if-ne v5, v6, :cond_10

    goto :goto_7

    :cond_10
    iget-object v1, v1, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->viewControllers:[Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v1, v1, v5

    :goto_8
    if-eqz v1, :cond_11

    iget-object v1, v1, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->view:Landroid/view/View;

    goto :goto_9

    :cond_11
    move-object v1, v7

    :goto_9
    if-nez v1, :cond_12

    goto :goto_a

    :cond_12
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    :goto_a
    iget-object v1, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->primeContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_14

    move v5, v4

    goto :goto_b

    :cond_14
    move v5, v8

    :goto_b
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->subContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_15

    goto :goto_c

    :cond_15
    move v8, v4

    :goto_c
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->getViewControllerRepo()Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->currentType:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    sget-object v2, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;->TileEdit:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    if-ne v1, v2, :cond_16

    move v1, v3

    goto :goto_d

    :cond_16
    move v1, v4

    :goto_d
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    xor-int/2addr v2, v3

    if-eqz v2, :cond_17

    if-eqz v1, :cond_17

    goto :goto_e

    :cond_17
    move v3, v4

    :goto_e
    if-eqz v3, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f0605a4

    invoke-virtual {v1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto :goto_f

    :cond_18
    move v1, v4

    :goto_f
    iget-object v5, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v5, Lcom/android/systemui/qs/customize/view/QSCMainView;

    const v6, 0x7f0a07c4

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v5, v8}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v5, Lcom/android/systemui/qs/customize/view/QSCMainView;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setBackgroundColor(I)V

    if-nez v2, :cond_19

    goto :goto_10

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_reduce_transparency"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_10

    :cond_1a
    new-instance v1, Landroid/view/SemBlurInfo$Builder;

    invoke-direct {v1, v4}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/view/SemBlurInfo$Builder;->setColorCurvePreset(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/view/QSCMainView;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v3, :cond_1b

    move-object v7, v1

    :cond_1b
    invoke-virtual {v0, v7}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    :goto_10
    return-void
.end method

.method public final showViewWithFixRotation(Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->getViewControllerRepo()Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerRepository;->currentType:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    :cond_1
    move v4, v2

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v1, :cond_3

    if-eq v4, v3, :cond_3

    sget-boolean v4, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_DEFAULT:Z

    if-nez v4, :cond_1

    :cond_3
    move v4, v1

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->customizerWindowHelper:Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;

    iget-object v6, v5, Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;->windowRootView:Landroid/view/View;

    if-eqz v6, :cond_8

    if-eqz v4, :cond_4

    move v7, v1

    goto :goto_1

    :cond_4
    const/4 v7, -0x1

    :goto_1
    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_DEFAULT:Z

    if-nez v0, :cond_7

    iget-object v0, v5, Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;->sysUIContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_6

    iget-object v0, v5, Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;->sysUIContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    const/16 v1, 0x8

    goto :goto_2

    :cond_5
    move v1, v2

    :cond_6
    :goto_2
    move v7, v1

    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v5, Lcom/android/systemui/qs/customize/QSCustomizerWindowHelper;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_8

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-eq v2, v7, :cond_8

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-interface {v1, v6, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    iget v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->mCurrentOrientation:I

    if-ne v0, v3, :cond_9

    if-eqz v4, :cond_9

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->doShowingInRotation:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    :cond_9
    sget-object v0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;->Setting:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    if-ne p1, v0, :cond_a

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QPPE1011"

    const-string v2, "QUICK_PANEL_BUTTON"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunstoneEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->showView(Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;)V

    return-void
.end method
