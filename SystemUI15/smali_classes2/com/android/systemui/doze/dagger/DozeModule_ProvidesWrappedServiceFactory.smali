.class public final Lcom/android/systemui/doze/dagger/DozeModule_ProvidesWrappedServiceFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final bgExecutorProvider:Ljavax/inject/Provider;

.field public final dozeHostProvider:Ljavax/inject/Provider;

.field public final dozeMachineServiceProvider:Ljavax/inject/Provider;

.field public final dozeParametersProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesWrappedServiceFactory;->dozeMachineServiceProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesWrappedServiceFactory;->dozeHostProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesWrappedServiceFactory;->dozeParametersProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesWrappedServiceFactory;->bgExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static providesWrappedService(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/DozeParameters;Ljava/util/concurrent/Executor;)Lcom/android/systemui/doze/DozeMachine$Service$Delegate;
    .locals 1

    new-instance v0, Lcom/android/systemui/doze/DozeBrightnessHostForwarder;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/systemui/doze/DozeBrightnessHostForwarder;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/doze/DozeHost;Ljava/util/concurrent/Executor;)V

    iget-object p0, p2, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    const p1, 0x7f050058

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    const-string p1, "doze.display.supported"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;

    invoke-direct {p0, v0, p3}, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Ljava/util/concurrent/Executor;)V

    move-object v0, p0

    :cond_0
    iget-object p0, p2, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    const p1, 0x7f05005f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_1

    new-instance p0, Lcom/android/systemui/doze/DozeSuspendScreenStatePreventingAdapter;

    invoke-direct {p0, v0, p3}, Lcom/android/systemui/doze/DozeSuspendScreenStatePreventingAdapter;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Ljava/util/concurrent/Executor;)V

    move-object v0, p0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesWrappedServiceFactory;->dozeMachineServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/DozeMachine$Service;

    iget-object v1, p0, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesWrappedServiceFactory;->dozeHostProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/doze/DozeHost;

    iget-object v2, p0, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesWrappedServiceFactory;->dozeParametersProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object p0, p0, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesWrappedServiceFactory;->bgExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/doze/dagger/DozeModule_ProvidesWrappedServiceFactory;->providesWrappedService(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/DozeParameters;Ljava/util/concurrent/Executor;)Lcom/android/systemui/doze/DozeMachine$Service$Delegate;

    move-result-object p0

    return-object p0
.end method
