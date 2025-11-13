.class public final Lcom/android/systemui/statusbar/notification/row/RowContentBindStage$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

.field public final synthetic val$callback:Lcom/android/systemui/statusbar/notification/row/BindStage$StageCallback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;Lcom/android/systemui/statusbar/notification/row/BindStage$StageCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage$1;->this$0:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage$1;->val$callback:Lcom/android/systemui/statusbar/notification/row/BindStage$StageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleInflationException(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage$1;->this$0:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;->mNotifInflationErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;->setInflationError(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Exception;)V

    return-void
.end method

.method public final onAsyncInflationFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage$1;->this$0:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;->mNotifInflationErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;->clearInflationError(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/BindStage;->getStageParams(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage$1;->val$callback:Lcom/android/systemui/statusbar/notification/row/BindStage$StageCallback;

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mBindEntries:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;->callbacks:Ljava/util/Set;

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v6, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger$logFinishedPipeline$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger$logFinishedPipeline$2;

    const/4 v7, 0x0

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v8, "NotifBindPipeline"

    invoke-virtual {v4, v8, v5, v6, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v5

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v5

    check-cast v7, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v6, v7, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput v3, v7, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;->invalidated:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mScratchCallbacksList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mScratchCallbacksList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mScratchCallbacksList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;->onBindFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mScratchCallbacksList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
