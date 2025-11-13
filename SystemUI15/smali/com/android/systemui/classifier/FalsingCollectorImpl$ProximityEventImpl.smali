.class public final Lcom/android/systemui/classifier/FalsingCollectorImpl$ProximityEventImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;


# instance fields
.field public final mThresholdSensorEvent:Lcom/android/systemui/util/sensors/ThresholdSensorEvent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/sensors/ThresholdSensorEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$ProximityEventImpl;->mThresholdSensorEvent:Lcom/android/systemui/util/sensors/ThresholdSensorEvent;

    return-void
.end method


# virtual methods
.method public final getCovered()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$ProximityEventImpl;->mThresholdSensorEvent:Lcom/android/systemui/util/sensors/ThresholdSensorEvent;

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ThresholdSensorEvent;->getBelow()Z

    move-result p0

    return p0
.end method

.method public final getTimestampNs()J
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$ProximityEventImpl;->mThresholdSensorEvent:Lcom/android/systemui/util/sensors/ThresholdSensorEvent;

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ThresholdSensorEvent;->getTimestampNs()J

    move-result-wide v0

    return-wide v0
.end method
