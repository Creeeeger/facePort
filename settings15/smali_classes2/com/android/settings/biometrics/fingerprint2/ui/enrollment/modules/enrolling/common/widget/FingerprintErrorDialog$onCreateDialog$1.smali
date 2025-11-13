.class public final Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/common/widget/FingerprintErrorDialog$onCreateDialog$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/common/widget/FingerprintErrorDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/common/widget/FingerprintErrorDialog;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/common/widget/FingerprintErrorDialog$onCreateDialog$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/common/widget/FingerprintErrorDialog$onCreateDialog$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/common/widget/FingerprintErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/common/widget/FingerprintErrorDialog$onCreateDialog$1;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/common/widget/FingerprintErrorDialog$onCreateDialog$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/common/widget/FingerprintErrorDialog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "onContinue"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/common/widget/FingerprintErrorDialog$onCreateDialog$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/common/widget/FingerprintErrorDialog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "onContinue"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/common/widget/FingerprintErrorDialog$onCreateDialog$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/common/widget/FingerprintErrorDialog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "onTryAgain"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
