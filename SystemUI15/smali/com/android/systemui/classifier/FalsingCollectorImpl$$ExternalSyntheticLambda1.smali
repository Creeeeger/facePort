.class public final synthetic Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;

    return-void
.end method


# virtual methods
.method public final onThresholdCrossed(Lcom/android/systemui/util/sensors/ThresholdSensorEvent;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/classifier/FalsingCollectorImpl$ProximityEventImpl;

    invoke-direct {v0, p1}, Lcom/android/systemui/classifier/FalsingCollectorImpl$ProximityEventImpl;-><init>(Lcom/android/systemui/util/sensors/ThresholdSensorEvent;)V

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/FalsingManager;->onProximityEvent(Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;)V

    return-void
.end method
