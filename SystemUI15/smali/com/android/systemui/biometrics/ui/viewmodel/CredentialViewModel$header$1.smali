.class final Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$header$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$header$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$header$1;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$header$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$header$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$header$1;->L$0:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$header$1;->Z$0:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$header$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$header$1;->label:I

    if-nez v0, :cond_7

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$header$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;

    iget-boolean p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$header$1;->Z$0:Z

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->customBiometricPrompt()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/Flags;->constraintBp()V

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iget-object p1, v1, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;->userInfo:Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;

    const-string v4, ""

    if-eqz v2, :cond_2

    move-object v5, v4

    goto :goto_2

    :cond_2
    iget-object v5, v1, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;->subtitle:Ljava/lang/String;

    :goto_2
    if-eqz v0, :cond_3

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;->contentView:Landroid/hardware/biometrics/PromptContentView;

    :goto_3
    move-object v6, v2

    goto :goto_4

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :goto_4
    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;->contentView:Landroid/hardware/biometrics/PromptContentView;

    if-eqz v0, :cond_4

    move-object v7, v4

    goto :goto_5

    :cond_4
    iget-object v0, v1, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;->description:Ljava/lang/String;

    move-object v7, v0

    :goto_5
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$header$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->applicationContext:Landroid/content/Context;

    iget v0, p1, Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;->deviceCredentialOwnerId:I

    sget v2, Lcom/android/systemui/biometrics/Utils;->$r8$clinit:I

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v3

    :cond_5
    if-eqz v3, :cond_6

    const v0, 0x7f080689

    goto :goto_6

    :cond_6
    const v0, 0x7f08068a

    :goto_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    new-instance v9, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;

    iget-object v3, v1, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;->title:Ljava/lang/String;

    iget-boolean v8, v1, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;->showEmergencyCallButton:Z

    move-object v0, v9

    move-object v2, p1

    move-object v4, v5

    move-object v5, v7

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;-><init>(Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/biometrics/PromptContentView;Landroid/graphics/drawable/Drawable;Z)V

    return-object v9

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
