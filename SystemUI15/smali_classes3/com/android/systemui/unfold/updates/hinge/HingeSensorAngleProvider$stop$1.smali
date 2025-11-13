.class public final Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$stop$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$stop$1;->this$0:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$stop$1;->this$0:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;

    iget-boolean v1, v0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->started:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v0, v0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->sensorListener:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$HingeAngleSensorListener;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object p0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider$stop$1;->this$0:Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/unfold/updates/hinge/HingeSensorAngleProvider;->started:Z

    return-void
.end method
