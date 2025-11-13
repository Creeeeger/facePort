.class Lcom/android/systemui/classifier/FalsingCollectorImpl$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$3;->this$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$3;->this$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;

    iget-object p3, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mUserInteractor:Ldagger/Lazy;

    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p3}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p3

    if-ne p1, p3, :cond_0

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mJustUnlockedWithFace:Z

    :cond_0
    return-void
.end method
