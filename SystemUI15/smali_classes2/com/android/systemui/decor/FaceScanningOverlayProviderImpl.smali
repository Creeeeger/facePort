.class public final Lcom/android/systemui/decor/FaceScanningOverlayProviderImpl;
.super Lcom/android/systemui/decor/BoundDecorProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final alignedBound:I

.field public final authController:Lcom/android/systemui/biometrics/AuthController;

.field public final facePropertyRepository:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final logger:Lcom/android/systemui/log/ScreenDecorationsLogger;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final viewId:I


# direct methods
.method public constructor <init>(ILcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/util/concurrent/Executor;Lcom/android/systemui/log/ScreenDecorationsLogger;Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/decor/BoundDecorProvider;-><init>()V

    iput p1, p0, Lcom/android/systemui/decor/FaceScanningOverlayProviderImpl;->alignedBound:I

    iput-object p2, p0, Lcom/android/systemui/decor/FaceScanningOverlayProviderImpl;->authController:Lcom/android/systemui/biometrics/AuthController;

    iput-object p3, p0, Lcom/android/systemui/decor/FaceScanningOverlayProviderImpl;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p4, p0, Lcom/android/systemui/decor/FaceScanningOverlayProviderImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p5, p0, Lcom/android/systemui/decor/FaceScanningOverlayProviderImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/android/systemui/decor/FaceScanningOverlayProviderImpl;->logger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    iput-object p7, p0, Lcom/android/systemui/decor/FaceScanningOverlayProviderImpl;->facePropertyRepository:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;

    const p1, 0x7f0a0438

    iput p1, p0, Lcom/android/systemui/decor/FaceScanningOverlayProviderImpl;->viewId:I

    return-void
.end method


# virtual methods
.method public final getAlignedBound()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/decor/FaceScanningOverlayProviderImpl;->alignedBound:I

    return p0
.end method

.method public final getViewId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/decor/FaceScanningOverlayProviderImpl;->viewId:I

    return p0
.end method

.method public final inflateView(Landroid/content/Context;Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 9

    new-instance v8, Lcom/android/systemui/FaceScanningOverlay;

    iget-object v5, p0, Lcom/android/systemui/decor/FaceScanningOverlayProviderImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lcom/android/systemui/decor/FaceScanningOverlayProviderImpl;->logger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    iget-object v7, p0, Lcom/android/systemui/decor/FaceScanningOverlayProviderImpl;->authController:Lcom/android/systemui/biometrics/AuthController;

    iget v2, p0, Lcom/android/systemui/decor/FaceScanningOverlayProviderImpl;->alignedBound:I

    iget-object v3, p0, Lcom/android/systemui/decor/FaceScanningOverlayProviderImpl;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v4, p0, Lcom/android/systemui/decor/FaceScanningOverlayProviderImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/FaceScanningOverlay;-><init>(Landroid/content/Context;ILcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/util/concurrent/Executor;Lcom/android/systemui/log/ScreenDecorationsLogger;Lcom/android/systemui/biometrics/AuthController;)V

    iget p1, p0, Lcom/android/systemui/decor/FaceScanningOverlayProviderImpl;->viewId:I

    invoke-virtual {v8, p1}, Landroid/view/View;->setId(I)V

    invoke-virtual {v8, p4}, Lcom/android/systemui/FaceScanningOverlay;->setColor$1(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p4, -0x1

    invoke-direct {p1, p4, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/decor/FaceScanningOverlayProviderImpl;->updateLayoutParams(Landroid/widget/FrameLayout$LayoutParams;I)V

    invoke-virtual {p2, v8, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v8
.end method

.method public final onReloadResAndMeasure(Landroid/view/View;IIILjava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/decor/FaceScanningOverlayProviderImpl;->updateLayoutParams(Landroid/widget/FrameLayout$LayoutParams;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    instance-of p0, p1, Lcom/android/systemui/FaceScanningOverlay;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/android/systemui/FaceScanningOverlay;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p4}, Lcom/android/systemui/FaceScanningOverlay;->setColor$1(I)V

    invoke-virtual {p1, p5}, Lcom/android/systemui/DisplayCutoutBaseView;->updateConfiguration(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final updateLayoutParams(Landroid/widget/FrameLayout$LayoutParams;I)V
    .locals 4

    const/4 v0, -0x1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/decor/FaceScanningOverlayProviderImpl;->facePropertyRepository:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;

    check-cast v1, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;

    iget-object v2, v1, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->sensorLocation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/android/systemui/decor/FaceScanningOverlayProviderImpl;->logger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    invoke-virtual {p0, v2}, Lcom/android/systemui/log/ScreenDecorationsLogger;->faceSensorLocation(Landroid/graphics/Point;)V

    iget-object p0, v1, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->sensorLocation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz p0, :cond_2

    iget p0, p0, Landroid/graphics/Point;->y:I

    mul-int/2addr p0, v3

    if-eqz p2, :cond_1

    if-eq p2, v2, :cond_0

    if-eq p2, v3, :cond_1

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_2
    :goto_0
    if-eqz p2, :cond_6

    if-eq p2, v2, :cond_5

    if-eq p2, v3, :cond_4

    if-eq p2, v1, :cond_3

    goto :goto_1

    :cond_3
    const v0, 0x800005

    goto :goto_1

    :cond_4
    const v0, 0x800055

    goto :goto_1

    :cond_5
    const v0, 0x800003

    goto :goto_1

    :cond_6
    const v0, 0x800033

    :goto_1
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-void
.end method
