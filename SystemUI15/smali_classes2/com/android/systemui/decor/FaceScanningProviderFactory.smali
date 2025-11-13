.class public final Lcom/android/systemui/decor/FaceScanningProviderFactory;
.super Lcom/android/systemui/decor/DecorProviderFactory;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final authController:Lcom/android/systemui/biometrics/AuthController;

.field public final context:Landroid/content/Context;

.field public final display:Landroid/view/Display;

.field public final displayInfo:Landroid/view/DisplayInfo;

.field public final facePropertyRepository:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final logger:Lcom/android/systemui/log/ScreenDecorationsLogger;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthController;Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/util/concurrent/Executor;Lcom/android/systemui/log/ScreenDecorationsLogger;Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/decor/DecorProviderFactory;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/decor/FaceScanningProviderFactory;->authController:Lcom/android/systemui/biometrics/AuthController;

    iput-object p2, p0, Lcom/android/systemui/decor/FaceScanningProviderFactory;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/decor/FaceScanningProviderFactory;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p4, p0, Lcom/android/systemui/decor/FaceScanningProviderFactory;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p5, p0, Lcom/android/systemui/decor/FaceScanningProviderFactory;->mainExecutor:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/android/systemui/decor/FaceScanningProviderFactory;->logger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    iput-object p7, p0, Lcom/android/systemui/decor/FaceScanningProviderFactory;->facePropertyRepository:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;

    invoke-virtual {p2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/decor/FaceScanningProviderFactory;->display:Landroid/view/Display;

    new-instance p1, Landroid/view/DisplayInfo;

    invoke-direct {p1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/decor/FaceScanningProviderFactory;->displayInfo:Landroid/view/DisplayInfo;

    return-void
.end method


# virtual methods
.method public final getHasProviders()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/decor/FaceScanningProviderFactory;->facePropertyRepository:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;

    check-cast v0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->sensorLocation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/decor/FaceScanningProviderFactory;->display:Landroid/view/Display;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/decor/FaceScanningProviderFactory;->displayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    goto :goto_0

    :cond_1
    const-string v0, "FaceScanningProvider"

    const-string v1, "display is null, can\'t update displayInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/decor/FaceScanningProviderFactory;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/decor/FaceScanningProviderFactory;->displayInfo:Landroid/view/DisplayInfo;

    iget-object p0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/view/DisplayCutout;->getFillBuiltInDisplayCutout(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final getProviders()Ljava/util/List;
    .locals 12

    invoke-virtual {p0}, Lcom/android/systemui/decor/FaceScanningProviderFactory;->getHasProviders()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/decor/FaceScanningProviderFactory;->displayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/systemui/decor/FaceScanningProviderFactoryKt;->getBoundBaseOnCurrentRotation(Landroid/view/DisplayCutout;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    new-instance v11, Lcom/android/systemui/decor/FaceScanningOverlayProviderImpl;

    iget-object v3, p0, Lcom/android/systemui/decor/FaceScanningProviderFactory;->displayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    invoke-static {v2, v3}, Lcom/android/systemui/decor/FaceScanningProviderFactoryKt;->baseOnRotation0(II)I

    move-result v4

    iget-object v8, p0, Lcom/android/systemui/decor/FaceScanningProviderFactory;->mainExecutor:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lcom/android/systemui/decor/FaceScanningProviderFactory;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v7, p0, Lcom/android/systemui/decor/FaceScanningProviderFactory;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/systemui/decor/FaceScanningProviderFactory;->authController:Lcom/android/systemui/biometrics/AuthController;

    iget-object v9, p0, Lcom/android/systemui/decor/FaceScanningProviderFactory;->logger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    iget-object v10, p0, Lcom/android/systemui/decor/FaceScanningProviderFactory;->facePropertyRepository:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/decor/FaceScanningOverlayProviderImpl;-><init>(ILcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/util/concurrent/Executor;Lcom/android/systemui/log/ScreenDecorationsLogger;Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
