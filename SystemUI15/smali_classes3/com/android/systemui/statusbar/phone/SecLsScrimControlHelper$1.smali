.class Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLockModeChanged()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_CAPTURED_BLUR:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mIsFingerprintOptionEnabled:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mIsFingerprintOptionEnabled:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->setScrimAlphaForKeyguard(Z)V

    :cond_1
    :goto_0
    return-void
.end method
