.class public final Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$FingerprintChallengeGenerator$generateChallenge$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;


# instance fields
.field public final synthetic $it:Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$generateChallenge$1;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$generateChallenge$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$FingerprintChallengeGenerator$generateChallenge$1$1;->$it:Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$generateChallenge$1;

    return-void
.end method


# virtual methods
.method public final onChallengeGenerated(IIJ)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$FingerprintChallengeGenerator$generateChallenge$1$1;->$it:Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$generateChallenge$1;

    const-string v1, "generateChallenge, invalid Credential or IllegalStateException"

    const-string v2, ", revokeGkPwHandle:"

    const-string v3, "generateChallenge(), model:"

    iget-wide v10, v0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$generateChallenge$1;->$gkPwHandle:J

    iget-object v12, v0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$generateChallenge$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-boolean v13, v0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$generateChallenge$1;->$revokeGkPwHandle:Z

    const-string v14, "AutoCredentialViewModel"

    iget-object v15, v0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$generateChallenge$1;->this$0:Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;

    const/4 v9, 0x3

    const/4 v7, 0x0

    move-object v4, v15

    move-wide v5, v10

    move-object/from16 p0, v12

    move-object v12, v7

    move-wide/from16 v7, p3

    move/from16 v9, p2

    :try_start_0
    invoke-static/range {v4 .. v9}, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->access$requestGatekeeperHat(Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;JJI)[B

    move-result-object v0

    iget-object v4, v15, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->credentialModel:Lcom/android/settings/biometrics2/ui/model/CredentialModel;

    iget-object v5, v4, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->clock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->updateChallengeMillis:Ljava/lang/Long;

    move-wide/from16 v5, p3

    iput-wide v5, v4, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->challenge:J

    iget-object v5, v4, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->clock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->updateTokenMillis:Ljava/lang/Long;

    iput-object v0, v4, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->token:[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_0

    iget-object v0, v15, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->removeGatekeeperPasswordHandle(J)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->isValidCredential()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v14, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$generateChallenge$1$onChallengeGenerated$1;

    invoke-direct {v0, v15, v12}, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$generateChallenge$1$onChallengeGenerated$1;-><init>(Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    move-object/from16 v4, p0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v5, 0x3

    move-object/from16 v4, p0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v5, 0x3

    move-object/from16 v4, p0

    :try_start_1
    const-string v6, "generateChallenge, IllegalStateException"

    invoke-static {v14, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v13, :cond_1

    iget-object v0, v15, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->removeGatekeeperPasswordHandle(J)V

    :cond_1
    iget-object v0, v15, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->credentialModel:Lcom/android/settings/biometrics2/ui/model/CredentialModel;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->isValidCredential()Z

    invoke-static {v14, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$generateChallenge$1$onChallengeGenerated$1;

    invoke-direct {v0, v15, v12}, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$generateChallenge$1$onChallengeGenerated$1;-><init>(Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    invoke-static {v4, v12, v12, v0, v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_2
    return-void

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v13, :cond_3

    iget-object v6, v15, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->removeGatekeeperPasswordHandle(J)V

    :cond_3
    iget-object v6, v15, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->credentialModel:Lcom/android/settings/biometrics2/ui/model/CredentialModel;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->isValidCredential()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v14, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$generateChallenge$1$onChallengeGenerated$1;

    invoke-direct {v1, v15, v12}, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$generateChallenge$1$onChallengeGenerated$1;-><init>(Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v12, v12, v1, v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_4
    throw v0
.end method
