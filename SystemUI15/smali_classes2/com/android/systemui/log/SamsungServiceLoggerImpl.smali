.class public final Lcom/android/systemui/log/SamsungServiceLoggerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/log/SamsungServiceLogger;


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/android/systemui/dump/DumpManager;Lcom/android/systemui/log/LogcatEchoTracker;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lcom/android/systemui/log/LogBuffer;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/log/LogBuffer;-><init>(Ljava/lang/String;ILcom/android/systemui/log/LogcatEchoTracker;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v7, p0, Lcom/android/systemui/log/SamsungServiceLoggerImpl;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p3, v7, p1}, Lcom/android/systemui/dump/DumpManager;->registerBuffer(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/log/SamsungServiceLoggerImpl$log$4;

    invoke-direct {v0, p3}, Lcom/android/systemui/log/SamsungServiceLoggerImpl$log$4;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x0

    iget-object p0, p0, Lcom/android/systemui/log/SamsungServiceLoggerImpl;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logWithThreadId(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/log/SamsungServiceLoggerImpl$logWithThreadId$2;

    invoke-direct {v0, p3}, Lcom/android/systemui/log/SamsungServiceLoggerImpl$logWithThreadId$2;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x0

    iget-object p0, p0, Lcom/android/systemui/log/SamsungServiceLoggerImpl;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p2

    int-to-long p2, p2

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/log/LogMessageImpl;

    iput-wide p2, v0, Lcom/android/systemui/log/LogMessageImpl;->threadId:J

    const/16 p2, 0x7c

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    move-object p3, p1

    check-cast p3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, p3, Lcom/android/systemui/log/LogMessageImpl;->tagSeparator:Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method
