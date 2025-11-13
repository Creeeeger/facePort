.class public abstract Lcom/android/systemui/statusbar/notification/row/BindRequester;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBindRequestListener:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestRebind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)Landroidx/core/os/CancellationSignal;
    .locals 3

    new-instance v0, Landroidx/core/os/CancellationSignal;

    invoke-direct {v0}, Landroidx/core/os/CancellationSignal;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/BindRequester;->mBindRequestListener:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda1;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mBindEntries:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;->invalidated:Z

    if-eqz p2, :cond_1

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;->callbacks:Ljava/util/Set;

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1, p2}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda3;-><init>(Ljava/util/Set;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)V

    invoke-virtual {v0, v2}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->requestPipelineRun(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_2
    :goto_0
    return-object v0
.end method
