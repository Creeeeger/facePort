.class public final Lcom/android/systemui/qs/QSSecurityFooter$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSSecurityFooter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter$1;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter$1;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mShouldUseSettingsButton:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    new-instance p2, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda28;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda28;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
