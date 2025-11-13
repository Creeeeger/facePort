.class public final synthetic Lcom/android/systemui/util/sensors/ProximityCheck$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/sensors/ProximityCheck;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/sensors/ProximityCheck;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximityCheck$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/util/sensors/ProximityCheck;

    return-void
.end method


# virtual methods
.method public final onThresholdCrossed(Lcom/android/systemui/util/sensors/ThresholdSensorEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximityCheck$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/util/sensors/ProximityCheck;

    invoke-static {p0, p1}, Lcom/android/systemui/util/sensors/ProximityCheck;->$r8$lambda$4GqM3ZWhi2d7puELmRbZT92Udd8(Lcom/android/systemui/util/sensors/ProximityCheck;Lcom/android/systemui/util/sensors/ThresholdSensorEvent;)V

    return-void
.end method
