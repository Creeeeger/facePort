.class public final Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog$1;
.super Landroid/hardware/face/FaceManager$RemovalCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog$1;->this$0:Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog;

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRemovalError(Landroid/hardware/face/Face;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/hardware/face/FaceManager$RemovalCallback;->onRemovalError(Landroid/hardware/face/Face;ILjava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog$1;->this$0:Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method public final onRemovalSucceeded(Landroid/hardware/face/Face;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/hardware/face/FaceManager$RemovalCallback;->onRemovalSucceeded(Landroid/hardware/face/Face;I)V

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.BIOMETRIC_ENROLL"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog$1;->this$0:Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog;

    invoke-virtual {p2}, Lcom/android/internal/app/AlertActivity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog$1;->this$0:Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog;

    invoke-virtual {p2, p1}, Lcom/android/internal/app/AlertActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "FaceReEnrollDialog"

    const-string p2, "Failed to startActivity"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog$1;->this$0:Lcom/android/settings/homepage/contextualcards/FaceReEnrollDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method
