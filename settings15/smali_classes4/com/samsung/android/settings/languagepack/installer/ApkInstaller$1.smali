.class public final Lcom/samsung/android/settings/languagepack/installer/ApkInstaller$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller$1;->this$0:Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "INSTALLER_CALLBACK"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "failure"

    const-string/jumbo v2, "success"

    const-string v3, "]"

    const-string v4, "], packageName ["

    const-string v5, "PackageInstallerListener: result ["

    const-string v6, "ApkInstaller"

    const-string v7, "android.content.pm.extra.PACKAGE_NAME"

    const/4 v8, 0x1

    const-string v9, "android.content.pm.extra.STATUS"

    if-eqz v0, :cond_1

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], message ["

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller$1;->this$0:Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;

    invoke-virtual {p0, p2, v2}, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->updateInstallResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller$1;->this$0:Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;

    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->updateInstallResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "UNINSTALLER_CALLBACK"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller$1;->this$0:Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;

    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mPackages:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->notifyToListenerIfNeeded()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller$1;->this$0:Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;

    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->mPackages:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/languagepack/installer/ApkInstaller;->notifyToListenerIfNeeded()V

    :cond_3
    :goto_0
    return-void
.end method
