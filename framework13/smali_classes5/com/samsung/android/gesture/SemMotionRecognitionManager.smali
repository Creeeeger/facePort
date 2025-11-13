.class public Lcom/samsung/android/gesture/SemMotionRecognitionManager;
.super Ljava/lang/Object;
.source "SemMotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    }
.end annotation


# static fields
.field public static final blacklist EVENT_DOUBLE_TAP:I = 0x8

.field public static final blacklist EVENT_ELEVATOR_DETECTOR:I = 0x1000000

.field public static final blacklist EVENT_LOCK_EXECUTE_L:I = 0x80

.field public static final blacklist EVENT_LOCK_EXECUTE_R:I = 0x100

.field public static final blacklist EVENT_PANNING_GALLERY:I = 0x20

.field public static final blacklist EVENT_PANNING_HOME:I = 0x40

.field public static final blacklist EVENT_POCKET_FOR_BIXBY:I = 0x2000000

.field public static final blacklist EVENT_POCKET_MODE:I = 0x800000

.field public static final blacklist EVENT_SHAKE:I = 0x2

.field public static final blacklist EVENT_SMART_ALERT_SETTING:I = 0x8000

.field public static final blacklist EVENT_SMART_SCROLL:I = 0x80000

.field public static final blacklist EVENT_TILT:I = 0x10

.field public static final blacklist EVENT_TILT_LEVEL_ZERO:I = 0x1000

.field public static final blacklist EVENT_TILT_LEVEL_ZERO_LAND:I = 0x4000

.field public static final blacklist EVENT_TILT_TO_UNLOCK:I = 0x800

.field public static final blacklist EVENT_VOLUME_DOWN:I = 0x200

.field public static final blacklist MOTION_ALL:I = 0x120405

.field public static final blacklist MOTION_CALL_POSE:I = 0x40000

.field public static final whitelist MOTION_DIRECT_CALLING:I = 0x400

.field public static final blacklist MOTION_FLAT:I = 0x2000

.field public static final blacklist MOTION_NUM:I = 0x19

.field public static final whitelist MOTION_OVERTURN:I = 0x1

.field public static final whitelist MOTION_OVERTURN_LOW_POWER:I = 0x20000

.field public static final whitelist MOTION_PALM_SWIPE:I = 0x400000

.field public static final whitelist MOTION_PALM_TOUCH:I = 0x200000

.field public static final blacklist MOTION_SCREEN_UP_STEADY:I = 0x10000

.field public static final blacklist MOTION_SENSOR_NUM:I = 0x5

.field public static final whitelist MOTION_SMART_ALERT:I = 0x4

.field public static final whitelist MOTION_SMART_RELAY:I = 0x100000

.field public static final blacklist MOTION_USE_ACC:I = 0x1

.field public static final blacklist MOTION_USE_ALL:I = 0xf

.field public static final blacklist MOTION_USE_ALWAYS:I = 0x40000000

.field public static final blacklist MOTION_USE_FOLDING_STATE:I = 0x10

.field public static final blacklist MOTION_USE_GYRO:I = 0x2

.field public static final blacklist MOTION_USE_LIGHT:I = 0x8

.field public static final blacklist MOTION_USE_PROX:I = 0x4

.field protected static final blacklist TAG:Ljava/lang/String; = "MotionRecognitionManager"

.field private static final blacklist mMotionVersion:I = 0x1


# instance fields
.field private blacklist mHasSensorHub:Z

.field private final blacklist mMainLooper:Landroid/os/Looper;

.field private blacklist mMovementCnt:I

.field private final blacklist mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field private blacklist motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

.field private final blacklist mySemContextMotionListener:Lcom/samsung/android/hardware/context/SemContextListener;

