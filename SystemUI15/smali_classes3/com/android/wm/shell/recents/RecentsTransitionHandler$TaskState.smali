.class public final Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mIsTranslucent:Z

.field public final mLeash:Landroid/view/SurfaceControl;

.field public final mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final mTaskSurface:Landroid/view/SurfaceControl;

.field public final mToken:Landroid/window/WindowContainerToken;


# direct methods
.method public constructor <init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mIsTranslucent:Z

    iput-object p2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mLeash:Landroid/view/SurfaceControl;

    return-void
.end method

.method public static indexOf(Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;)I
    .locals 3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
