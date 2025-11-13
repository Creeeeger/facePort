.class public final Lcom/android/systemui/biometrics/ui/binder/Spaghetti;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

.field public final lockoutErrorStrings:Ljava/util/List;

.field public modalities:Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

.field public final view:Landroid/view/View;

.field public final viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->view:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->applicationContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    const/4 p2, 0x0

    const/4 p3, 0x3

    invoke-direct {p1, p2, p2, p3, p2}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;-><init>(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Landroid/hardware/face/FaceSensorPropertiesInternal;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->modalities:Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    const/4 p1, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    iget-object p4, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->applicationContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p4, p3, v0}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->lockoutErrorStrings:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final ignoreUnsuccessfulEventsFrom(Lcom/android/systemui/biometrics/shared/model/BiometricModality;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->modalities:Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->getHasFaceAndFingerprint()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/biometrics/shared/model/BiometricModality;->Face:Lcom/android/systemui/biometrics/shared/model/BiometricModality;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->modalities:Lcom/android/systemui/biometrics/shared/model/BiometricModalities;

    iget-object p1, p1, Lcom/android/systemui/biometrics/shared/model/BiometricModalities;->faceProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    if-eqz p1, :cond_0

    iget p1, p1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorStrength:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->lockoutErrorStrings:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final onAuthenticationFailed(ILjava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/android/systemui/biometrics/shared/model/BiometricModalityKt;->asBiometricModality(I)Lcom/android/systemui/biometrics/shared/model/BiometricModality;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    iget-object v0, v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;->_fingerprintStartMode:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/biometrics/ui/viewmodel/FingerprintStartMode;->Pending:Lcom/android/systemui/biometrics/ui/viewmodel/FingerprintStartMode;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/systemui/biometrics/ui/viewmodel/FingerprintStartMode;->Delayed:Lcom/android/systemui/biometrics/ui/viewmodel/FingerprintStartMode;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onAuthenticationFailed$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onAuthenticationFailed$1;-><init>(Lcom/android/systemui/biometrics/ui/binder/Spaghetti;Ljava/lang/String;Lcom/android/systemui/biometrics/shared/model/BiometricModality;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onAuthenticationSucceeded(I)V
    .locals 2

    new-instance v0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onAuthenticationSucceeded$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onAuthenticationSucceeded$1;-><init>(ILcom/android/systemui/biometrics/ui/binder/Spaghetti;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onError(ILjava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/biometrics/shared/model/BiometricModalityKt;->asBiometricModality(I)Lcom/android/systemui/biometrics/shared/model/BiometricModality;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->ignoreUnsuccessfulEventsFrom(Lcom/android/systemui/biometrics/shared/model/BiometricModality;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onError$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onError$1;-><init>(Lcom/android/systemui/biometrics/ui/binder/Spaghetti;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p2, 0x3

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v0, v0, p1, p2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onHelp(ILjava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/biometrics/shared/model/BiometricModalityKt;->asBiometricModality(I)Lcom/android/systemui/biometrics/shared/model/BiometricModality;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->ignoreUnsuccessfulEventsFrom(Lcom/android/systemui/biometrics/shared/model/BiometricModality;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onHelp$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$onHelp$1;-><init>(Lcom/android/systemui/biometrics/ui/binder/Spaghetti;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p2, 0x3

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v0, v0, p1, p2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final startTransitionToCredentialUI()V
    .locals 3

    new-instance v0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$startTransitionToCredentialUI$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$startTransitionToCredentialUI$1;-><init>(Lcom/android/systemui/biometrics/ui/binder/Spaghetti;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
