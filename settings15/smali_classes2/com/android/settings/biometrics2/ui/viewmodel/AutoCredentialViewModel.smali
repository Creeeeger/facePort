.class public final Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final _generateChallengeFailedFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final challengeGenerator:Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$FingerprintChallengeGenerator;

.field public final credentialModel:Lcom/android/settings/biometrics2/ui/model/CredentialModel;

.field public isGeneratingChallengeDuringCheckingCredential:Z

.field public final lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$FingerprintChallengeGenerator;Lcom/android/settings/biometrics2/ui/model/CredentialModel;)V
    .locals 1

    const-string v0, "lockPatternUtils"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    iput-object p2, p0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p3, p0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->challengeGenerator:Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$FingerprintChallengeGenerator;

    iput-object p4, p0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->credentialModel:Lcom/android/settings/biometrics2/ui/model/CredentialModel;

    const/4 p1, 0x7

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {p2, p2, p3, p1}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->_generateChallengeFailedFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    return-void
.end method

.method public static final access$requestGatekeeperHat(Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;JJI)[B
    .locals 6

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtils;->verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    const-string p1, "verifyGatekeeperPasswordHandle(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/android/settings/biometrics/BiometricUtils$GatekeeperCredentialNotMatchException;

    const-string p1, "Unable to request Gatekeeper HAT"

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/BiometricUtils$GatekeeperCredentialNotMatchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final generateChallenge(JZLandroidx/lifecycle/LifecycleCoroutineScopeImpl;)V
    .locals 7

    new-instance v6, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$generateChallenge$1;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$generateChallenge$1;-><init>(Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;JZLandroidx/lifecycle/LifecycleCoroutineScopeImpl;)V

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->challengeGenerator:Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$FingerprintChallengeGenerator;

    iput-object v6, p1, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$FingerprintChallengeGenerator;->callback:Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$generateChallenge$1;

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->credentialModel:Lcom/android/settings/biometrics2/ui/model/CredentialModel;

    iget p0, p0, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->userId:I

    new-instance p2, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$FingerprintChallengeGenerator$generateChallenge$1$1;

    invoke-direct {p2, v6}, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$FingerprintChallengeGenerator$generateChallenge$1$1;-><init>(Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$generateChallenge$1;)V

    iget-object p1, p1, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$FingerprintChallengeGenerator;->fingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    iget-object p1, p1, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, p0, p2}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    return-void
.end method

.method public final isValidCredential()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->credentialModel:Lcom/android/settings/biometrics2/ui/model/CredentialModel;

    iget v1, p0, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->token:[B

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
