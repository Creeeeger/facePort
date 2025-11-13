.class public final Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$setupFooterBarAndScrollView$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$setupFooterBarAndScrollView$2;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;

    return-void
.end method


# virtual methods
.method public final onRequireScrollStateChanged(Z)V
    .locals 2

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment$setupFooterBarAndScrollView$2;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollIntroV2Fragment;->fingerprintScrollViewModel$delegate:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintScrollViewModel;

    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintScrollViewModel;->_hasReadConsentScreen:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_1
    return-void
.end method
