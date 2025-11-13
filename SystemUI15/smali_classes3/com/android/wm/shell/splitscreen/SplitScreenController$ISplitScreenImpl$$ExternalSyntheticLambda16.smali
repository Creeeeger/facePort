.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/Bundle;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/os/Bundle;

.field public final synthetic f$5:I

.field public final synthetic f$6:F

.field public final synthetic f$7:Landroid/window/RemoteTransition;

.field public final synthetic f$8:Lcom/android/internal/logging/InstanceId;

.field public final synthetic f$9:Lcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda16;->f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    iput p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda16;->f$1:I

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda16;->f$2:Landroid/os/Bundle;

    iput p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda16;->f$3:I

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda16;->f$4:Landroid/os/Bundle;

    iput p6, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda16;->f$5:I

    iput p7, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda16;->f$6:F

    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda16;->f$7:Landroid/window/RemoteTransition;

    iput-object p9, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda16;->f$8:Lcom/android/internal/logging/InstanceId;

    iput-object p10, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda16;->f$9:Lcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda16;->f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    iget v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda16;->f$1:I

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda16;->f$2:Landroid/os/Bundle;

    iget v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda16;->f$3:I

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda16;->f$4:Landroid/os/Bundle;

    iget v9, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda16;->f$5:I

    iget v11, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda16;->f$6:F

    iget-object v14, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda16;->f$7:Landroid/window/RemoteTransition;

    iget-object v15, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda16;->f$8:Lcom/android/internal/logging/InstanceId;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda16;->f$9:Lcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    if-eqz v7, :cond_0

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move/from16 v16, v1

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    :goto_1
    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v10, 0x5

    const/4 v12, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/high16 v13, 0x3f000000    # 0.5f

    move-object/from16 v17, v0

    invoke-virtual/range {v2 .. v17}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;ILandroid/os/Bundle;IIFIFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;ILcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;)V

    return-void
.end method
