.class public final Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;


# instance fields
.field public final listenerHandler:Landroid/os/Handler;

.field public final listeners:Ljava/util/List;

.field public final sensorListener:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$HingeAngleSensorListener;

.field public final sensorManager:Landroid/hardware/SensorManager;

.field public final singleThreadBgExecutor:Ljava/util/concurrent/Executor;

.field public started:Z


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->sensorManager:Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->singleThreadBgExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->listenerHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$HingeAngleSensorListener;

    invoke-direct {p1, p0}, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$HingeAngleSensorListener;-><init>(Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;)V

    iput-object p1, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->sensorListener:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$HingeAngleSensorListener;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->listeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/core/util/Consumer;

    iget-object p0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->listeners:Ljava/util/List;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final start()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->singleThreadBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$start$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$start$1;-><init>(Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final stop()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->singleThreadBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$stop$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$stop$1;-><init>(Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
