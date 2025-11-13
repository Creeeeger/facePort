.class public final synthetic Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/DreamOverlayStateController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iput-boolean p2, p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda2;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iget-boolean p0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda2;->f$1:Z

    iget-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mLogger:Lcom/android/systemui/dreams/DreamLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/dreams/DreamLogger$logShouldShowComplications$1;->INSTANCE:Lcom/android/systemui/dreams/DreamLogger$logShouldShowComplications$1;

    sget-object v3, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {v1}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v2, v6}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/android/systemui/log/core/LogMessage;->setBool1(Z)V

    invoke-virtual {v1}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    new-instance p0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->notifyCallbacksLocked(Ljava/util/function/Consumer;)V

    return-void
.end method
