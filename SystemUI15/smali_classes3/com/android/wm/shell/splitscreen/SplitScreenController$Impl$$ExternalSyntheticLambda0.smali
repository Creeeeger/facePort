.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl;ZI)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl$$ExternalSyntheticLambda0;->f$1:Z

    iput p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1;IZ)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl$$ExternalSyntheticLambda0;->f$2:I

    iput-boolean p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1;

    iget v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl$$ExternalSyntheticLambda0;->f$2:I

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->mExecutors:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    invoke-interface {v0, p0}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onSplitVisibilityChanged(Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl;

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl$$ExternalSyntheticLambda0;->f$1:Z

    iget p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl$$ExternalSyntheticLambda0;->f$2:I

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$Impl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iget v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mFocusedTaskPosition:I

    if-eq v1, p0, :cond_2

    iput p0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mFocusedTaskPosition:I

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
