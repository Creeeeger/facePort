.class Lcom/android/keyguard/DualDarInnerLockScreenController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/DualDarInnerLockScreenController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$1;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDualDARInnerLockscreenRequirementChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$1;->this$0:Lcom/android/keyguard/DualDarInnerLockScreenController;

    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDarInnerAuthRequired(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/keyguard/DualDarInnerLockScreenController;->-$$Nest$mdismissInnerLockScreen(Lcom/android/keyguard/DualDarInnerLockScreenController;I)V

    :cond_0
    return-void
.end method
