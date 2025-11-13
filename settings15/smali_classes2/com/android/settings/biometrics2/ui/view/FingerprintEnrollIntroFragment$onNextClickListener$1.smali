.class public final Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$onNextClickListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$onNextClickListener$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$onNextClickListener$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$onNextClickListener$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$onNextClickListener$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$onNextClickListener$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;->_viewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;->onSkipOrCancelButtonClick(Landroidx/lifecycle/LifecycleCoroutineScopeImpl;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$onNextClickListener$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$onNextClickListener$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;->_viewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;->onNextButtonClick(Landroidx/lifecycle/LifecycleCoroutineScopeImpl;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
