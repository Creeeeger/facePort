.class public abstract synthetic Lcom/android/systemui/log/core/Logger$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static m(Lkotlin/jvm/functions/Function1;Lcom/android/systemui/log/core/LogMessage;Lcom/android/systemui/log/core/Logger;Lcom/android/systemui/log/core/LogMessage;)V
    .locals 0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object p0

    invoke-interface {p0, p3}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method
