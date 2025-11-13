.class public final Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$chooseLockResultCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$chooseLockResultCallback$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroidx/activity/result/ActivityResult;

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$chooseLockResultCallback$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->onChooseOrConfirmLockResult(ZLandroidx/activity/result/ActivityResult;)V

    return-void
.end method
