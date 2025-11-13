.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/doze/dagger/DozeComponent;


# instance fields
.field public aODMachineProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public aODScreenBrightnessProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public aODUiProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public dozeAuthRemoverProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public final dozeComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;

.field public dozeDockHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public dozeFalsingManagerAdapterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public dozeMachineProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public final dozeMachineService:Lcom/android/systemui/doze/DozeMachine$Service;

.field public dozePauserProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public dozeScreenBrightnessProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public dozeScreenStateProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public dozeSuppressorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public dozeTriggersProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public dozeUiProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public dozeWallpaperStateProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public providesDozeWakeLockProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public providesWrappedServiceProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public final referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

.field public final referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/doze/DozeMachine$Service;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iput-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iput-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeMachineService:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-virtual {p0, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->initialize(Lcom/android/systemui/doze/DozeMachine$Service;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/doze/DozeMachine$Service;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/doze/DozeMachine$Service;)V

    return-void
.end method


# virtual methods
.method public final brightnessSensorOptionalOfSensorArray()[Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Optional<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->asyncSensorManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->dozeParametersProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesBrightnessSensorsFactory;->providesBrightnessSensors(Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeParameters;)[Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final getAODMachine()Lcom/android/systemui/doze/AODMachine;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->aODMachineProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/AODMachine;

    return-object p0
.end method

.method public final getDozeMachine()Lcom/android/systemui/doze/DozeMachine;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeMachineProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/DozeMachine;

    return-object p0
.end method

.method public final initialize(Lcom/android/systemui/doze/DozeMachine$Service;)V
    .locals 4

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;

    const/4 v3, 0x1

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->providesWrappedServiceProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;

    const/4 v3, 0x2

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->providesDozeWakeLockProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;

    const/4 v3, 0x3

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozePauserProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;

    const/4 v3, 0x4

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeFalsingManagerAdapterProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;

    const/4 v3, 0x5

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeTriggersProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;

    const/4 v3, 0x6

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeUiProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;

    const/16 v3, 0x8

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeScreenBrightnessProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;

    const/4 v3, 0x7

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeScreenStateProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;

    const/16 v3, 0x9

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeWallpaperStateProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;

    const/16 v3, 0xa

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeDockHandlerProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;

    const/16 v3, 0xb

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeAuthRemoverProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;

    const/16 v3, 0xc

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeSuppressorProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeMachineProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;

    const/16 v3, 0xe

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->aODUiProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;

    const/16 v3, 0xf

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->aODScreenBrightnessProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;

    const/16 v3, 0xd

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->aODMachineProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public final injectDozeScreenState(Lcom/android/systemui/doze/DozeScreenState;)Lcom/android/systemui/doze/DozeScreenState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->pluginAODManagerProvider:Ldagger/internal/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/doze/DozeScreenState;->mPluginAODManagerLazy:Ldagger/Lazy;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->aODTouchModeManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/aod/AODTouchModeManager;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->providePowerManagerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    iput-object p0, p1, Lcom/android/systemui/doze/DozeScreenState;->mPowerManager:Landroid/os/PowerManager;

    return-object p1
.end method

.method public final namedPartArray()[Lcom/android/systemui/doze/DozeMachine$Part;
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeFalsingManagerAdapterProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/doze/DozeFalsingManagerAdapter;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->aODUiProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/doze/AODUi;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeScreenStateProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/doze/DozeScreenState;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->aODScreenBrightnessProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/doze/AODScreenBrightness;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeWallpaperStateProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/doze/DozeWallpaperState;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeAuthRemoverProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/doze/DozeAuthRemover;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeSuppressorProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/doze/DozeSuppressor;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->dozeTransitionListenerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lcom/android/systemui/doze/DozeTransitionListener;

    filled-new-array/range {v1 .. v8}, [Lcom/android/systemui/doze/DozeMachine$Part;

    move-result-object p0

    check-cast p0, [Lcom/android/systemui/doze/DozeMachine$Part;

    return-object p0
.end method

.method public final partArray()[Lcom/android/systemui/doze/DozeMachine$Part;
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozePauserProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/doze/DozePauser;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeFalsingManagerAdapterProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/doze/DozeFalsingManagerAdapter;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeTriggersProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/doze/DozeTriggers;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeUiProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/doze/DozeUi;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeScreenStateProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/doze/DozeScreenState;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeScreenBrightnessProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/doze/DozeScreenBrightness;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeWallpaperStateProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/doze/DozeWallpaperState;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeDockHandlerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/doze/DozeDockHandler;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeAuthRemoverProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/doze/DozeAuthRemover;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->dozeSuppressorProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/systemui/doze/DozeSuppressor;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DozeComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->dozeTransitionListenerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v11, p0

    check-cast v11, Lcom/android/systemui/doze/DozeTransitionListener;

    filled-new-array/range {v1 .. v11}, [Lcom/android/systemui/doze/DozeMachine$Part;

    move-result-object p0

    check-cast p0, [Lcom/android/systemui/doze/DozeMachine$Part;

    return-object p0
.end method
