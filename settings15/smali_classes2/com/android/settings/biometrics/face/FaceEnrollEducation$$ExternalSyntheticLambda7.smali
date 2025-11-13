.class public final synthetic Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda7;->f$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    iput-object p2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda7;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda7;->f$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda7;->f$1:Landroid/content/Intent;

    sget p2, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->$r8$clinit:I

    const/4 p2, 0x2

    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/android/settings/biometrics/BiometricEnrollBase;->mNextLaunched:Z

    return-void
.end method
