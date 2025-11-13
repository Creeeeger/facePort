.class public final Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter$onBindViewHolder$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $runningApp:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $this_with:Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;

.field public final synthetic this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;

.field public final synthetic this$1:Lcom/android/systemui/qs/FgsManagerControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;Lcom/android/systemui/qs/FgsManagerControllerImpl;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;",
            "Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;",
            "Lcom/android/systemui/qs/FgsManagerControllerImpl;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter$onBindViewHolder$2$1;->$this_with:Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;

    iput-object p2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter$onBindViewHolder$2$1;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;

    iput-object p3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter$onBindViewHolder$2$1;->this$1:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    iput-object p4, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter$onBindViewHolder$2$1;->$runningApp:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    iget-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter$onBindViewHolder$2$1;->$this_with:Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;

    iget-object p1, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;->stopButton:Landroid/widget/Button;

    const v0, 0x7f13109d

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter$onBindViewHolder$2$1;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter$onBindViewHolder$2$1;->$this_with:Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;->updateContentDescription(Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;)V

    iget-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter$onBindViewHolder$2$1;->this$1:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter$onBindViewHolder$2$1;->$runningApp:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;

    iget v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->userId:I

    iget-object v11, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->packageName:Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->timeStarted:J

    sget p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->$r8$clinit:I

    iget-object p0, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p0}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object p0, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v12, Lcom/android/systemui/qs/FgsManagerControllerImpl$logEvent$1;

    const/4 v5, 0x2

    const/4 v10, 0x1

    move-object v1, v12

    move-object v2, p1

    move-object v3, v11

    move v4, v0

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/qs/FgsManagerControllerImpl$logEvent$1;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;Ljava/lang/String;IIJJZ)V

    invoke-interface {p0, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    invoke-direct {p0, p1, v0, v11}, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;ILjava/lang/String;)V

    iget-boolean p0, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl;->showUserVisibleJobs:Z

    if-nez p0, :cond_0

    iget-boolean p0, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl;->informJobSchedulerOfPendingAppStop:Z

    if-eqz p0, :cond_1

    :cond_0
    iget-object p0, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl;->jobScheduler:Landroid/app/job/JobScheduler;

    const-string/jumbo v1, "task manager"

    invoke-virtual {p0, v11, v0, v1}, Landroid/app/job/JobScheduler;->notePendingUserRequestedAppStop(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    iget-object p0, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl;->activityManager:Landroid/app/IActivityManager;

    invoke-interface {p0, v11, v0}, Landroid/app/IActivityManager;->stopAppForUser(Ljava/lang/String;I)V

    return-void
.end method
