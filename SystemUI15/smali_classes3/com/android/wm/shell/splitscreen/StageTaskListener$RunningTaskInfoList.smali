.class public final Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;
.super Landroid/util/SparseArray;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mClosingTaskIds:Landroid/util/ArraySet;

.field public final mInfos:Ljava/util/ArrayList;

.field public final mTaskIds:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageTaskListener;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/splitscreen/StageTaskListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->this$0:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mInfos:Ljava/util/ArrayList;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mClosingTaskIds:Landroid/util/ArraySet;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;-><init>(Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    return-void
.end method


# virtual methods
.method public final contains(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mInfos:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method

.method public final keyAt(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final put(ILjava/lang/Object;)V
    .locals 2

    check-cast p2, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-boolean v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->isTopTaskInStage:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final remove(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_STACKING:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mClosingTaskIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mClosingTaskIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "removeToClosingTaskIds: #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->this$0:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StageTaskListener"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final valueAt(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method
