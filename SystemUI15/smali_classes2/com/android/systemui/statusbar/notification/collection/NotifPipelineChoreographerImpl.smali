.class public final Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographer;


# instance fields
.field public final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final frameCallback:Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl$frameCallback$1;

.field public isScheduled:Z

.field public final listeners:Lcom/android/systemui/util/ListenerSet;

.field public timeoutSubscription:Ljava/lang/Runnable;

.field public final viewChoreographer:Landroid/view/Choreographer;


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->viewChoreographer:Landroid/view/Choreographer;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance p1, Lcom/android/systemui/util/ListenerSet;

    invoke-direct {p1}, Lcom/android/systemui/util/ListenerSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->listeners:Lcom/android/systemui/util/ListenerSet;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl$frameCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl$frameCallback$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->frameCallback:Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl$frameCallback$1;

    return-void
.end method


# virtual methods
.method public final schedule()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->isScheduled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->isScheduled:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->viewChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->frameCallback:Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl$frameCallback$1;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->isScheduled:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl$schedule$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl$schedule$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;)V

    const-wide/16 v1, 0x64

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v3, v0, v1, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->timeoutSubscription:Ljava/lang/Runnable;

    return-void
.end method
