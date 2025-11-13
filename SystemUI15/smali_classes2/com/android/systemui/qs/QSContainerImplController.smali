.class public final Lcom/android/systemui/qs/QSContainerImplController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/systemui/qs/QSContainerImplController$1;

.field public final mContainerTouchHandler:Lcom/android/systemui/qs/QSContainerImplController$2;

.field public final mDetailController:Lcom/android/systemui/qs/SecQSDetailController;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

.field public final mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

.field public final mQuickStatusBarHeaderController:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSContainerImpl;Lcom/android/systemui/qs/SecQSPanelController;Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/qs/SecQSDetailController;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance v0, Lcom/android/systemui/qs/QSContainerImplController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSContainerImplController$1;-><init>(Lcom/android/systemui/qs/QSContainerImplController;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mConfigurationListener:Lcom/android/systemui/qs/QSContainerImplController$1;

    new-instance v0, Lcom/android/systemui/qs/QSContainerImplController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSContainerImplController$2;-><init>(Lcom/android/systemui/qs/QSContainerImplController;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mContainerTouchHandler:Lcom/android/systemui/qs/QSContainerImplController$2;

    iput-object p2, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    iput-object p3, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQuickStatusBarHeaderController:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    iput-object p4, p0, Lcom/android/systemui/qs/QSContainerImplController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p5, p0, Lcom/android/systemui/qs/QSContainerImplController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/systemui/qs/QSContainerImpl;

    iget-object p2, p2, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    iput-object p2, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    sget p2, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iput-object p6, p1, Lcom/android/systemui/qs/QSContainerImpl;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    iput-object p7, p0, Lcom/android/systemui/qs/QSContainerImplController;->mDetailController:Lcom/android/systemui/qs/SecQSDetailController;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/systemui/qs/QSContainerImplController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final getView()Lcom/android/systemui/qs/QSContainerImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSContainerImpl;

    return-object p0
.end method

.method public final onInit()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQuickStatusBarHeaderController:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSContainerImpl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSceneContainerEnabled:Z

    return-void
.end method

.method public final onViewAttached()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSContainerImpl;

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQuickStatusBarHeaderController:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/QSContainerImpl;->updateResources(Lcom/android/systemui/qs/SecQSPanelController;Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImplController;->mConfigurationListener:Lcom/android/systemui/qs/QSContainerImplController$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImplController;->mContainerTouchHandler:Lcom/android/systemui/qs/QSContainerImplController$2;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSContainerImpl;

    const v1, 0x7f0a0434

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mDetailController:Lcom/android/systemui/qs/SecQSDetailController;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQSDetailController;->scrollView:Landroid/view/View;

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImplController;->mConfigurationListener:Lcom/android/systemui/qs/QSContainerImplController$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method
