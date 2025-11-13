.class public final Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/fragment/UdfpsEnrollFragment$onViewCreated$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/fragment/UdfpsEnrollFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/fragment/UdfpsEnrollFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/fragment/UdfpsEnrollFragment$onViewCreated$1$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/fragment/UdfpsEnrollFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/fragment/UdfpsEnrollFragment$onViewCreated$1$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/fragment/UdfpsEnrollFragment;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/fragment/UdfpsEnrollFragment;->getViewModel()Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/viewmodel/UdfpsViewModel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;->$VALUES:[Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;

    const/4 p0, 0x0

    throw p0
.end method
