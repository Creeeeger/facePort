.class public final Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractor;


# instance fields
.field public final credentialKind:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final displayStateInteractor:Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractor;

.field public final isConfirmationRequired:Lkotlinx/coroutines/flow/Flow;

.field public final isCredentialAllowed:Lkotlinx/coroutines/flow/Flow;

.field public final lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final prompt:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

.field public final promptKind:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final promptRepository:Lcom/android/systemui/biometrics/data/repository/PromptRepository;

.field public final sensorType:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepository;Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractor;Lcom/android/systemui/biometrics/data/repository/PromptRepository;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->displayStateInteractor:Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractor;

    iput-object p3, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->promptRepository:Lcom/android/systemui/biometrics/data/repository/PromptRepository;

    iput-object p4, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p3, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;

    iget-object v0, p3, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->promptInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, p3, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->challenge:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, p3, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->userId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v3, p3, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->promptKind:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v4, p3, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->opPackageName:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v5, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;

    const/4 p2, 0x0

    invoke-direct {v5, p2}, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function6;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->prompt:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    iget-object v0, p3, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->promptKind:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->promptKind:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, p3, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->isConfirmationRequired:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->isConfirmationRequired:Lkotlinx/coroutines/flow/Flow;

    iget-object p3, p3, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->promptInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$special$$inlined$map$1;

    invoke-direct {v0, p3}, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->isCredentialAllowed:Lkotlinx/coroutines/flow/Flow;

    new-instance v0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$credentialKind$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$credentialKind$1;-><init>(Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;Lkotlin/coroutines/Continuation;)V

    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p2, p4, p3, v0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->credentialKind:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    check-cast p1, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;->sensorType:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->sensorType:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method


# virtual methods
.method public final resetPrompt(J)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->promptRepository:Lcom/android/systemui/biometrics/data/repository/PromptRepository;

    check-cast p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;

    iget-object v0, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->_requestId:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long p1, p1, v1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->_promptInfo:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->_userId:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->_challenge:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->_promptKind:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v0, Lcom/android/systemui/biometrics/shared/model/PromptKind$None;->INSTANCE:Lcom/android/systemui/biometrics/shared/model/PromptKind$None;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->_opPackageName:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "PromptRepositoryImpl"

    const-string p1, "Ignoring unsetPrompt - requestId mismatch"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final setPrompt(Landroid/hardware/biometrics/PromptInfo;IJLcom/android/systemui/biometrics/shared/model/BiometricModalities;JLjava/lang/String;ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->promptKind:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/shared/model/PromptKind;

    invoke-interface {v0}, Lcom/android/systemui/biometrics/shared/model/PromptKind;->isCredential()Z

    move-result v0

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->customBiometricPrompt()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/Flags;->constraintBp()V

    sget v1, Lcom/android/systemui/biometrics/Utils;->$r8$clinit:I

    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/biometrics/Utils;->isDeviceCredentialAllowed(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getContentView()Landroid/hardware/biometrics/PromptContentView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->isContentViewMoreOptionsButtonUsed()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/android/systemui/biometrics/shared/model/PromptKind$None;->INSTANCE:Lcom/android/systemui/biometrics/shared/model/PromptKind$None;

    const/4 v2, 0x0

    if-eqz p9, :cond_2

    iget-object p5, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p5, p2}, Lcom/android/systemui/biometrics/Utils;->getCredentialType(Lcom/android/internal/widget/LockPatternUtils;I)Lcom/android/systemui/biometrics/shared/model/PromptKind;

    move-result-object v1

    goto :goto_4

    :cond_2
    sget p9, Lcom/android/systemui/biometrics/Utils;->$r8$clinit:I

    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result p9

    and-int/lit16 p9, p9, 0xff

    if-eqz p9, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_7

    :goto_2
    if-eqz p10, :cond_6

    iget-object p9, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->displayStateInteractor:Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractor;

    check-cast p9, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;

    iget-object p9, p9, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->isLargeScreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p9, p9, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p9}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p9

    check-cast p9, Ljava/lang/Boolean;

    invoke-virtual {p9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p9

    if-eqz p9, :cond_4

    sget-object p9, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric$PaneType;->ONE_PANE_LARGE_SCREEN_LANDSCAPE:Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric$PaneType;

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    sget-object p9, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric$PaneType;->ONE_PANE_NO_SENSOR_LANDSCAPE:Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric$PaneType;

    goto :goto_3

    :cond_5
    sget-object p9, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric$PaneType;->TWO_PANE_LANDSCAPE:Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric$PaneType;

    :goto_3
    new-instance p10, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric;

    invoke-direct {p10, p5, p9}, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric;-><init>(Lcom/android/systemui/biometrics/shared/model/BiometricModalities;Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric$PaneType;)V

    move-object v1, p10

    goto :goto_4

    :cond_6
    new-instance p9, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric;

    const/4 p10, 0x2

    invoke-direct {p9, p5, v2, p10, v2}, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric;-><init>(Lcom/android/systemui/biometrics/shared/model/BiometricModalities;Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric$PaneType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, p9

    goto :goto_4

    :cond_7
    invoke-static {p1}, Lcom/android/systemui/biometrics/Utils;->isDeviceCredentialAllowed(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result p5

    if-eqz p5, :cond_8

    iget-object p5, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p5, p2}, Lcom/android/systemui/biometrics/Utils;->getCredentialType(Lcom/android/internal/widget/LockPatternUtils;I)Lcom/android/systemui/biometrics/shared/model/PromptKind;

    move-result-object v1

    :cond_8
    :goto_4
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->promptRepository:Lcom/android/systemui/biometrics/data/repository/PromptRepository;

    check-cast p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;

    iget-object p6, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->_promptKind:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p6, v2, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p6, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->_userId:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p6, v2, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->_requestId:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p3, v2, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->_challenge:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p2, v2, p5}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->_promptInfo:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p2, v2, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->_opPackageName:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v2, p8}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
