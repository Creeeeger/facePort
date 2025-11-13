.class public final Lcom/android/systemui/util/sensors/SensorModule_ProvideSecondaryProximitySensorFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Provider;"
    }
.end annotation


# instance fields
.field private final thresholdSensorBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/sensors/SensorModule_ProvideSecondaryProximitySensorFactory;->thresholdSensorBuilderProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/SensorModule_ProvideSecondaryProximitySensorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            ")",
            "Lcom/android/systemui/util/sensors/SensorModule_ProvideSecondaryProximitySensorFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/sensors/SensorModule_ProvideSecondaryProximitySensorFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/sensors/SensorModule_ProvideSecondaryProximitySensorFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideSecondaryProximitySensor(Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;)Lcom/android/systemui/util/sensors/ThresholdSensor;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/util/sensors/SensorModule;->provideSecondaryProximitySensor(Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;)Lcom/android/systemui/util/sensors/ThresholdSensor;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/util/sensors/ThresholdSensor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/sensors/SensorModule_ProvideSecondaryProximitySensorFactory;->thresholdSensorBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;

    invoke-static {p0}, Lcom/android/systemui/util/sensors/SensorModule_ProvideSecondaryProximitySensorFactory;->provideSecondaryProximitySensor(Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;)Lcom/android/systemui/util/sensors/ThresholdSensor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/SensorModule_ProvideSecondaryProximitySensorFactory;->get()Lcom/android/systemui/util/sensors/ThresholdSensor;

    move-result-object p0

    return-object p0
.end method
