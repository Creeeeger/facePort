.class public final Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$setupFooterBarAndScrollView$3$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $primaryButton:Lcom/google/android/setupcompat/template/FooterButton;

.field public final synthetic $secondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

.field public final synthetic this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/template/FooterButton;Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;Lcom/google/android/setupcompat/template/FooterButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$setupFooterBarAndScrollView$3$1;->$primaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$setupFooterBarAndScrollView$3$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;

    iput-object p3, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$setupFooterBarAndScrollView$3$1;->$secondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$setupFooterBarAndScrollView$3$1;->$secondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$setupFooterBarAndScrollView$3$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f142a01

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$setupFooterBarAndScrollView$3$1;->$primaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    invoke-virtual {p2, p0}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
