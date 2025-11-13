.class public final synthetic Lcom/android/systemui/ambient/touch/TouchMonitor$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BiConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/ambient/touch/TouchHandler;

    check-cast p2, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;

    invoke-interface {p1, p2}, Lcom/android/systemui/ambient/touch/TouchHandler;->onSessionStart(Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;)V

    return-void
.end method