.field private final blacklist sListenerDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMainLooper(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMainLooper:Landroid/os/Looper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmotionService(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Lcom/samsung/android/gesture/IMotionRecognitionService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsListenerDelegates(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/os/Looper;)V
    .locals 3
    .param p1, "mainLooper"    # Landroid/os/Looper;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    .line 636
    new-instance v0, Lcom/samsung/android/gesture/SemMotionRecognitionManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$1;-><init>(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mySemContextMotionListener:Lcom/samsung/android/hardware/context/SemContextListener;

    .line 359
    nop

    .line 360
    const-string v0, "motion_recognition"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 359
    invoke-static {v1}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gesture/IMotionRecognitionService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    .line 362
    iput-object p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMainLooper:Landroid/os/Looper;

    .line 363
    new-instance v1, Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-direct {v1, p1}, Lcom/samsung/android/hardware/context/SemContextManager;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 364
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMovementCnt:I

    .line 366
    nop

    .line 367
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 366
    invoke-static {v0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gesture/IMotionRecognitionService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "motionService = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-eqz v0, :cond_0

    .line 372
    invoke-interface {v0}, Lcom/samsung/android/gesture/IMotionRecognitionService;->getSSPstatus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mHasSensorHub:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :cond_0
    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException in getSSPstatus: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist getMotionVersion()I
    .locals 1

    .line 628
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isValidMotionSensor(I)Z
    .locals 2
    .param p0, "motion_sensor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 611
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    const/16 v1, 0x10

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist getEvLuxTableInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "info"    # Ljava/lang/String;

    .line 724
    const-string v0, ""

    .line 725
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez v1, :cond_0

    return-object v0

    .line 727
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/gesture/IMotionRecognitionService;->getEvLuxTableInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 730
    goto :goto_0

    .line 728
    :catch_0
    move-exception v1

    .line 729
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MotionRecognitionManager"

    const-string v3, "RemoteException in getEvLuxTableInfo: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist getEvToLux([F)[F
    .locals 4
    .param p1, "values"    # [F

    .line 710
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 711
    .local v0, "ret":[F
    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez v1, :cond_0

    return-object v0

    .line 713
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/gesture/IMotionRecognitionService;->getEvToLux([F)[F

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 716
    goto :goto_0

    .line 714
    :catch_0
    move-exception v1

    .line 715
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MotionRecognitionManager"

    const-string v3, "RemoteException in getSSPstatus: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 717
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public whitelist isAvailable(I)Z
    .locals 4
    .param p1, "type"    # I

    .line 681
    const/4 v0, 0x0

    .line 682
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez v1, :cond_0

    return v0

    .line 684
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 700
    const/4 v0, 0x0

    goto :goto_0

    .line 694
    :sswitch_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/gesture/IMotionRecognitionService;->isAvailable(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 697
    goto :goto_0

    .line 695
    :catch_0
    move-exception v1

    .line 696
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MotionRecognitionManager"

    const-string v3, "RemoteException in getSSPstatus: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 698
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 703
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_0
        0x400 -> :sswitch_0
        0x200000 -> :sswitch_0
        0x400000 -> :sswitch_0
        0x800000 -> :sswitch_0
        0x1000000 -> :sswitch_0
        0x2000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/gesture/SemMotionEventListener;
    .param p2, "motion_events"    # I

    .line 385
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;ILandroid/os/Handler;)V

    .line 386
    return-void
.end method

.method public whitelist registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;IILandroid/os/Handler;)V
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/gesture/SemMotionEventListener;
    .param p2, "motion_sensors"    # I
    .param p3, "motion_events"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .line 399
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 405
    .local v1, "size":I
    iget-object v2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    .line 406
    .local v3, "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 407
    const-string v2, "MotionRecognitionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  .registerListener : fail. already registered / listener count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    monitor-exit v0

    return-void

    .line 410
    .end local v3    # "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    :cond_1
    goto :goto_0

    .line 412
    :cond_2
    new-instance v2, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    invoke-direct {v2, p0, p1, p3, p4}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;-><init>(Lcom/samsung/android/gesture/SemMotionRecognitionManager;Lcom/samsung/android/gesture/SemMotionEventListener;ILandroid/os/Handler;)V

    .line 414
    .local v2, "mrListener":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    iget-object v3, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    if-eqz p3, :cond_3

    .line 417
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {v3, v2, p2, p3}, Lcom/samsung/android/gesture/IMotionRecognitionService;->registerCallback(Landroid/os/IBinder;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 419
    :catch_0
    move-exception v3

    .line 420
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "MotionRecognitionManager"

    const-string v5, "RemoteException in registerListener : "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 421
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    nop

    .line 423
    :goto_2
    const-string v3, "MotionRecognitionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  .registerListener : success. listener count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", motion_events="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    nop

    .end local v1    # "size":I
    .end local v2    # "mrListener":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    monitor-exit v0

    .line 425
    return-void

    .line 424
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 400
    :cond_4
    :goto_3
    return-void
.end method

.method public whitelist registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;ILandroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/gesture/SemMotionEventListener;
    .param p2, "motion_events"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    .line 435
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;IILandroid/os/Handler;)V

    .line 437
    return-void
.end method

.method public blacklist resetMotionEngine()I
    .locals 3

    .line 596
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez v0, :cond_0

    .line 597
    const/4 v0, -0x1

    return v0

    .line 599
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/gesture/IMotionRecognitionService;->resetMotionEngine()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MotionRecognitionManager"

    const-string v2, "RemoteException in resetMotionEngine: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 603
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setMotionAngle(Lcom/samsung/android/gesture/SemMotionEventListener;I)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/gesture/SemMotionEventListener;
    .param p2, "status"    # I

    .line 543
    return-void
.end method

.method public blacklist setMotionTiltLevel(IIIIII)V
    .locals 8
    .param p1, "stopUp"    # I
    .param p2, "level1Up"    # I
    .param p3, "level2Up"    # I
    .param p4, "stopDown"    # I
    .param p5, "level1Down"    # I
    .param p6, "level2Down"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 579
    const-string v0, "MotionRecognitionManager"

    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez v1, :cond_0

    .line 580
    return-void

    .line 582
    :cond_0
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    :try_start_0
    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/gesture/IMotionRecognitionService;->setMotionTiltLevel(IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    goto :goto_0

    .line 583
    :catch_0
    move-exception v1

    .line 584
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException in setMotionTiltLevel: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 586
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const-string v1, "  .setMotionTiltLevel : 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    return-void
.end method

.method public blacklist setSmartMotionAngle(Lcom/samsung/android/gesture/SemMotionEventListener;I)V
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/gesture/SemMotionEventListener;
    .param p2, "status"    # I

    .line 553
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez v0, :cond_0

    .line 554
    return-void

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 556
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 557
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 558
    iget-object v3, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    .line 559
    .local v3, "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, p1, :cond_1

    .line 561
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {v4, v3, p2}, Lcom/samsung/android/gesture/IMotionRecognitionService;->setMotionAngle(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 564
    goto :goto_1

    .line 562
    :catch_0
    move-exception v4

    .line 563
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "MotionRecognitionManager"

    const-string v6, "RemoteException in setSmartMotionAngle: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v0

    return-void

    .line 557
    .end local v3    # "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 568
    .end local v2    # "i":I
    :cond_2
    const-string v2, "MotionRecognitionManager"

    const-string v3, "  .setSmartMotionAngle : listener has to be registered first"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    nop

    .end local v1    # "size":I
    monitor-exit v0

    .line 570
    return-void

    .line 569
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist setTestSensor()Z
    .locals 3

    .line 741
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {v0}, Lcom/samsung/android/gesture/IMotionRecognitionService;->setTestSensor()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    .local v0, "ret":Z
    goto :goto_0

    .line 742
    .end local v0    # "ret":Z
    :catch_0
    move-exception v0

    .line 743
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MotionRecognitionManager"

    const-string v2, "RemoteException in setTestSensor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const/4 v1, 0x0

    move v0, v1

    .line 747
    .local v0, "ret":Z
    :goto_0
    return v0
.end method

.method public blacklist startAdaptiveBrightness()V
    .locals 3

    .line 754
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {v0}, Lcom/samsung/android/gesture/IMotionRecognitionService;->startAdaptiveBrightness()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    goto :goto_0

    .line 755
    :catch_0
    move-exception v0

    .line 756
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MotionRecognitionManager"

    const-string v2, "RemoteException in startAdaptiveBrightness"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist stopAdaptiveBrightness()V
    .locals 3

    .line 765
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {v0}, Lcom/samsung/android/gesture/IMotionRecognitionService;->stopAdaptiveBrightness()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    goto :goto_0

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MotionRecognitionManager"

    const-string v2, "RemoteException in stopAdaptiveBrightness"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;)V
    .locals 8
    .param p1, "listener"    # Lcom/samsung/android/gesture/SemMotionEventListener;

    .line 479
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez v0, :cond_0

    .line 480
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 482
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 484
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 485
    iget-object v3, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    .line 486
    .local v3, "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, "listener_name":Ljava/lang/String;
    const-string v5, "MotionRecognitionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@ member "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    nop

    .end local v3    # "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    .end local v4    # "listener_name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 490
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 491
    iget-object v3, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    .line 492
    .restart local v3    # "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v4

    if-ne v4, p1, :cond_3

    .line 493
    iget-object v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    :try_start_1
    invoke-virtual {v3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v4

    if-eqz v4, :cond_2

    .line 496
    iget-object v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {v4, v3}, Lcom/samsung/android/gesture/IMotionRecognitionService;->unregisterCallback(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    :cond_2
    goto :goto_2

    .line 498
    :catch_0
    move-exception v4

    .line 499
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "MotionRecognitionManager"

    const-string v6, "RemoteException in unregisterListener: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 501
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-virtual {v3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->resetListener()V

    .line 502
    goto :goto_3

    .line 490
    .end local v3    # "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 505
    .end local v2    # "i":I
    :cond_4
    :goto_3
    const-string v2, "MotionRecognitionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .unregisterListener : / listener count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    nop

    .end local v1    # "size":I
    monitor-exit v0

    .line 507
    return-void

    .line 506
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;I)V
    .locals 8
    .param p1, "listener"    # Lcom/samsung/android/gesture/SemMotionEventListener;
    .param p2, "motion_events"    # I

    .line 448
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez v0, :cond_0

    .line 449
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 452
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 453
    .local v1, "size":I
    const/4 v2, 0x0

    .line 455
    .local v2, "motionevents":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 456
    iget-object v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    .line 457
    .local v4, "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v4}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 458
    invoke-virtual {v4}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v5

    not-int v6, p2

    and-int v2, v5, v6

    .line 459
    const-string v5, "MotionRecognitionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update listener "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = name :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",  motionevents = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    goto :goto_1

    .line 455
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 463
    .end local v3    # "i":I
    .end local v4    # "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;)V

    .line 465
    if-eqz v2, :cond_3

    .line 466
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;I)V

    .line 468
    .end local v1    # "size":I
    .end local v2    # "motionevents":I
    :cond_3
    monitor-exit v0

    .line 469
    return-void

    .line 468
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist useMotionAlways(Lcom/samsung/android/gesture/SemMotionEventListener;Z)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/gesture/SemMotionEventListener;
    .param p2, "bUseAlways"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 515
    return-void
.end method
