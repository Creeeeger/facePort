.class public Landroid/hardware/scontext/SContextManager;
.super Lcom/samsung/android/hardware/context/SemContextManager;
.source "SContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SContextManager"


# instance fields
.field private blacklist mAvailableServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

.field private final blacklist mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mMainLooper:Landroid/os/Looper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsHistoryDataListener(Landroid/hardware/scontext/SContextManager;)Landroid/hardware/scontext/SContextListener;
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckHistoryMode(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->checkHistoryMode(Landroid/hardware/scontext/SContextEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

    iput-object p2, p0, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Looper;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    return-void
.end method

.method private blacklist addListenerAttribute(I)Landroid/hardware/scontext/SContextAttribute;
    .locals 2

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    new-instance v1, Landroid/hardware/scontext/SContextAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_0
    new-instance v1, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;-><init>()V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_1
    new-instance v1, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;-><init>()V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_2
    new-instance v1, Landroid/hardware/scontext/SContextSLocationCoreAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;-><init>()V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_3
    new-instance v1, Landroid/hardware/scontext/SContextExerciseAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextExerciseAttribute;-><init>()V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_4
    new-instance v1, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;-><init>()V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_5
    new-instance v1, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;-><init>()V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_6
    new-instance v1, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>()V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_7
    new-instance v1, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;-><init>()V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_8
    new-instance v1, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;-><init>()V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_9
    new-instance v1, Landroid/hardware/scontext/SContextSleepMonitorAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextSleepMonitorAttribute;-><init>()V

    move-object v0, v1

    goto :goto_0

    :sswitch_a
    new-instance v1, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;-><init>()V

    move-object v0, v1

    goto :goto_0

    :sswitch_b
    new-instance v1, Landroid/hardware/scontext/SContextActivityNotificationAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextActivityNotificationAttribute;-><init>()V

    move-object v0, v1

    goto :goto_0

    :sswitch_c
    new-instance v1, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;-><init>()V

    move-object v0, v1

    goto :goto_0

    :sswitch_d
    new-instance v1, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;-><init>()V

    move-object v0, v1

    goto :goto_0

    :sswitch_e
    new-instance v1, Landroid/hardware/scontext/SContextShakeMotionAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextShakeMotionAttribute;-><init>()V

    move-object v0, v1

    goto :goto_0

    :sswitch_f
    new-instance v1, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;-><init>()V

    move-object v0, v1

    goto :goto_0

    :sswitch_10
    new-instance v1, Landroid/hardware/scontext/SContextEnvironmentAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextEnvironmentAttribute;-><init>()V

    move-object v0, v1

    goto :goto_0

    :sswitch_11
    new-instance v1, Landroid/hardware/scontext/SContextAutoRotationAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextAutoRotationAttribute;-><init>()V

    move-object v0, v1

    goto :goto_0

    :sswitch_12
    new-instance v1, Landroid/hardware/scontext/SContextStepCountAlertAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextStepCountAlertAttribute;-><init>()V

    move-object v0, v1

    goto :goto_0

    :sswitch_13
    new-instance v1, Landroid/hardware/scontext/SContextPedometerAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>()V

    move-object v0, v1

    goto :goto_0

    :sswitch_14
    new-instance v1, Landroid/hardware/scontext/SContextApproachAttribute;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextApproachAttribute;-><init>()V

    move-object v0, v1

    nop

    :goto_0
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_14
        0x2 -> :sswitch_13
        0x3 -> :sswitch_12
        0x6 -> :sswitch_11
        0x8 -> :sswitch_10
        0x9 -> :sswitch_f
        0xc -> :sswitch_e
        0x17 -> :sswitch_d
        0x18 -> :sswitch_c
        0x1b -> :sswitch_b
        0x1c -> :sswitch_a
        0x1d -> :sswitch_9
        0x1e -> :sswitch_8
        0x21 -> :sswitch_7
        0x23 -> :sswitch_6
        0x24 -> :sswitch_5
        0x27 -> :sswitch_4
        0x28 -> :sswitch_3
        0x2f -> :sswitch_2
        0x33 -> :sswitch_1
        0x35 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist checkHistoryMode(Landroid/hardware/scontext/SContextEvent;)Z
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v2}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSContextChanged() : event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    nop

    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getStepLevelMonitorContext()Landroid/hardware/scontext/SContextStepLevelMonitor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/scontext/SContextStepLevelMonitor;->getMode()I

    move-result v5

    if-ne v5, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    nop

    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getActivityBatchContext()Landroid/hardware/scontext/SContextActivityBatch;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/scontext/SContextActivityBatch;->getMode()I

    move-result v5

    if-ne v5, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getAutoRotationContext()Landroid/hardware/scontext/SContextAutoRotation;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Angle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/hardware/scontext/SContextAutoRotation;->getAngle()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getPedometerContext()Landroid/hardware/scontext/SContextPedometer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/scontext/SContextPedometer;->getMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    const-string v3, "SContextManager"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x6 -> :sswitch_2
        0x1a -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "SContextManager"

    const-string v2, "Listener is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    return v0
.end method

.method private blacklist getAvailableServiceMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .locals 4

    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-virtual {v2}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->getListener()Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/hardware/scontext/SContextListener;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist changeParameters(Landroid/hardware/scontext/SContextListener;II)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    new-instance v1, Landroid/hardware/scontext/SContextPedometerAttribute;

    invoke-direct {v1, p3}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>(I)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x21

    if-ne p2, v1, :cond_1

    new-instance v1, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;

    invoke-direct {v1, p3}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;-><init>(I)V

    move-object v0, v1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public blacklist changeParameters(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    new-instance v1, Landroid/hardware/scontext/SContextPedometerAttribute;

    move-object v2, v1

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-direct/range {v2 .. v7}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>(IDD)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public blacklist changeParameters(Landroid/hardware/scontext/SContextListener;IIIII)Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    new-instance v1, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    const/4 v3, 0x1

    move-object v2, v1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v2 .. v7}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>(IIIII)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public blacklist changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    const/16 v2, 0x21

    if-eq p2, v2, :cond_3

    const/16 v2, 0x23

    if-eq p2, v2, :cond_3

    const/16 v2, 0x27

    if-eq p2, v2, :cond_3

    const/16 v2, 0x2f

    if-eq p2, v2, :cond_3

    const/16 v2, 0x33

    if-eq p2, v2, :cond_3

    const/16 v2, 0x35

    if-ne p2, v2, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v1, "SContextManager"

    const-string v3, "  .changeParameters : SContextListener is null!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    invoke-super {p0, v2, p2, p3}, Lcom/samsung/android/hardware/context/SemContextManager;->changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_1
    return v0
.end method

.method public whitelist getFeatureLevel(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->getFeatureLevel(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist initializeSContextService(Landroid/hardware/scontext/SContextListener;I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "SContextManager"

    const-string v2, "  .initializeSContextService : SContextListener is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-super {p0, v0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->initializeSemContextService(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist isAvailableService(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    return v0
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;I)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Landroid/hardware/scontext/SContextManager;->addListenerAttribute(I)Landroid/hardware/scontext/SContextAttribute;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;II)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    new-instance v1, Landroid/hardware/scontext/SContextStepCountAlertAttribute;

    invoke-direct {v1, p3}, Landroid/hardware/scontext/SContextStepCountAlertAttribute;-><init>(I)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    if-ne p2, v1, :cond_1

    new-instance v1, Landroid/hardware/scontext/SContextAutoRotationAttribute;

    invoke-direct {v1, p3}, Landroid/hardware/scontext/SContextAutoRotationAttribute;-><init>(I)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x10

    if-ne p2, v1, :cond_2

    new-instance v1, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;

    invoke-direct {v1, p3}, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;-><init>(I)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/16 v1, 0x21

    if-ne p2, v1, :cond_3

    new-instance v1, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;

    invoke-direct {v1, p3}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;-><init>(I)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    const/16 v1, 0x24

    if-ne p2, v1, :cond_4

    new-instance v1, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;

    invoke-direct {v1, p3}, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;-><init>(I)V

    move-object v0, v1

    :cond_4
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    new-instance v1, Landroid/hardware/scontext/SContextPedometerAttribute;

    move-object v2, v1

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-direct/range {v2 .. v7}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>(IDD)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;III)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p2, v1, :cond_0

    new-instance v1, Landroid/hardware/scontext/SContextEnvironmentAttribute;

    invoke-direct {v1, p3, p4}, Landroid/hardware/scontext/SContextEnvironmentAttribute;-><init>(II)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    if-ne p2, v1, :cond_1

    new-instance v1, Landroid/hardware/scontext/SContextShakeMotionAttribute;

    invoke-direct {v1, p3, p4}, Landroid/hardware/scontext/SContextShakeMotionAttribute;-><init>(II)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x1d

    if-ne p2, v1, :cond_2

    new-instance v1, Landroid/hardware/scontext/SContextSleepMonitorAttribute;

    invoke-direct {v1, p3, p4}, Landroid/hardware/scontext/SContextSleepMonitorAttribute;-><init>(II)V

    move-object v0, v1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;IIIDI)Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x9

    if-ne p2, v1, :cond_0

    new-instance v1, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;

    move-object v2, v1

    move v3, p3

    move v4, p4

    move-wide v5, p5

    move v7, p7

    invoke-direct/range {v2 .. v7}, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;-><init>(IIDI)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;IIII)Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    new-instance v1, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    const/16 v6, 0x5dc

    const/16 v7, 0x5dc

    move-object v2, v1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v2 .. v7}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>(IIIII)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;IIIII)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x1c

    if-ne p2, v1, :cond_0

    new-instance v1, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;

    invoke-direct {v1, p3, p4, p5, p6}, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;-><init>(IIII)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;IIIIII)Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-ne p2, v1, :cond_0

    new-instance v1, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;

    move-object v2, v1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v2 .. v7}, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;-><init>(IIIII)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x23

    if-ne p2, v1, :cond_1

    new-instance v1, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    move-object v2, v1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v2 .. v7}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>(IIIII)V

    move-object v0, v1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;IIIZ)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x17

    if-ne p2, v1, :cond_0

    new-instance v1, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;

    invoke-direct {v1, p3, p4, p5}, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;-><init>(IIZ)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x30

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/hardware/scontext/SContextManager;->setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_1

    return v0

    :cond_1
    invoke-virtual {p3}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v2, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3, v0}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V

    move-object v1, v2

    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {p1}, Landroid/hardware/scontext/SContextListener;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->setClientInfo(Ljava/lang/String;)V

    invoke-super {p0, v1, p2, p3}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  .registerListener : listener = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", service="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SContextManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_5
    return v0
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;Landroid/os/Looper;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    invoke-virtual {p3}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v2, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    invoke-direct {v2, p0, p1, p4, v0}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V

    move-object v1, v2

    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {p1}, Landroid/hardware/scontext/SContextListener;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->setClientInfo(Ljava/lang/String;)V

    invoke-super {p0, v1, p2, p3, p4}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;Landroid/os/Looper;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  .registerListener : listener = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", service="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SContextManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_4
    return v0
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/os/Looper;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Landroid/hardware/scontext/SContextManager;->addListenerAttribute(I)Landroid/hardware/scontext/SContextAttribute;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;Landroid/os/Looper;)Z

    move-result v1

    return v1
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;I[I)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x1b

    if-ne p2, v1, :cond_0

    new-instance v1, Landroid/hardware/scontext/SContextActivityNotificationAttribute;

    invoke-direct {v1, p3}, Landroid/hardware/scontext/SContextActivityNotificationAttribute;-><init>([I)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public blacklist registerListener(Landroid/hardware/scontext/SContextListener;I[II)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x1e

    if-ne p2, v1, :cond_0

    new-instance v1, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;

    invoke-direct {v1, p3, p4}, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;-><init>([II)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    return v1
.end method

.method public blacklist requestHistoryData(Landroid/hardware/scontext/SContextListener;I)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/16 v0, 0x21

    if-eq p2, v0, :cond_1

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_1

    const-string v0, "SContextManager"

    const-string v1, "  .requestHistoryData : This service is not supported!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p2}, Landroid/hardware/scontext/SContextManager;->addListenerAttribute(I)Landroid/hardware/scontext/SContextAttribute;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

    if-nez v1, :cond_4

    new-instance v2, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, p0, p1, v3, v4}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V

    move-object v1, v2

    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {p1}, Landroid/hardware/scontext/SContextListener;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->setClientInfo(Ljava/lang/String;)V

    invoke-super {p0, v1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->requestHistoryData(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    return-void
.end method

.method public blacklist requestToUpdate(Landroid/hardware/scontext/SContextListener;I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const-string v1, "SContextManager"

    if-eq p2, v0, :cond_1

    const/16 v0, 0x19

    if-eq p2, v0, :cond_1

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_1

    const/16 v0, 0x1d

    if-eq p2, v0, :cond_1

    const/16 v0, 0x28

    if-eq p2, v0, :cond_1

    const/16 v0, 0x32

    if-eq p2, v0, :cond_1

    const/16 v0, 0x33

    if-eq p2, v0, :cond_1

    const/16 v0, 0x34

    if-eq p2, v0, :cond_1

    const-string v0, "  .requestToUpdate : This service is not supported!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v2, "  .requestToUpdate : SContextListener is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-super {p0, v0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->requestToUpdate(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    return-void
.end method

.method public blacklist setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->setReferenceData(ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v0

    return v0
.end method

.method public blacklist setReferenceData(I[B[B)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    if-ne p1, v2, :cond_1

    new-instance v2, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;

    invoke-direct {v2, p2, p3}, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;-><init>([B[B)V

    move-object v1, v2

    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/hardware/scontext/SContextManager;->setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public blacklist unregisterListener(Landroid/hardware/scontext/SContextListener;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0, v2, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    invoke-virtual {v2}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->clear()V

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .unregisterListener : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SContextManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public blacklist unregisterListener(Landroid/hardware/scontext/SContextListener;I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v0

    const-string v1, "SContextManager"

    if-nez v0, :cond_1

    const-string v2, "  .unregisterListener : SContextListener is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-super {p0, v0, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  .unregisterListener : listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
