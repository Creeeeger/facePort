.class public final synthetic Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/activity/result/ActivityResult;

    sget p1, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->$r8$clinit:I

    const/4 p1, -0x1

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
