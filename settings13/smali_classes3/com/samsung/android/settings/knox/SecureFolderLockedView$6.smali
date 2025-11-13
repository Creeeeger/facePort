.class Lcom/samsung/android/settings/knox/SecureFolderLockedView$6;
.super Ljava/lang/Object;
.source "SecureFolderLockedView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/knox/SecureFolderLockedView;->showUninstallDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$6;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 452
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$6;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {p1}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->-$$Nest$fgetmKnoxEventList(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)Ljava/util/ArrayList;

    move-result-object p1

    const/16 p2, 0xb7

    const/16 v0, 0x729

    invoke-static {p2, v0}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->addEvent(II)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$6;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {p1}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->-$$Nest$fgetmAlertDialog(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)Landroid/app/AlertDialog;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 455
    invoke-static {p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->switchToProfile(I)V

    .line 458
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Sending uninst Event to sf userid:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$6;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {p2}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->-$$Nest$fgetmEffectiveUserId(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KKG::SecureFolderLockedView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$6;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {p1}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->-$$Nest$fgetmEffectiveUserId(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Sending uninstallation event to sf"

    .line 460
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$6;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {p1}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 466
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$6;->this$0:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->-$$Nest$fgetmEffectiveUserId(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "@"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "com.samsung.knox.securefolder.provider.removecontainer"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string p2, "RemoveContainer"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 468
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
