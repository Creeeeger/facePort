.class Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceive result : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->-$$Nest$sfgetmHashMap()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/samsung/android/settings/voiceinput/PackageUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$LanguageData;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p2, v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$LanguageData;->language:Ljava/lang/String;

    iput-object p1, v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$LanguageData;->version:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->-$$Nest$smnotifyInstalled(Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$LanguageData;)V

    invoke-static {}, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->-$$Nest$sfgetmHashMap()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->-$$Nest$sfgetmHashMap()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->-$$Nest$smunregisterReceiver()V

    :cond_0
    return-void
.end method
