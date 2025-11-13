.class public final Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEntryCleanUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mBindEntries:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mStage:Lcom/android/systemui/statusbar/notification/row/BindStage;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/notification/row/BindStage;->abortStage(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mStage:Lcom/android/systemui/statusbar/notification/row/BindStage;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/BindStage;->mContentParams:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mStartProcessor:Lcom/android/systemui/statusbar/notification/row/NotificationEntryProcessorFactoryLooperImpl$HandlerProcessor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public final onEntryInit(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mBindEntries:Ljava/util/Map;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;-><init>(Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;I)V

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mStage:Lcom/android/systemui/statusbar/notification/row/BindStage;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/BindStage;->mContentParams:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/BindStage;->newStageParams()Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;

    move-result-object p0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
