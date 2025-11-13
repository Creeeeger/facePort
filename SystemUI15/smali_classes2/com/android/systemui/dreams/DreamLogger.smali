.class public final Lcom/android/systemui/dreams/DreamLogger;
.super Lcom/android/systemui/log/core/Logger;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/core/MessageBuffer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/log/core/Logger;-><init>(Lcom/android/systemui/log/core/MessageBuffer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final logShowOrHideStatusBarItem(Ljava/lang/String;Z)V
    .locals 5

    sget-object v0, Lcom/android/systemui/dreams/DreamLogger$logShowOrHideStatusBarItem$1;->INSTANCE:Lcom/android/systemui/dreams/DreamLogger$logShowOrHideStatusBarItem$1;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {p0}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v0, v4}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/systemui/log/core/LogMessage;->setBool1(Z)V

    invoke-interface {v0, p1}, Lcom/android/systemui/log/core/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method
