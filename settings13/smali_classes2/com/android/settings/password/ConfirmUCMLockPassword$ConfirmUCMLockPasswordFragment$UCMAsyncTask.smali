.class public Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;
.super Landroid/os/AsyncTask;
.source "ConfirmUCMLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UCMAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private csNameUri:Ljava/lang/String;

.field private opCode:I

.field final synthetic this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;


# direct methods
.method public static synthetic $r8$lambda$fplSpTP18Y6tJ58VXMOep5PG4ak(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;ILandroid/content/Intent;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->lambda$startVerifyPassword$0(ILandroid/content/Intent;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/VerifyCredentialResponse;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Ljava/lang/String;I)V
    .locals 1

    .line 906
    iput-object p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, -0x1

    .line 903
    iput p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->opCode:I

    const/4 p1, 0x0

    .line 904
    iput-object p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->csNameUri:Ljava/lang/String;

    .line 907
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 908
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UCMAsyncTask csNameUri : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " opCode : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConfirmUCMLockPasswordFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_0
    iput p3, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->opCode:I

    .line 911
    iput-object p2, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->csNameUri:Ljava/lang/String;

    return-void
.end method

.method private checkPassword()V
    .locals 5

    .line 1038
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fgetmFromSettings(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v0

    const v2, 0x10004

    if-ne v0, v2, :cond_2

    .line 1039
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->csNameUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v2}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fgetmUserId(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/ucm/UCMUtils;->generatePassword(Ljava/lang/String;I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 1042
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1043
    iget-object v3, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-boolean v4, v3, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mReturnGatekeeperPassword:Z

    if-eqz v4, :cond_0

    .line 1044
    invoke-static {v3}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$misInternalActivity(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    .line 1045
    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->startVerifyPassword(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Intent;I)V

    return-void

    .line 1049
    :cond_0
    iget-boolean v4, v3, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mForceVerifyPath:Z

    if-eqz v4, :cond_1

    .line 1050
    invoke-static {v3}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$misInternalActivity(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1051
    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->startVerifyPassword(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Intent;I)V

    return-void

    .line 1055
    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->startCheckPassword(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Intent;)V

    return-void

    .line 1059
    :cond_2
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fgetmCredentialCheckResultTracker(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fgetmUserId(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)I

    move-result p0

    invoke-virtual {v0, v1, v2, v1, p0}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void
.end method

.method private getUCMStatus()Ljava/lang/Integer;
    .locals 6

    .line 1007
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ConfirmUCMLockPasswordFragment"

    const-string v1, "getUCMStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->csNameUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/settings/ucm/UCMUtils;->getStatus(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 1009
    aget v1, v0, v1

    const/4 v2, 0x1

    .line 1010
    aget v2, v0, v2

    const/4 v3, 0x2

    .line 1011
    aget v3, v0, v3

    .line 1012
    iget-object v4, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    const/4 v5, 0x3

    aget v5, v0, v5

    invoke-static {v4, v5}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fputmPinMinLength(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;I)V

    .line 1013
    iget-object v4, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    const/4 v5, 0x4

    aget v5, v0, v5

    invoke-static {v4, v5}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fputmPinMaxLength(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;I)V

    .line 1014
    iget-object v4, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    const/4 v5, 0x5

    aget v5, v0, v5

    invoke-static {v4, v5}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fputmPukMinLength(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;I)V

    .line 1015
    iget-object v4, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    const/4 v5, 0x6

    aget v0, v0, v5

    invoke-static {v4, v0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fputmPukMaxLength(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;I)V

    .line 1016
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setState(II)V

    const/16 v0, 0x83

    if-eq v1, v0, :cond_1

    const/16 v0, 0x84

    if-eq v1, v0, :cond_1

    const/16 v0, 0x85

    if-eq v1, v0, :cond_1

    .line 1019
    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {p0, v3}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setErrorState(I)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$startVerifyPassword$0(ILandroid/content/Intent;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 5

    .line 1067
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fputmPendingLockCheck(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Landroid/os/AsyncTask;)V

    .line 1068
    invoke-virtual {p5}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1069
    iget-object v2, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-boolean v2, v2, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    and-int/2addr p1, v2

    if-eqz p1, :cond_0

    .line 1072
    invoke-virtual {p5}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperPasswordHandle()J

    move-result-wide v3

    const-string p1, "gk_pw_handle"

    .line 1071
    invoke-virtual {p2, p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 1076
    :cond_0
    invoke-virtual {p5}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object p1

    const-string p5, "hw_auth_token"

    .line 1074
    invoke-virtual {p2, p5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :goto_0
    const-string/jumbo p1, "password"

    .line 1078
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1080
    iget-object p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p3, -0x1

    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1081
    iget-object p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fgetmCredentialCheckResultTracker(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;

    move-result-object p1

    iget-object p3, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {p3}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fgetmUserId(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)I

    move-result p3

    invoke-virtual {p1, v2, p2, v1, p3}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 1083
    iget-object p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 1085
    :cond_1
    iget-object p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    sget p3, Lcom/android/settings/R$string;->sc_pin_dialog_associationerror:I

    .line 1086
    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 1085
    invoke-static {p1, p3}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$mupdateDetails(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Ljava/lang/String;)V

    .line 1087
    iget-object p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$mresetState(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V

    .line 1088
    iget-object p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object p1, p1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {p1, v1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setErrorState(I)V

    .line 1090
    :goto_1
    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fgetmCredentialCheckResultTracker(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;

    move-result-object p0

    invoke-virtual {p0, v0, p2, p6, p4}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void
.end method

.method private startCheckPassword(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Intent;)V
    .locals 4

    .line 1102
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fgetmLockPatternUtils(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v2}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fgetmUserId(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)I

    move-result v2

    new-instance v3, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$1;-><init>(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;Landroid/content/Intent;Lcom/android/internal/widget/LockscreenCredential;)V

    invoke-static {v1, p1, v2, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fputmPendingLockCheck(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Landroid/os/AsyncTask;)V

    return-void
.end method

.method private startVerifyPassword(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Intent;I)V
    .locals 9

    .line 1064
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget v7, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    .line 1065
    invoke-static {v0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fgetmUserId(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)I

    move-result v0

    .line 1066
    new-instance v8, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move v3, p3

    move-object v4, p2

    move-object v5, p1

    move v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;ILandroid/content/Intent;Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 1093
    iget-object p2, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {p2}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fgetmUserId(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)I

    move-result v1

    if-ne v7, v1, :cond_0

    .line 1094
    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fgetmLockPatternUtils(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p0

    invoke-static {p0, p1, v0, p3, v8}, Lcom/android/internal/widget/LockPatternChecker;->verifyCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object p0

    goto :goto_0

    .line 1096
    :cond_0
    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fgetmLockPatternUtils(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p0

    invoke-static {p0, p1, v0, p3, v8}, Lcom/android/internal/widget/LockPatternChecker;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object p0

    :goto_0
    invoke-static {p2, p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fputmPendingLockCheck(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Landroid/os/AsyncTask;)V

    return-void
.end method

.method private updateUI()V
    .locals 6

    .line 1122
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v0

    const-string v1, "ConfirmUCMLockPasswordFragment"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "updateUI"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v0

    const v2, 0x10004

    const/4 v3, 0x0

    if-ne v0, v2, :cond_5

    .line 1124
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "StateMachine.DONE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fgetmFromSettings(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1126
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ConfirmUCMLockPassword from settings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_2
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    sget v1, Lcom/android/settings/R$string;->ucm_loading:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$mupdateDetails(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Ljava/lang/String;)V

    .line 1128
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$mresetState(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V

    .line 1129
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {v0, v3}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setErrorState(I)V

    goto/16 :goto_3

    .line 1131
    :cond_3
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "ConfirmUCMLockPassword from outside, Notification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_4
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fgetmCsName(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fgetmLockPatternUtils(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetmCurrentPassword()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->csNameUri:Ljava/lang/String;

    .line 1133
    invoke-static {v4}, Lcom/samsung/android/settings/ucm/UCMUtils;->generatePassword(Ljava/lang/String;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v4

    .line 1132
    invoke-static {v0, v1, v2, v4}, Lcom/samsung/android/settings/ucm/UCMUtils;->saveUCMPasswordAndSetConfigurationInfo(Ljava/lang/String;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;)V

    .line 1134
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 1135
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_3

    .line 1138
    :cond_5
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getErrorState()I

    move-result v0

    const v1, 0x10001

    const-string v2, "\n"

    if-eqz v0, :cond_b

    const v4, 0x10006

    if-eq v0, v4, :cond_a

    const/16 v4, 0x20

    const/4 v5, 0x1

    if-eq v0, v4, :cond_8

    const/16 v1, 0x21

    if-eq v0, v1, :cond_7

    .line 1170
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$mgetUCMService(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1171
    iget-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$mgetUCMService(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v2}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fgetmCsNameUri(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getDetailErrorMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_6
    const-string v1, ""

    :goto_0
    if-nez v1, :cond_e

    .line 1175
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/settings/ucm/UCMUtils;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1179
    :catch_0
    iget-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/settings/ucm/UCMUtils;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 1155
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    sget v4, Lcom/android/settings/R$string;->ucm_incorrect_puk:I

    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v2, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    .line 1156
    invoke-virtual {v2}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getAttemptsRemaining()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$mgetRemainingCount(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1157
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v0, v5}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$mshowMISCInfo(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Z)V

    goto/16 :goto_2

    .line 1145
    :cond_8
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    sget v4, Lcom/android/settings/R$string;->ucm_enter_puk:I

    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v2, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    .line 1147
    invoke-virtual {v2}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getAttemptsRemaining()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$mgetRemainingCount(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1148
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v0, v5}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$mshowMISCInfo(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Z)V

    goto :goto_2

    .line 1150
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    sget v4, Lcom/android/settings/R$string;->sim_bad_pin:I

    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v2, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    .line 1151
    invoke-virtual {v2}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getAttemptsRemaining()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$mgetRemainingCount(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1142
    :cond_a
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    sget v1, Lcom/android/settings/R$string;->ucm_pins_do_not_match:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1160
    :cond_b
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v0

    .line 1161
    iget-object v4, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v4, v0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$mgetDefaultDetails(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x10000

    if-eq v0, v5, :cond_d

    if-ne v0, v1, :cond_c

    goto :goto_1

    :cond_c
    move-object v1, v4

    goto :goto_2

    .line 1164
    :cond_d
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v2, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    .line 1165
    invoke-virtual {v2}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getAttemptsRemaining()I

    move-result v2

    .line 1164
    invoke-static {v1, v2}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$mgetRemainingCount(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1182
    :cond_e
    :goto_2
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v0, v1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$mupdateDetails(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Ljava/lang/String;)V

    .line 1183
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$mresetState(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V

    .line 1185
    :goto_3
    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {p0, v3}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setErrorState(I)V

    return-void
.end method

.method private verifyPin(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6

    .line 960
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v0

    const-string v1, "ConfirmUCMLockPasswordFragment"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "verifyPin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->csNameUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v2}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fgetmUserId(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)I

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/samsung/android/settings/ucm/UCMUtils;->verfiyODEPin(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object p1

    .line 962
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-virtual {v0, v3}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setAttemptsRemaining(I)V

    .line 963
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    const/4 v3, 0x2

    aget v3, p1, v3

    invoke-virtual {v0, v3}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setErrorState(I)V

    const/4 v0, 0x0

    .line 965
    aget v3, p1, v0

    const/16 v4, 0x83

    if-ne v3, v4, :cond_2

    .line 966
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "verifyPin : STATE_UNLOCKED"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_1
    iget-object v3, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v3, v3, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    const v4, 0x10004

    invoke-virtual {v3, v4}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setState(I)V

    .line 968
    iget-object v3, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v4}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fgetmUserId(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)I

    move-result v4

    const-string/jumbo v5, "universal_lock_switch_state"

    invoke-static {v3, v5, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 970
    iget-object v2, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v5, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 974
    :cond_2
    aget v2, p1, v0

    const/16 v3, 0x85

    if-ne v2, v3, :cond_4

    .line 975
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "verifyPin : STATE_BLOCKED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_3
    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    const v2, 0x10001

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setState(I)V

    .line 978
    :cond_4
    aget p0, p1, v0

    const/16 p1, 0x84

    if-ne p0, p1, :cond_5

    .line 979
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string/jumbo p0, "verifyPin : STATE_LOCKED"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private verifyPuk(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .line 986
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ConfirmUCMLockPasswordFragment"

    const-string/jumbo v1, "verifyPuk"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->csNameUri:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/settings/ucm/UCMUtils;->verifyPUK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    .line 988
    iget-object p2, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object p2, p2, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    const/4 v0, 0x1

    aget v1, p1, v0

    invoke-virtual {p2, v1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setAttemptsRemaining(I)V

    .line 989
    iget-object p2, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object p2, p2, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    const/4 v1, 0x2

    aget v1, p1, v1

    invoke-virtual {p2, v1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setErrorState(I)V

    const/4 p2, 0x0

    .line 991
    aget p1, p1, p2

    if-nez p1, :cond_1

    .line 992
    iget-object p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object p1, p1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    const v1, 0x10004

    invoke-virtual {p1, v1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setState(I)V

    .line 993
    iget-object p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object p1, p1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {p1, p2}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setErrorState(I)V

    .line 994
    iget-object p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fgetmUserId(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)I

    move-result v1

    const-string/jumbo v2, "universal_lock_switch_state"

    invoke-static {p1, v2, p2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 996
    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1000
    :cond_1
    iget-object p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object p1, p1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    const p2, 0x10001

    invoke-virtual {p1, p2}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setState(I)V

    .line 1001
    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    const/16 p1, 0x21

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->setErrorState(I)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5

    const/4 v0, 0x0

    .line 924
    :try_start_0
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ConfirmUCMLockPasswordFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UCMAsyncTask doInBackground : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 928
    :catch_0
    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->csNameUri:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 932
    :cond_1
    iget v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->opCode:I

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_5

    .line 941
    aget-object v0, p1, v0

    if-eqz v0, :cond_5

    aget-object p1, p1, v3

    if-eqz p1, :cond_5

    .line 944
    invoke-direct {p0, v0, p1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->verifyPuk(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 949
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->getUCMStatus()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 934
    aget-object p1, p1, v0

    if-eqz p1, :cond_5

    .line 936
    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->verifyPin(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 955
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->checkPassword()V

    :cond_6
    :goto_1
    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 898
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1

    .line 1027
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->updateUI()V

    .line 1028
    iget p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->opCode:I

    const/16 v0, 0x63

    if-eq p1, v0, :cond_1

    .line 1029
    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$mstopProgress(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1032
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConfirmUCMLockPasswordFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_0
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 898
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 916
    iget v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->opCode:I

    const/16 v1, 0x63

    if-eq v0, v1, :cond_0

    .line 917
    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$mstartProgress(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V

    :cond_0
    return-void
.end method
