.class public Lcom/samsung/android/knox/application/ApplicationPolicy;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"


# static fields
.field public static final DEVICE_ASSISTANCE_ACTIVITY_TASK:Landroid/content/Intent;

.field public static final DEVICE_ASSISTANCE_SERVICE_TASK:Landroid/content/Intent;

.field public static final LAUNCHER_TASK:Landroid/content/Intent;

.field public static final OPEN_DIALER_TASK:Landroid/content/Intent;

.field public static final OPEN_PDF_TASK:Landroid/content/Intent;

.field public static final OPEN_URL_TASK:Landroid/content/Intent;

.field public static final PLAY_AUDIO_TASK:Landroid/content/Intent;

.field public static final PLAY_VIDEO_TASK:Landroid/content/Intent;

.field public static final SMS_MMS_TASK:Landroid/content/Intent;

.field private static TAG:Ljava/lang/String; = "ApplicationPolicy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mExternalDependencyInjector:Lcom/samsung/android/knox/ExternalDependencyInjector;

.field private mService:Lcom/samsung/android/knox/application/IApplicationPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 490
    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createSmsMmsTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->SMS_MMS_TASK:Landroid/content/Intent;

    .line 505
    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createLauncherTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->LAUNCHER_TASK:Landroid/content/Intent;

    .line 520
    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createOpenURLTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->OPEN_URL_TASK:Landroid/content/Intent;

    .line 536
    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createOpenPDFTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->OPEN_PDF_TASK:Landroid/content/Intent;

    .line 556
    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createOpenDialerTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->OPEN_DIALER_TASK:Landroid/content/Intent;

    .line 570
    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createAudioTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->PLAY_AUDIO_TASK:Landroid/content/Intent;

    .line 589
    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createVideoTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->PLAY_VIDEO_TASK:Landroid/content/Intent;

    .line 603
    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createAssistActivityTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->DEVICE_ASSISTANCE_ACTIVITY_TASK:Landroid/content/Intent;

    .line 615
    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createAssistServiceTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->DEVICE_ASSISTANCE_SERVICE_TASK:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;Lcom/samsung/android/knox/ExternalDependencyInjector;)V
    .locals 0

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 305
    iput-object p2, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 306
    iput-object p3, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mExternalDependencyInjector:Lcom/samsung/android/knox/ExternalDependencyInjector;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;Lcom/samsung/android/knox/application/IApplicationPolicy;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 312
    new-instance v0, Lcom/samsung/android/knox/application/ApplicationPolicy$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/application/ApplicationPolicy$1;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;Lcom/samsung/android/knox/ExternalDependencyInjector;)V

    .line 313
    iput-object p3, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    return-void
.end method

.method private static createAssistActivityTask()Landroid/content/Intent;
    .locals 2

    .line 606
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static createAssistServiceTask()Landroid/content/Intent;
    .locals 2

    .line 618
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.voice.VoiceInteractionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static createAudioTask()Landroid/content/Intent;
    .locals 3

    .line 578
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "content://audio.mp3"

    .line 579
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "audio/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static createLauncherTask()Landroid/content/Intent;
    .locals 2

    .line 508
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 509
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 510
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static createOpenDialerTask()Landroid/content/Intent;
    .locals 2

    .line 559
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "tel:"

    .line 560
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private static createOpenPDFTask()Landroid/content/Intent;
    .locals 3

    .line 544
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 545
    new-instance v1, Ljava/io/File;

    const-string v2, "file.pdf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 546
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static createOpenURLTask()Landroid/content/Intent;
    .locals 2

    .line 523
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 524
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.BROWSABLE"

    .line 525
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "http://"

    .line 526
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private static createSmsMmsTask()Landroid/content/Intent;
    .locals 2

    .line 493
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 494
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "smsto:"

    .line 495
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private static createVideoTask()Landroid/content/Intent;
    .locals 2

    .line 592
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "video/*"

    .line 593
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private getService()Lcom/samsung/android/knox/application/IApplicationPolicy;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    if-nez v0, :cond_0

    const-string v0, "application_policy"

    .line 319
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 318
    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 321
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    return-object p0
.end method


# virtual methods
.method public getApplicationStateEnabled(Ljava/lang/String;)Z
    .locals 1

    .line 996
    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 998
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationStateEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1000
    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method logUsage(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4763
    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    return-void
.end method

.method logUsage(Ljava/lang/String;Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4768
    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    return-void
.end method
