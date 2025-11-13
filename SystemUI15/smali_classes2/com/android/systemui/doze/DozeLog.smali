.class public final Lcom/android/systemui/doze/DozeLog;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mEmergencyCallStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field public final mKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mLogger:Lcom/android/systemui/doze/DozeLogger;

.field public final mNotificationPulseStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field public final mPickupPulseNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field public final mPickupPulseNotNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field public final mProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field public mPulsing:Z

.field public final mScreenOnNotPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field public final mScreenOnPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field public final mSince:J


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/doze/DozeLogger;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/doze/DozeLog$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeLog$1;-><init>(Lcom/android/systemui/doze/DozeLog;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p3, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/doze/DozeLog;->mSince:J

    new-instance p3, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog;I)V

    iput-object p3, p0, Lcom/android/systemui/doze/DozeLog;->mPickupPulseNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    new-instance p3, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-direct {p3, p0, v0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog;I)V

    iput-object p3, p0, Lcom/android/systemui/doze/DozeLog;->mPickupPulseNotNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    new-instance p3, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-direct {p3, p0, v0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog;I)V

    iput-object p3, p0, Lcom/android/systemui/doze/DozeLog;->mNotificationPulseStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    new-instance p3, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-direct {p3, p0, v0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog;I)V

    iput-object p3, p0, Lcom/android/systemui/doze/DozeLog;->mScreenOnPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    new-instance p3, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-direct {p3, p0, v0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog;I)V

    iput-object p3, p0, Lcom/android/systemui/doze/DozeLog;->mScreenOnNotPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    new-instance p3, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-direct {p3, p0, v0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog;I)V

    iput-object p3, p0, Lcom/android/systemui/doze/DozeLog;->mEmergencyCallStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const/4 p3, 0x2

    new-array v1, p3, [I

    const/4 v2, 0x1

    aput p3, v1, v2

    const/16 p3, 0xd

    aput p3, v1, v0

    const-class v3, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    iput-object v1, p0, Lcom/android/systemui/doze/DozeLog;->mProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/doze/DozeLog;->mProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    aget-object v3, v3, v1

    new-instance v4, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog;I)V

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/android/systemui/doze/DozeLog;->mProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    aget-object v3, v3, v1

    new-instance v4, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog;I)V

    aput-object v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/android/systemui/doze/DozeLog;->mKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "DumpStats"

    invoke-static {p2, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method public static reasonToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid reason: "

    invoke-static {p0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "fingerprint-triggered"

    return-object p0

    :pswitch_1
    const-string p0, "quickPickup"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "udfps"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "tap"

    return-object p0

    :pswitch_4
    const-string p0, "reach-wakelockscreen"

    return-object p0

    :pswitch_5
    const-string p0, "presence-wakeup"

    return-object p0

    :pswitch_6
    const-string p0, "docking"

    return-object p0

    :pswitch_7
    const-string p0, "longpress"

    return-object p0

    :pswitch_8
    const-string p0, "doubletap"

    return-object p0

    :pswitch_9
    const-string p0, "pickup"

    return-object p0

    :pswitch_a
    const-string/jumbo p0, "sigmotion"

    return-object p0

    :pswitch_b
    const-string p0, "notification"

    return-object p0

    :pswitch_c
    const-string p0, "intent"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const-class p2, Lcom/android/systemui/doze/DozeLog;

    monitor-enter p2

    :try_start_0
    const-string v0, "  Doze summary stats (for "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/doze/DozeLog;->mSince:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v0, "):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mPickupPulseNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const-string v1, "Pickup pulse (near vibration)"

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mPickupPulseNotNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const-string v1, "Pickup pulse (not near vibration)"

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mNotificationPulseStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const-string v1, "Notification pulse"

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mScreenOnPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const-string v1, "Screen on (pulsing)"

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mScreenOnNotPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const-string v1, "Screen on (not pulsing)"

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mEmergencyCallStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const-string v1, "Emergency call"

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xd

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Lcom/android/systemui/doze/DozeLog;->reasonToString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/doze/DozeLog;->mProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    aget-object v3, v3, v1

    aget-object v3, v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proximity near ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/doze/DozeLog;->mProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    aget-object v3, v3, v1

    const/4 v4, 0x1

    aget-object v3, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proximity far ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, p1, v2}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final traceDozing(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/doze/DozeLogger$logDozing$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logDozing$2;

    const-string v3, "DozeLog"

    iget-object v0, v0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v2, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeLog;->mPulsing:Z

    return-void
.end method

.method public final traceDozingChanged(Z)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logDozingChanged$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logDozingChanged$2;

    const-string v2, "DozeLog"

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final traceFling(ZZZ)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logFling$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logFling$2;

    const-string v2, "DozeLog"

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean p2, v1, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    iput-boolean p3, v1, Lcom/android/systemui/log/LogMessageImpl;->bool4:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final tracePulseDropped(Ljava/lang/String;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logPulseDropped$4;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logPulseDropped$4;

    const-string v2, "DozeLog"

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final tracePulseDropped(Ljava/lang/String;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logPulseDropped$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logPulseDropped$2;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "DozeLog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iput-object v3, v1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final tracePulseEvent(ILjava/lang/String;Z)V
    .locals 4

    invoke-static {p1}, Lcom/android/systemui/doze/DozeLog;->reasonToString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logPulseEvent$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logPulseEvent$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "DozeLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-boolean p3, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final tracePulseFinish()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/doze/DozeLogger$logPulseFinish$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logPulseFinish$2;

    const-string v3, "DozeLog"

    iget-object v0, v0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeLog;->mPulsing:Z

    return-void
.end method

.method public final tracePulseStart(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/doze/DozeLogger$logPulseStart$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logPulseStart$2;

    const-string v3, "DozeLog"

    iget-object v0, v0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, v2, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeLog;->mPulsing:Z

    return-void
.end method

.method public final traceSensorEventDropped(ILjava/lang/String;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/doze/DozeLogger$logSensorEventDropped$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logSensorEventDropped$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "DozeLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput-object p2, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final traceSetAodDimmingScrim(F)V
    .locals 5

    float-to-long v0, p1

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/doze/DozeLogger$logSetAodDimmingScrim$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logSetAodDimmingScrim$2;

    const-string v3, "DozeLog"

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-wide v0, v2, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method
