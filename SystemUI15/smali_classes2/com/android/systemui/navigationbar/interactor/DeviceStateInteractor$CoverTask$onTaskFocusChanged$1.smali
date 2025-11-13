.class public final Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask$onTaskFocusChanged$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $taskId:I

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

.field public final synthetic this$1:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;


# direct methods
.method public constructor <init>(ILcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask$onTaskFocusChanged$1;->$taskId:I

    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask$onTaskFocusChanged$1;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    iput-object p3, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask$onTaskFocusChanged$1;->this$1:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    iget v1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask$onTaskFocusChanged$1;->$taskId:I

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask$onTaskFocusChanged$1;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask$onTaskFocusChanged$1;->this$1:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;

    iget v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-boolean v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isCoverLauncherWidgetTask:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->coverTaskCache:Z

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;->callback:Ljava/util/function/Consumer;

    if-eqz p0, :cond_3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
