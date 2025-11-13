.class public final Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingIconTouchDialogKt$bindFingerprintEnrollEnrollingIconTouchDialog$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final INSTANCE:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingIconTouchDialogKt$bindFingerprintEnrollEnrollingIconTouchDialog$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingIconTouchDialogKt$bindFingerprintEnrollEnrollingIconTouchDialog$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingIconTouchDialogKt$bindFingerprintEnrollEnrollingIconTouchDialog$1;->INSTANCE:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingIconTouchDialogKt$bindFingerprintEnrollEnrollingIconTouchDialog$1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
