.class public final Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$collectPageStatusFlowIfNeed$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$collectPageStatusFlowIfNeed$1$1$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;

    return-void
.end method


# virtual methods
.method public final onRequireScrollStateChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$collectPageStatusFlowIfNeed$1$1$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;->_viewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;->setHasScrolledToBottom(ZLandroidx/lifecycle/LifecycleCoroutineScopeImpl;)V

    return-void
.end method
