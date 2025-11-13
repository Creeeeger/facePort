.class Lcom/android/keyguard/StrongAuthPopup$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/StrongAuthPopup;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/StrongAuthPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/StrongAuthPopup$1;->this$0:Lcom/android/keyguard/StrongAuthPopup;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardBouncerFullyShowingChanged(Z)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/keyguard/StrongAuthPopup$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/StrongAuthPopup$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
