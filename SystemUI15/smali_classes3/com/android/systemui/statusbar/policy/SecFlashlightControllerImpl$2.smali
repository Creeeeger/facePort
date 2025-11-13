.class public final Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mIsEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->updateFlashlightNotification(Z)V

    :cond_0
    return-void
.end method
