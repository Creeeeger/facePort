.class public Landroid/hardware/motion/MotionRecognitionManager;
.super Lcom/samsung/android/gesture/SemMotionRecognitionManager;
.source "MotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist EVENT_CALL_POSE:I = 0x40000

.field public static final blacklist EVENT_DIRECT_CALLING:I = 0x400

.field public static final blacklist EVENT_FLAT:I = 0x2000

.field public static final blacklist EVENT_LCD_UP_STEADY:I = 0x10000

.field public static final blacklist EVENT_OVER_TURN:I = 0x1

.field public static final blacklist EVENT_REACTIVE_ALERT:I = 0x4

.field public static final blacklist EVENT_SMART_RELAY:I = 0x100000


# instance fields
.field private final blacklist sListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "mainLooper"    # Landroid/os/Looper;

    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;-><init>(Landroid/os/Looper;)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListeners:Ljava/util/ArrayList;

    .line 59
    return-void
.end method


# virtual methods
.method public blacklist registerListenerEvent(Landroid/hardware/motion/MRListener;I)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;
    .param p2, "motion_events"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 74
    return-void
.end method

.method public blacklist registerListenerEvent(Landroid/hardware/motion/MRListener;IILandroid/os/Handler;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;
    .param p2, "motion_sensors"    # I
    .param p3, "motion_events"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    const-string v0, "MotionRecognitionService"

    const-string v1, "deprecated API. use com.samsung.android.gesture.SemMotionRecognitionManager."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method public blacklist registerListenerEvent(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;
    .param p2, "motion_events"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;IILandroid/os/Handler;)V

    .line 85
    return-void
.end method

.method public blacklist setMotionAngle(Landroid/hardware/motion/MRListener;I)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;
    .param p2, "status"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    return-void
.end method

.method public blacklist setSmartMotionAngle(Landroid/hardware/motion/MRListener;I)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;
    .param p2, "status"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 183
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 184
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;

    .line 185
    .local v3, "l":Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->-$$Nest$fgetmoldListener(Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;)Landroid/hardware/motion/MRListener;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 186
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->-$$Nest$fgetmListener(Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;)Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v4

    invoke-super {p0, v4, p2}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->setSmartMotionAngle(Lcom/samsung/android/gesture/SemMotionEventListener;I)V

    .line 187
    monitor-exit v0

    return-void

    .line 183
    .end local v3    # "l":Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    .line 192
    return-void

    .line 190
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist unregisterListener(Landroid/hardware/motion/MRListener;)V
    .locals 8
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 134
    .local v1, "size":I
    const/4 v2, 0x0

    .line 135
    .local v2, "motionevents":I
    const/4 v3, 0x0

    .line 136
    .local v3, "l":Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 137
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;

    move-object v3, v5

    .line 138
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->-$$Nest$fgetmoldListener(Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;)Landroid/hardware/motion/MRListener;

    move-result-object v5

    if-ne v5, p1, :cond_0

    .line 139
    const-string v5, "MotionRecognitionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unregisterListener "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    goto :goto_1

    .line 136
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 143
    .end local v4    # "i":I
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 144
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 145
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;->-$$Nest$fgetmListener(Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;)Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v4

    invoke-super {p0, v4}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;)V

    .line 148
    .end local v1    # "size":I
    .end local v2    # "motionevents":I
    .end local v3    # "l":Landroid/hardware/motion/MotionRecognitionManager$ListenerDelegate;
    :cond_2
    monitor-exit v0

    .line 149
    return-void

    .line 148
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist unregisterListener(Landroid/hardware/motion/MRListener;I)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;
    .param p2, "motion_events"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    invoke-virtual {p0, p1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 123
    return-void
.end method

.method public blacklist useMotionAlways(Landroid/hardware/motion/MRListener;Z)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;
    .param p2, "bUseAlways"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    return-void
.end method
