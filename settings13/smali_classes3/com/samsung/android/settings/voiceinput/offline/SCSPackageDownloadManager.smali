.class public Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;
.super Ljava/lang/Object;
.source "SCSPackageDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$LanguageData;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "@VoiceIn: SCSPackageDownloadManager"

.field private static mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private static mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstallResultSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$LanguageData;",
            ">;"
        }
    .end annotation
.end field

.field private static mLocalContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmHashMap()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smnotifyInstalled(Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$LanguageData;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->notifyInstalled(Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$LanguageData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smunregisterReceiver()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->unregisterReceiver()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mHashMap:Ljava/util/HashMap;

    .line 20
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mInstallResultSubject:Lio/reactivex/subjects/PublishSubject;

    return-void
.end method

.method static addDownloadPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 72
    sget-object v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add download Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sput-object p0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mLocalContext:Landroid/content/Context;

    .line 74
    sget-object p0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {}, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->registerReceiver()V

    return-void
.end method

.method static getInstallResult()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$LanguageData;",
            ">;"
        }
    .end annotation

    .line 79
    sget-object v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mInstallResultSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0}, Lio/reactivex/Observable;->hide()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static notifyInstalled(Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$LanguageData;)V
    .locals 3

    .line 51
    sget-object v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mInstallResultSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 52
    sget-object v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifying for language "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static registerReceiver()V
    .locals 3

    .line 24
    sget-object v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registering receiver ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    sget-object v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    .line 26
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->TAG:Ljava/lang/String;

    const-string v1, "register receiver"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 30
    new-instance v1, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$1;

    invoke-direct {v1}, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$1;-><init>()V

    sput-object v1, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    sget-object v2, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static unregisterReceiver()V
    .locals 5

    .line 56
    sget-object v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->TAG:Ljava/lang/String;

    const-string v1, "unregister"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 58
    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 59
    sget-object v1, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->TAG:Ljava/lang/String;

    const-string v2, "unregister complete"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v1, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mLocalContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    :goto_0
    sput-object v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    sput-object v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mLocalContext:Landroid/content/Context;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 63
    :try_start_1
    sget-object v2, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 65
    :goto_2
    sput-object v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    sput-object v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mLocalContext:Landroid/content/Context;

    .line 67
    throw v1
.end method
