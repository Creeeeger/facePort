.class public final synthetic Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$$ExternalSyntheticLambda1;->f$0:Z

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$$ExternalSyntheticLambda1;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$$ExternalSyntheticLambda1;->f$0:Z

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$$ExternalSyntheticLambda1;->f$1:Landroid/app/Activity;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "screen_lock_force_destroy"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
