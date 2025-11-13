.class public final Lcom/android/systemui/keyguard/SecurityLog;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/keyguard/SecurityDumpLog;->logger:Lcom/android/systemui/log/SamsungServiceLogger;

    if-eqz v1, :cond_0

    check-cast v1, Lcom/android/systemui/log/SamsungServiceLoggerImpl;

    invoke-virtual {v1, p0, v0, p1}, Lcom/android/systemui/log/SamsungServiceLoggerImpl;->logWithThreadId(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
