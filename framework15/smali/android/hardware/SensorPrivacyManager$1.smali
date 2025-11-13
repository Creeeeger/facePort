.class Landroid/hardware/SensorPrivacyManager$1;
.super Landroid/hardware/ISensorPrivacyListener$Stub;
.source "SensorPrivacyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorPrivacyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/SensorPrivacyManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-direct {p0}, Landroid/hardware/ISensorPrivacyListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onSensorPrivacyChanged$0(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;III)V
    .locals 2

    new-instance v0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;-><init>(IIILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams-IA;)V

    invoke-interface {p0, v0}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;->onSensorPrivacyChanged(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSensorPrivacyChanged$1(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;IIZ)V
    .locals 2

    new-instance v0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;-><init>(IIZLandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams-IA;)V

    invoke-interface {p0, v0}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;->onSensorPrivacyChanged(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSensorPrivacyStateChanged$2(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;III)V
    .locals 2

    new-instance v0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;-><init>(IIILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams-IA;)V

    invoke-interface {p0, v0}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;->onSensorPrivacyChanged(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;)V

    return-void
.end method


# virtual methods
.method public blacklist onSensorPrivacyChanged(IIZ)V
    .locals 6

    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-static {v0}, Landroid/hardware/SensorPrivacyManager;->-$$Nest$fgetmLock(Landroid/hardware/SensorPrivacyManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-static {v2}, Landroid/hardware/SensorPrivacyManager;->-$$Nest$fgetmToggleListeners(Landroid/hardware/SensorPrivacyManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-static {v2}, Landroid/hardware/SensorPrivacyManager;->-$$Nest$fgetmToggleListeners(Landroid/hardware/SensorPrivacyManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraPrivacyAllowlist()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x2

    :goto_1
    iget-object v4, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-static {v4}, Landroid/hardware/SensorPrivacyManager;->-$$Nest$fgetmToggleListeners(Landroid/hardware/SensorPrivacyManager;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    new-instance v5, Landroid/hardware/SensorPrivacyManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v5, v2, p1, p2, v3}, Landroid/hardware/SensorPrivacyManager$1$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;III)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_1
    iget-object v3, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-static {v3}, Landroid/hardware/SensorPrivacyManager;->-$$Nest$fgetmToggleListeners(Landroid/hardware/SensorPrivacyManager;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/SensorPrivacyManager$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2, p1, p2, p3}, Landroid/hardware/SensorPrivacyManager$1$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;IIZ)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onSensorPrivacyStateChanged(III)V
    .locals 5

    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-static {v0}, Landroid/hardware/SensorPrivacyManager;->-$$Nest$fgetmLock(Landroid/hardware/SensorPrivacyManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-static {v2}, Landroid/hardware/SensorPrivacyManager;->-$$Nest$fgetmToggleListeners(Landroid/hardware/SensorPrivacyManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-static {v2}, Landroid/hardware/SensorPrivacyManager;->-$$Nest$fgetmToggleListeners(Landroid/hardware/SensorPrivacyManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    iget-object v3, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-static {v3}, Landroid/hardware/SensorPrivacyManager;->-$$Nest$fgetmToggleListeners(Landroid/hardware/SensorPrivacyManager;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/SensorPrivacyManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1, p2, p3}, Landroid/hardware/SensorPrivacyManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;III)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
