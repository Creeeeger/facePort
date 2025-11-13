.class public final Lcom/android/systemui/keyguard/KeyguardDumpLog;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/keyguard/KeyguardDumpLog;

.field public static final STATE_MSG:[Ljava/lang/String;

.field public static logger:Lcom/android/systemui/log/SamsungServiceLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardDumpLog;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/KeyguardDumpLog;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardDumpLog;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardDumpLog;

    const-string/jumbo v0, "screen_toggled"

    const-string v1, "occluded"

    const-string v2, "keyguardGoingAway"

    const-string/jumbo v3, "setLockScreenShown"

    const-string v4, "externalEnabled"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardDumpLog;->STATE_MSG:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v0, " "

    invoke-static {p2, v0, p3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    sget-object p3, Lcom/android/systemui/keyguard/KeyguardDumpLog;->logger:Lcom/android/systemui/log/SamsungServiceLogger;

    if-eqz p3, :cond_1

    check-cast p3, Lcom/android/systemui/log/SamsungServiceLoggerImpl;

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/systemui/log/SamsungServiceLoggerImpl;->logWithThreadId(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static state$default(Lcom/android/systemui/keyguard/KeyguardDumpLog;IZZZIII)V
    .locals 2

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    :cond_0
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_1

    move p3, v1

    :cond_1
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_2

    move p4, v1

    :cond_2
    and-int/lit8 v0, p7, 0x10

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    move p5, v1

    :cond_3
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_4

    move p6, v1

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, " "

    if-eqz p1, :cond_9

    const/4 p7, 0x1

    if-eq p1, p7, :cond_8

    const/4 p3, 0x2

    if-eq p1, p3, :cond_7

    const/4 p3, 0x3

    if-eq p1, p3, :cond_5

    const/4 p3, 0x4

    if-eq p1, p3, :cond_7

    goto :goto_1

    :cond_5
    invoke-static {p5, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p5, :cond_6

    if-eq p5, p7, :cond_6

    goto :goto_1

    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " why:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_7
    invoke-static {p0, p2}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_8
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p2, :cond_b

    const-string p2, " failed"

    invoke-static {p0, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_9
    if-eqz p2, :cond_a

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    :cond_a
    const-string p2, "failed"

    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_b
    :goto_1
    sget-object p2, Lcom/android/systemui/keyguard/KeyguardDumpLog;->logger:Lcom/android/systemui/log/SamsungServiceLogger;

    if-eqz p2, :cond_c

    sget-object p3, Lcom/android/systemui/keyguard/KeyguardDumpLog;->STATE_MSG:[Ljava/lang/String;

    aget-object p1, p3, p1

    sget-object p3, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    check-cast p2, Lcom/android/systemui/log/SamsungServiceLoggerImpl;

    invoke-virtual {p2, p1, p3, p0}, Lcom/android/systemui/log/SamsungServiceLoggerImpl;->logWithThreadId(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;)V

    :cond_c
    return-void
.end method
