.class public final Lcom/android/wm/shell/pip2/phone/PipController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/TaskStackListenerCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip2/phone/PipController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip2/phone/PipController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipController$2;->this$0:Lcom/android/wm/shell/pip2/phone/PipController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipController$2;->this$0:Lcom/android/wm/shell/pip2/phone/PipController;

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipController;->mPipScheduler:Lcom/android/wm/shell/pip2/phone/PipScheduler;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PipScheduler;->scheduleExitPipViaExpand()V

    return-void
.end method
