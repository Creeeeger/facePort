.class public final Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mNotifBindPipeline:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;

.field public final mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;->mNotifBindPipeline:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;->mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;->mNotifBindPipeline:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineInitializer;->mRowContentBindStage:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v4, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger$logStageSet$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger$logStageSet$2;

    const/4 v5, 0x0

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v6, "NotifBindPipeline"

    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v4, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iput-object p0, v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mStage:Lcom/android/systemui/statusbar/notification/row/BindStage;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/BindRequester;->mBindRequestListener:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda1;

    return-void
.end method
