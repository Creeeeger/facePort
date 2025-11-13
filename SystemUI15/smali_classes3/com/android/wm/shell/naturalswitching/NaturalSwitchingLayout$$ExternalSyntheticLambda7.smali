.class public final synthetic Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

.field public final synthetic f$1:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda7;->f$1:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda7;->f$1:Landroid/view/SurfaceControl$Transaction;

    check-cast p1, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mIsPipNaturalSwitching:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHideTasks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method
