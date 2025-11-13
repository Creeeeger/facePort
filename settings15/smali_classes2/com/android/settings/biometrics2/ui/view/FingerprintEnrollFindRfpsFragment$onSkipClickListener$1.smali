.class public final Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindRfpsFragment$onSkipClickListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindRfpsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindRfpsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindRfpsFragment$onSkipClickListener$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindRfpsFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindRfpsFragment$onSkipClickListener$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindRfpsFragment;

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindRfpsFragment;->_viewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFindSensorViewModel;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFindSensorViewModel;->onSkipButtonClick$1()V

    return-void
.end method
