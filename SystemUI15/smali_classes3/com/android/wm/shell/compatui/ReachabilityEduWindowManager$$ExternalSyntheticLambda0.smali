.class public final synthetic Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mOnDismissCallback:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskInfo:Landroid/app/TaskInfo;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskListener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    invoke-interface {v0, v1, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mNextHideTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/ReachabilityEduLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->hideAllImmediately()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
