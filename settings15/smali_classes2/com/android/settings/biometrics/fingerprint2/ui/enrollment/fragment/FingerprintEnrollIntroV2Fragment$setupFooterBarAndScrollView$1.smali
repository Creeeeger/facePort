.class public final Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$setupFooterBarAndScrollView$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$setupFooterBarAndScrollView$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$setupFooterBarAndScrollView$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    iget v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$setupFooterBarAndScrollView$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$setupFooterBarAndScrollView$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;->viewModel$delegate:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintEnrollIntroViewModel;

    sget-object p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;->$VALUES:[Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;

    throw p1

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$setupFooterBarAndScrollView$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;->viewModel$delegate:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintEnrollIntroViewModel;

    sget-object p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;->$VALUES:[Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
