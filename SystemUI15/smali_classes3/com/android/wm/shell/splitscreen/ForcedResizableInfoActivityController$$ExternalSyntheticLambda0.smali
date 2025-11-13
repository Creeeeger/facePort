.class public final synthetic Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mTimeoutRunnable:Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$$ExternalSyntheticLambda0;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mPendingTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mPendingTasks:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v4

    iget v5, v2, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;->mTaskId:I

    invoke-virtual {v4, v5}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    invoke-virtual {v4, v1, v1}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    iget v2, v2, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;->mReason:I

    const-string v5, "extra_forced_resizeable_reason"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v5, 0x3

    const/high16 v6, 0x40000

    if-ne v2, v5, :cond_0

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    :cond_0
    const/4 v5, 0x4

    if-ne v2, v5, :cond_1

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mPendingTasks:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method
