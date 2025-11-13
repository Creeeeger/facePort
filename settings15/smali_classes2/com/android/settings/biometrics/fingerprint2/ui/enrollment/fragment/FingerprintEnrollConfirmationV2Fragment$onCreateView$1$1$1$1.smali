.class public final Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollConfirmationV2Fragment$onCreateView$1$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $mixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

.field public final synthetic this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollConfirmationV2Fragment;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/template/FooterBarMixin;Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollConfirmationV2Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollConfirmationV2Fragment$onCreateView$1$1$1$1;->$mixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollConfirmationV2Fragment$onCreateView$1$1$1$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollConfirmationV2Fragment;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollConfirmationV2Fragment$onCreateView$1$1$1$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollConfirmationV2Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f140f9b

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollConfirmationV2Fragment$onCreateView$1$2;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollConfirmationV2Fragment$onCreateView$1$2;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollConfirmationV2Fragment;I)V

    new-instance p1, Lcom/google/android/setupcompat/template/FooterButton;

    const v1, 0x7f15045e

    const/4 v2, 0x7

    invoke-direct {p1, p2, v0, v2, v1}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollConfirmationV2Fragment$onCreateView$1$1$1$1;->$mixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
