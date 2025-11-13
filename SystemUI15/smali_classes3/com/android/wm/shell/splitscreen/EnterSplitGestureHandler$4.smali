.class public final Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$4;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$4;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    const-string v0, "enable"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsLockTaskMode:Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$4;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    const-string p1, "lock task mode changed"

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->updateEnableState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
