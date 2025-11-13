.class public Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


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
            "Lio/reactivex/subjects/PublishSubject;"
        }
    .end annotation
.end field

.field private static mLocalContext:Landroid/content/Context;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmHashMap()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static -$$Nest$smnotifyInstalled(Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$LanguageData;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mInstallResultSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifying for language "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static -$$Nest$smunregisterReceiver()V
    .locals 5

    const-string v0, "Exception while unregistering receiver: "

    sget-object v1, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregister"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_0

    sget-object v3, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mLocalContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v2, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->TAG:Ljava/lang/String;

    const-string v3, "receiver unregistered successfully"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    sput-object v1, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sput-object v1, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mLocalContext:Landroid/content/Context;

    goto :goto_2

    :goto_1
    :try_start_1
    sget-object v3, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    return-void

    :goto_3
    sput-object v1, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sput-object v1, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mLocalContext:Landroid/content/Context;

    throw v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mHashMap:Ljava/util/HashMap;

    new-instance v0, Lio/reactivex/subjects/PublishSubject;

    invoke-direct {v0}, Lio/reactivex/subjects/PublishSubject;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mInstallResultSubject:Lio/reactivex/subjects/PublishSubject;

    return-void
.end method

.method public static addDownloadPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add download Package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mLocalContext:Landroid/content/Context;

    if-nez v0, :cond_0

    sput-object p0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mLocalContext:Landroid/content/Context;

    :cond_0
    sget-object p0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "registering receiver ="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "package"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager$1;

    invoke-direct {p1}, Landroid/content/BroadcastReceiver;-><init>()V

    sput-object p1, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object p2, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mLocalContext:Landroid/content/Context;

    invoke-virtual {p2, p1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object p0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->TAG:Ljava/lang/String;

    const-string p1, "receiver registered successfully"

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static getInstallResult()Lio/reactivex/internal/operators/observable/ObservableHide;
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->mInstallResultSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableHide;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/Observable;)V

    return-object v1
.end method
