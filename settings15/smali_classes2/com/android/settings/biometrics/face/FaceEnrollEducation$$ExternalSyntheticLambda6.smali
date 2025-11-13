.class public final synthetic Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda6;->f$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda6;->f$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    sget v0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->$r8$clinit:I

    const v0, 0x7f0a0f78

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversity:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->mSwitchDiversityOnLayoutChangeListener:Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda4;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    return-void
.end method
