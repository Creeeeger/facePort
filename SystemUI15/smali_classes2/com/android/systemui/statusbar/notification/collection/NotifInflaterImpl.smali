.class public final Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater;


# instance fields
.field public final mLogger:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterLogger;

.field public final mNotifErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

.field public mNotificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;Lcom/android/systemui/statusbar/notification/collection/NotifInflaterLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mNotifErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mLogger:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterLogger;

    return-void
.end method


# virtual methods
.method public final abortInflation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->abortTask()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mLogger:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterLogger$logAbortInflationAbortedTask$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterLogger$logAbortInflationAbortedTask$2;

    const-string v3, "NotifInflater"

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object p1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_0
    return v0
.end method

.method public final inflateViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda0;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mLogger:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterLogger$logInflatingViews$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterLogger$logInflatingViews$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "NotifInflater"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    check-cast v6, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v5, v6, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;->reason:Ljava/lang/String;

    iput-object v5, v6, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->inflateViewsImpl(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$InflationCallback;)V

    sget-object p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterLogger$logInflatedViews$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterLogger$logInflatedViews$2;

    invoke-virtual {v0, v3, v1, p0, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p0

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, p2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final inflateViewsImpl(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$InflationCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mNotifErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mNotificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$1;

    invoke-direct {v2, p0, p3}, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$InflationCallback;)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->inflateViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl$1;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "NotificationRowBinder must be attached before using NotifInflaterImpl."

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;->setInflationError(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Exception;)V

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mLogger:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lcom/android/systemui/log/core/LogLevel;->WARNING:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterLogger$logInflationException$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterLogger$logInflationException$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "NotifInflater"

    invoke-virtual {p0, v3, p3, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p3

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p3

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ExceptionsKt__ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;->setInflationError(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method public final rebindViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda0;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mLogger:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterLogger$logRebindingViews$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterLogger$logRebindingViews$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "NotifInflater"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    check-cast v6, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v5, v6, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;->reason:Ljava/lang/String;

    iput-object v5, v6, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->inflateViewsImpl(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$InflationCallback;)V

    sget-object p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterLogger$logReboundViews$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterLogger$logReboundViews$2;

    invoke-virtual {v0, v3, v1, p0, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p0

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, p2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final releaseViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mLogger:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterLogger$logReleasingViews$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterLogger$logReleasingViews$2;

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v4, "NotifInflater"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v2, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->mNotificationRowBinder:Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;->releaseViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "NotificationRowBinder must be attached before using NotifInflaterImpl."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
