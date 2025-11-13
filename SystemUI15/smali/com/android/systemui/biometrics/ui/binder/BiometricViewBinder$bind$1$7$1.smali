.class public final Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$7$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

.field public final synthetic $oldMode:Lcom/android/systemui/biometrics/ui/viewmodel/FingerprintStartMode;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/viewmodel/FingerprintStartMode;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$7$1;->$oldMode:Lcom/android/systemui/biometrics/ui/viewmodel/FingerprintStartMode;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$7$1;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/biometrics/ui/viewmodel/FingerprintStartMode;

    iget-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$7$1;->$oldMode:Lcom/android/systemui/biometrics/ui/viewmodel/FingerprintStartMode;

    sget-object v0, Lcom/android/systemui/biometrics/ui/viewmodel/FingerprintStartMode;->Pending:Lcom/android/systemui/biometrics/ui/viewmodel/FingerprintStartMode;

    if-ne p2, v0, :cond_0

    sget-object p2, Lcom/android/systemui/biometrics/ui/viewmodel/FingerprintStartMode;->Delayed:Lcom/android/systemui/biometrics/ui/viewmodel/FingerprintStartMode;

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewBinder$bind$1$7$1;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;->onStartDelayedFingerprintSensor()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
