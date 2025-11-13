.class Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$3;
.super Ljava/lang/Object;
.source "SecureFolderConfirmLockHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->showForgotPasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)V
    .locals 0

    .line 730
    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$3;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 734
    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$3;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {p2}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmKnoxEventList(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Ljava/util/ArrayList;

    move-result-object p2

    const/16 v0, 0x64

    const/16 v1, 0x3eb

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->addEvent(II)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$3;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {p2}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "activity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager;

    .line 737
    invoke-virtual {p2}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 738
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$3;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->lock_to_app_toast:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 740
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showForgotPasswordDialog : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$3;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmEffectiveUserId(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "KKG::SecureFolderConfirmLockHelper"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$3;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    const/4 p2, 0x0

    invoke-static {p0, v0, p2}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$mshowSFLockedView(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;ZZ)V

    .line 742
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void
.end method
