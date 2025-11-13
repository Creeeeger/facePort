.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$start$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$start$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityPinned(ILjava/lang/String;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$start$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->access$getTaskInfo(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityPinned packageName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", baseActivity:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "{OngoingActivityController}"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->access$getTaskInfo(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->clearPipRunnable:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$clearPipRunnable$1;

    invoke-virtual {p2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->pipEnabledComponentNameList:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updatePipEnabledComponentNameList add. name:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final onActivityUnpinned()V
    .locals 3

    const-string/jumbo v0, "{OngoingActivityController}"

    const-string v1, "onActivityUnpinned clear pip request"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$start$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->clearPipRunnable:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$clearPipRunnable$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->clearPipRunnable:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$clearPipRunnable$1;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onTaskFocusChanged(IZ)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$start$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->access$getTaskInfo(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTaskFocusChanged focused:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", baseActivity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{OngoingActivityController}"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->access$getTaskInfo(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz p1, :cond_2

    sget-object p2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->userManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->setBaseActivityComponentName(Landroid/content/ComponentName;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mOngoingCardController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->fadeOutCard()V

    :cond_2
    new-instance p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$startMarqueeAnimation$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$startMarqueeAnimation$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mediaPauseTimerHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
