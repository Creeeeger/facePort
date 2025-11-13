.class public final synthetic Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;

.field public final synthetic f$3:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder$$ExternalSyntheticLambda0;->f$3:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;

    return-void
.end method


# virtual methods
.method public final onBindFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger$entryBoundSuccessfully$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger$entryBoundSuccessfully$2;

    const-string v4, "HeadsUpViewBinder"

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v4, v5, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseIncreasedHeadsUpHeight:Z

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUseIncreasedHeadsUpHeight:Z

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->mOngoingBindCallbacks:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder$$ExternalSyntheticLambda0;->f$3:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;->onBindFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    return-void
.end method
