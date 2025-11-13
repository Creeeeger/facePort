.class Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SCSPackageDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    .line 34
    invoke-static {}, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 36
    invoke-static {}, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->-$$Nest$sfgetmHashMap()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 37
    invoke-static {p1, p0}, Lcom/samsung/android/settings/voiceinput/PackageUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 38
    new-instance v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$LanguageData;

    invoke-direct {v0, p2, p1}, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$LanguageData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->-$$Nest$smnotifyInstalled(Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$LanguageData;)V

    .line 39
    invoke-static {}, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->-$$Nest$sfgetmHashMap()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {}, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->-$$Nest$sfgetmHashMap()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 41
    invoke-static {}, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->-$$Nest$smunregisterReceiver()V

    :cond_0
    return-void
.end method
