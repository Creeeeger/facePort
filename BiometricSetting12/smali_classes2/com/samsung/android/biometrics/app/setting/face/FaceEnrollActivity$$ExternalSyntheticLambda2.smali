.class public final synthetic Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda2;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->lambda$showFaceErrorDialog$5$FaceEnrollActivity(ILandroid/content/DialogInterface;)V

    return-void
.end method
