.class public final Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;
.super Lcom/android/systemui/statusbar/notification/row/BindStage;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBinder:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;

.field public final mLogger:Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger;

.field public final mNotifInflationErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/BindStage;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;->mBinder:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;->mNotifInflationErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;->mLogger:Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger;

    return-void
.end method


# virtual methods
.method public final abortStage(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 3

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;->mBinder:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;

    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;->cancelBind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;->mLogger:Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger$logAbortStageCancelledBind$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger$logAbortStageCancelledBind$2;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "RowContentBindStage"

    invoke-virtual {p0, v2, p2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p2

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final executeStage(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda1;)V
    .locals 10

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/BindStage;->getStageParams(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;->mLogger:Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger$logExecutingStage$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger$logExecutingStage$2;

    const/4 v4, 0x0

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v5, "RowContentBindStage"

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v3, v4, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget v1, v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mContentViews:I

    iget v2, v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    and-int v6, v2, v1

    xor-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;->mBinder:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;

    invoke-interface {v2, p1, p2, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;->unbindContent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V

    new-instance v7, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;

    invoke-direct {v7}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;-><init>()V

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseMinimized:Z

    iput-boolean v1, v7, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->isMinimized:Z

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseIncreasedHeight:Z

    iput-boolean v1, v7, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->usesIncreasedHeight:Z

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseIncreasedHeadsUpHeight:Z

    iput-boolean v1, v7, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->usesIncreasedHeadsUpHeight:Z

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mViewsNeedReinflation:Z

    new-instance v9, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage$1;

    invoke-direct {v9, p0, p3}, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage$1;-><init>(Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;Lcom/android/systemui/statusbar/notification/row/BindStage$StageCallback;)V

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;->cancelBind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;->mBinder:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;->bindContent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;ZLcom/android/systemui/statusbar/notification/row/RowContentBindStage$1;)V

    return-void
.end method

.method public final newStageParams()Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;
    .locals 0

    new-instance p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;-><init>()V

    return-object p0
.end method
