.class public final Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$broadcastReceiver$1;->this$0:Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$broadcastReceiver$1;->this$0:Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->ACTION_LOCK_TASK_MODE:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$broadcastReceiver$1;->this$0:Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;

    const-string v0, "enable"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->isInLockTaskMode:Z

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$broadcastReceiver$1;->this$0:Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->isInLockTaskMode:Z

    const-string p1, "isInLockTaskMode="

    const-string p2, "CornerGestureHandler"

    invoke-static {p1, p2, p0}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
