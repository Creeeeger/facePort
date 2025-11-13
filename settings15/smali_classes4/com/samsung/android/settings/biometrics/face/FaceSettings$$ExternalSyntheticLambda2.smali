.class public final synthetic Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    iput-boolean p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda2;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda2;->f$1:Z

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p0, :cond_0

    const/16 p0, 0x2101

    goto :goto_0

    :cond_0
    const/16 p0, 0x20d6

    :goto_0
    const/16 v0, 0x20d7

    invoke-static {p2, p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
