.class public final synthetic Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

.field public final synthetic f$1:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    iput-object p2, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda2;->f$1:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda2;->f$1:Landroid/widget/Button;

    iget-object v0, p1, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->setChecked(Z)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p0, p1, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p1, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    iget-object p1, p1, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversityOnLayoutChangeListener:Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda4;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
