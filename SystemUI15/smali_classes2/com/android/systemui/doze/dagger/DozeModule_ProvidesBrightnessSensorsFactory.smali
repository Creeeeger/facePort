.class public final Lcom/android/systemui/doze/dagger/DozeModule_ProvidesBrightnessSensorsFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final contextProvider:Ljavax/inject/Provider;

.field public final dozeParametersProvider:Ljavax/inject/Provider;

.field public final sensorManagerProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesBrightnessSensorsFactory;->sensorManagerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesBrightnessSensorsFactory;->contextProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesBrightnessSensorsFactory;->dozeParametersProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static providesBrightnessSensors(Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeParameters;)[Ljava/util/Optional;
    .locals 7

    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f030053

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    const v1, 0x7f130553

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_2

    aget-object v4, p2, v2

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aget-object v6, p2, v2

    invoke-static {p0, v5, v6}, Lcom/android/systemui/doze/DozeSensors;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Optional;

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    new-array v0, p2, [Ljava/util/Optional;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/doze/DozeSensors;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    aput-object p0, v0, v2

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesBrightnessSensorsFactory;->sensorManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesBrightnessSensorsFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesBrightnessSensorsFactory;->dozeParametersProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesBrightnessSensorsFactory;->providesBrightnessSensors(Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeParameters;)[Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
