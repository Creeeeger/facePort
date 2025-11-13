.class public final Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$authenticationState$1$authenticationStateListener$1;
.super Landroid/hardware/biometrics/AuthenticationStateListener$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $updateAuthenticationState:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$authenticationState$1$authenticationStateListener$1;->$updateAuthenticationState:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthenticationAcquired(Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$authenticationState$1$authenticationStateListener$1;->$updateAuthenticationState:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Acquired;

    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->getBiometricSourceType()Landroid/hardware/biometrics/BiometricSourceType;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->getRequestReason()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryKt;->access$toAuthenticationReason(I)Lcom/android/systemui/biometrics/shared/model/AuthenticationReason;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;->getAcquiredInfo()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Acquired;-><init>(Landroid/hardware/biometrics/BiometricSourceType;Lcom/android/systemui/biometrics/shared/model/AuthenticationReason;I)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onAuthenticationError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$authenticationState$1$authenticationStateListener$1;->$updateAuthenticationState:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Error;

    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->getBiometricSourceType()Landroid/hardware/biometrics/BiometricSourceType;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->getErrString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->getErrCode()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->getRequestReason()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryKt;->access$toAuthenticationReason(I)Lcom/android/systemui/biometrics/shared/model/AuthenticationReason;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Error;-><init>(Landroid/hardware/biometrics/BiometricSourceType;Ljava/lang/String;ILcom/android/systemui/biometrics/shared/model/AuthenticationReason;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onAuthenticationFailed(Landroid/hardware/biometrics/events/AuthenticationFailedInfo;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$authenticationState$1$authenticationStateListener$1;->$updateAuthenticationState:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Failed;

    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->getBiometricSourceType()Landroid/hardware/biometrics/BiometricSourceType;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->getRequestReason()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryKt;->access$toAuthenticationReason(I)Lcom/android/systemui/biometrics/shared/model/AuthenticationReason;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->getUserId()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Failed;-><init>(Landroid/hardware/biometrics/BiometricSourceType;Lcom/android/systemui/biometrics/shared/model/AuthenticationReason;I)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onAuthenticationHelp(Landroid/hardware/biometrics/events/AuthenticationHelpInfo;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$authenticationState$1$authenticationStateListener$1;->$updateAuthenticationState:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Help;

    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->getBiometricSourceType()Landroid/hardware/biometrics/BiometricSourceType;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->getHelpString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->getHelpCode()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;->getRequestReason()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryKt;->access$toAuthenticationReason(I)Lcom/android/systemui/biometrics/shared/model/AuthenticationReason;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Help;-><init>(Landroid/hardware/biometrics/BiometricSourceType;Ljava/lang/String;ILcom/android/systemui/biometrics/shared/model/AuthenticationReason;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onAuthenticationStarted(Landroid/hardware/biometrics/events/AuthenticationStartedInfo;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$authenticationState$1$authenticationStateListener$1;->$updateAuthenticationState:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Started;

    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationStartedInfo;->getBiometricSourceType()Landroid/hardware/biometrics/BiometricSourceType;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationStartedInfo;->getRequestReason()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryKt;->access$toAuthenticationReason(I)Lcom/android/systemui/biometrics/shared/model/AuthenticationReason;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Started;-><init>(Landroid/hardware/biometrics/BiometricSourceType;Lcom/android/systemui/biometrics/shared/model/AuthenticationReason;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$authenticationState$1$authenticationStateListener$1;->$updateAuthenticationState:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Stopped;

    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;->getBiometricSourceType()Landroid/hardware/biometrics/BiometricSourceType;

    move-result-object p1

    sget-object v1, Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$NotRunning;->INSTANCE:Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$NotRunning;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Stopped;-><init>(Landroid/hardware/biometrics/BiometricSourceType;Lcom/android/systemui/biometrics/shared/model/AuthenticationReason;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onAuthenticationSucceeded(Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryImpl$authenticationState$1$authenticationStateListener$1;->$updateAuthenticationState:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Succeeded;

    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->getBiometricSourceType()Landroid/hardware/biometrics/BiometricSourceType;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->isIsStrongBiometric()Z

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->getRequestReason()I

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryKt;->access$toAuthenticationReason(I)Lcom/android/systemui/biometrics/shared/model/AuthenticationReason;

    move-result-object v3

    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;->getUserId()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/systemui/biometrics/shared/model/AuthenticationState$Succeeded;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ZLcom/android/systemui/biometrics/shared/model/AuthenticationReason;I)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
