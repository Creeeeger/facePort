.class public final synthetic Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    sget p1, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p9, :cond_0

    if-eqz p5, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/android/settings/biometrics/face/FaceEnrollEducation$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
