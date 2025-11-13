.class public final Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$MultimodalTask$onTaskStackChanged$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$MultimodalTask;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$MultimodalTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$MultimodalTask$onTaskStackChanged$1;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$MultimodalTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$MultimodalTask$onTaskStackChanged$1;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$MultimodalTask;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$MultimodalTask;->callback:Ljava/util/function/Consumer;

    if-eqz p0, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
