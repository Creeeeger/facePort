.class public final Lcom/android/systemui/util/wakelock/WakeLockLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0
    .param p1    # Lcom/android/systemui/log/LogBuffer;
        .annotation runtime Lcom/android/systemui/util/wakelock/WakeLockLog;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/wakelock/WakeLockLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public final logAcquire(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;I)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/util/wakelock/WakeLockLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/util/wakelock/WakeLockLogger$logAcquire$2;->INSTANCE:Lcom/android/systemui/util/wakelock/WakeLockLogger$logAcquire$2;

    const/4 v2, 0x0

    const-string v3, "WakeLock"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    move-object p1, v0

    check-cast p1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, p1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iput p3, p1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;I)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/util/wakelock/WakeLockLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/util/wakelock/WakeLockLogger$logRelease$2;->INSTANCE:Lcom/android/systemui/util/wakelock/WakeLockLogger$logRelease$2;

    const/4 v2, 0x0

    const-string v3, "WakeLock"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    move-object p1, v0

    check-cast p1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, p1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iput p3, p1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method
