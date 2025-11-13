.class public final Lcom/android/systemui/dreams/DreamOverlayStateController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mComplications:Ljava/util/Collection;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mLogger:Lcom/android/systemui/dreams/DreamLogger;

.field public final mOverlayEnabled:Z

.field public mState:I

.field public final mWeakReferenceFactory:Lcom/android/systemui/util/reference/WeakReferenceFactory;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;ZLcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/util/reference/WeakReferenceFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mComplications:Ljava/util/Collection;

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mExecutor:Ljava/util/concurrent/Executor;

    iput-boolean p2, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mOverlayEnabled:Z

    new-instance p1, Lcom/android/systemui/dreams/DreamLogger;

    const-string v0, "DreamOverlayStateCtlr"

    invoke-direct {p1, p4, v0}, Lcom/android/systemui/dreams/DreamLogger;-><init>(Lcom/android/systemui/log/core/MessageBuffer;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mLogger:Lcom/android/systemui/dreams/DreamLogger;

    iput-object p5, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mWeakReferenceFactory:Lcom/android/systemui/util/reference/WeakReferenceFactory;

    sget-object p0, Lcom/android/systemui/flags/Flags;->ALWAYS_SHOW_HOME_CONTROLS_ON_DREAMS:Lcom/android/systemui/flags/ReleasedFlag;

    check-cast p3, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {p3, p0}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    sget-object p0, Lcom/android/systemui/dreams/DreamLogger$logDreamOverlayEnabled$1;->INSTANCE:Lcom/android/systemui/dreams/DreamLogger$logDreamOverlayEnabled$1;

    sget-object p3, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {p1}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object p4

    invoke-virtual {p1}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object p5

    const/4 v0, 0x0

    invoke-interface {p4, p5, p3, p0, v0}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/android/systemui/log/core/LogMessage;->setBool1(Z)V

    invoke-virtual {p1}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/dreams/DreamOverlayStateController;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->addCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V

    return-void
.end method

.method public final containsState(I)Z
    .locals 0

    iget p0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mState:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getComplications()Ljava/util/Collection;
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->containsState(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->containsState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mComplications:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final isOverlayActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mOverlayEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->containsState(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final modifyState(II)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mState:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    or-int p1, v0, p2

    iput p1, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mState:I

    goto :goto_0

    :cond_1
    not-int p1, p2

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mState:I

    :goto_0
    iget p1, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mState:I

    if-eq v0, p1, :cond_2

    new-instance p1, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda0;-><init>(I)V

    iget-object p2, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda3;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/dreams/DreamOverlayStateController;Ljava/lang/Object;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public final notifyCallbacksLocked(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/dreams/DreamOverlayStateController;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setDreamOverlayStatusBarVisible(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mLogger:Lcom/android/systemui/dreams/DreamLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/dreams/DreamLogger$logStatusBarVisible$1;->INSTANCE:Lcom/android/systemui/dreams/DreamLogger$logStatusBarVisible$1;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {v0}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/systemui/log/core/LogMessage;->setBool1(Z)V

    invoke-virtual {v0}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->modifyState(II)V

    return-void
.end method

.method public final setHasAssistantAttention(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mLogger:Lcom/android/systemui/dreams/DreamLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/dreams/DreamLogger$logHasAssistantAttention$1;->INSTANCE:Lcom/android/systemui/dreams/DreamLogger$logHasAssistantAttention$1;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {v0}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/systemui/log/core/LogMessage;->setBool1(Z)V

    invoke-virtual {v0}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->modifyState(II)V

    return-void
.end method

.method public final setLowLightActive(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mLogger:Lcom/android/systemui/dreams/DreamLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/dreams/DreamLogger$logLowLightActive$1;->INSTANCE:Lcom/android/systemui/dreams/DreamLogger$logLowLightActive$1;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {v0}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/systemui/log/core/LogMessage;->setBool1(Z)V

    invoke-virtual {v0}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->containsState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda0;-><init>(I)V

    iget-object v2, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda3;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v1, v4}, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/dreams/DreamOverlayStateController;Ljava/lang/Object;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->modifyState(II)V

    return-void
.end method

.method public final setOverlayActive(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mLogger:Lcom/android/systemui/dreams/DreamLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/dreams/DreamLogger$logOverlayActive$1;->INSTANCE:Lcom/android/systemui/dreams/DreamLogger$logOverlayActive$1;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {v0}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/systemui/log/core/LogMessage;->setBool1(Z)V

    invoke-virtual {v0}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->modifyState(II)V

    return-void
.end method
