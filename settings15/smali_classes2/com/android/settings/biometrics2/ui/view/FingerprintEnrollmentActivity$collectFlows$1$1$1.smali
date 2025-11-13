.class public final Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$collectFlows$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$collectFlows$1$1$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$collectFlows$1$1$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    const/4 p2, 0x0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$collectFlows$1$1$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;

    const-string v2, "FingerprintEnrollmentActivity"

    const-string v3, ")"

    iget p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$collectFlows$1$1$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "errorDialogSetResultFlow("

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/activity/result/ActivityResult;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Landroidx/activity/result/ActivityResult;-><init>(ILandroid/content/Intent;)V

    sget p1, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->$r8$clinit:I

    invoke-virtual {v1, p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->onSetActivityResult(Landroidx/activity/result/ActivityResult;)V

    goto :goto_0

    :cond_1
    new-instance p0, Landroidx/activity/result/ActivityResult;

    invoke-direct {p0, p1, p2}, Landroidx/activity/result/ActivityResult;-><init>(ILandroid/content/Intent;)V

    sget p1, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->$r8$clinit:I

    invoke-virtual {v1, p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->onSetActivityResult(Landroidx/activity/result/ActivityResult;)V

    :goto_0
    return-object v0

    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "newErrorDialogFlow("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog;

    invoke-direct {p1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog;-><init>()V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v2, "error_msg_id"

    invoke-virtual {p2, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    const-string p2, "error-dialog"

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v0

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "generateChallengeFailedFlow("

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroidx/activity/result/ActivityResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p2}, Landroidx/activity/result/ActivityResult;-><init>(ILandroid/content/Intent;)V

    sget p1, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->$r8$clinit:I

    invoke-virtual {v1, p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->onSetActivityResult(Landroidx/activity/result/ActivityResult;)V

    return-object v0

    :pswitch_2
    check-cast p1, Landroidx/activity/result/ActivityResult;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "setResultLiveData("

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->$r8$clinit:I

    invoke-virtual {v1, p1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->onSetActivityResult(Landroidx/activity/result/ActivityResult;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
