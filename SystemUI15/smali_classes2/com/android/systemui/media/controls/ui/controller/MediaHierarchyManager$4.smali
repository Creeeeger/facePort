.class public final Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$4;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$4;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->access$setGoingToSleep(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;Z)V

    return-void
.end method

.method public final onFinishedWakingUp()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$4;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->access$setGoingToSleep(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;Z)V

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->fullyAwake:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->fullyAwake:Z

    const/4 v0, 0x2

    invoke-static {p0, v1, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;ZI)V

    :cond_0
    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$4;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->access$setGoingToSleep(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;Z)V

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->fullyAwake:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->fullyAwake:Z

    :cond_0
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$4;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->access$setGoingToSleep(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;Z)V

    return-void
.end method
