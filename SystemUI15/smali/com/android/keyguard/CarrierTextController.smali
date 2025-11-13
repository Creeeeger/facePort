.class public final Lcom/android/keyguard/CarrierTextController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$1;

.field public final mCarrierTextManager:Lcom/android/keyguard/CarrierTextManager;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/CarrierTextController$2;

.field public final mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mLastScaleEvent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/CarrierText;Lcom/android/keyguard/CarrierTextManager$Builder;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance p1, Lcom/android/keyguard/CarrierTextController$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/CarrierTextController$1;-><init>(Lcom/android/keyguard/CarrierTextController;)V

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$1;

    new-instance p1, Lcom/android/keyguard/CarrierTextController$2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/CarrierTextController$2;-><init>(Lcom/android/keyguard/CarrierTextController;)V

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mConfigurationListener:Lcom/android/keyguard/CarrierTextController$2;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/CarrierText;

    iget-boolean v0, p1, Lcom/android/keyguard/CarrierText;->mShowAirplaneMode:Z

    iput-boolean v0, p2, Lcom/android/keyguard/CarrierTextManager$Builder;->mShowAirplaneMode:Z

    iget-boolean v0, p1, Lcom/android/keyguard/CarrierText;->mShowMissingSim:Z

    iput-boolean v0, p2, Lcom/android/keyguard/CarrierTextManager$Builder;->mShowMissingSim:Z

    iget-object p1, p1, Lcom/android/keyguard/CarrierText;->mDebugLocation:Ljava/lang/String;

    iput-object p1, p2, Lcom/android/keyguard/CarrierTextManager$Builder;->mDebugLocation:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/keyguard/CarrierTextManager$Builder;->build()Lcom/android/keyguard/CarrierTextManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextManager:Lcom/android/keyguard/CarrierTextManager;

    iput-object p3, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p4, p0, Lcom/android/keyguard/CarrierTextController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p5, p0, Lcom/android/keyguard/CarrierTextController;->mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/keyguard/CarrierTextController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/keyguard/CarrierTextController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/keyguard/CarrierTextController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/keyguard/CarrierTextController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/keyguard/CarrierTextController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/keyguard/CarrierTextController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/keyguard/CarrierTextController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/keyguard/CarrierTextController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/keyguard/CarrierTextController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "CarrierTextController:"

    const-string v1, "    last: "

    invoke-static {p1, v0, v1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController;->mLastScaleEvent:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/CarrierText;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "CarrierText:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    textSize: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/keyguard/CarrierText;->mFontSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguard/CarrierText;->mSetTextSizeCaller:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final onInit()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/util/ViewController;->onInit()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public final onViewAttached()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextManager:Lcom/android/keyguard/CarrierTextManager;

    iget-object v1, v0, Lcom/android/keyguard/CarrierTextManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;

    iget-object v3, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextController$1;

    invoke-direct {v2, v0, v3}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/CarrierTextManager;Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mConfigurationListener:Lcom/android/keyguard/CarrierTextController$2;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mCarrierTextManager:Lcom/android/keyguard/CarrierTextManager;

    iget-object v1, v0, Lcom/android/keyguard/CarrierTextManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/CarrierTextManager;Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController;->mConfigurationListener:Lcom/android/keyguard/CarrierTextController$2;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method
