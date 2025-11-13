.class public final Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl$frameCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl$frameCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl$frameCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;

    iget-boolean p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->isScheduled:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->isScheduled:Z

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->timeoutSubscription:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl$frameCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->listeners:Lcom/android/systemui/util/ListenerSet;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    return-void
.end method
