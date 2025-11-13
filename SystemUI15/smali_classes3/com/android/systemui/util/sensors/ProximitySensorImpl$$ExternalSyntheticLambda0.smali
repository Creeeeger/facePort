.class public final synthetic Lcom/android/systemui/util/sensors/ProximitySensorImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/sensors/ThresholdSensorEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/sensors/ThresholdSensorEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/sensors/ThresholdSensorEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/sensors/ThresholdSensorEvent;

    check-cast p1, Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

    invoke-static {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->$r8$lambda$a2FYFRYTWTmtjRmTu_Eg82FZOUY(Lcom/android/systemui/util/sensors/ThresholdSensorEvent;Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    return-void
.end method
