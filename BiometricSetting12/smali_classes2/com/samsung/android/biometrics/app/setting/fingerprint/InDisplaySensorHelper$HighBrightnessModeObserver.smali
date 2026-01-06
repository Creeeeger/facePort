.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;
.super Ljava/lang/Object;
.source "InDisplaySensorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HighBrightnessModeObserver"
.end annotation


# static fields
.field private static final DIS_PANEL_HBM_PATH:Ljava/lang/String; = "/sys/class/lcd/panel/actual_mask_brightness"

.field private static final sHbmObserverSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFileObserve:Landroid/os/FileObserver;

.field private mH:Landroid/os/Handler;

.field private final mListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRunnableOnEvent:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver$1;

    invoke-direct {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver$1;-><init>()V

    sput-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;->sHbmObserverSingleton:Landroid/util/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;->mListenerList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;->mH:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;->mRunnableOnEvent:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;->mRunnableOnEvent:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;
    .locals 1

    sget-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;->sHbmObserverSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;

    return-object v0
.end method


# virtual methods
.method public isEnabledHBM()Z
    .locals 7

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/lcd/panel/actual_mask_brightness"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->readFile(Ljava/io/File;)[B

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HBM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BSS_InDisplaySensorHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x30

    if-eq v4, v6, :cond_1

    :cond_0
    move v2, v5

    :cond_1
    return v2

    :cond_2
    return v2
.end method

.method public synthetic lambda$new$0$InDisplaySensorHelper$HighBrightnessModeObserver()V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;->isEnabledHBM()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;->mListenerList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v3, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeListener;->onChangedMode(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "BSS_InDisplaySensorHelper"

    const-string v6, "HighBrightnessModeObserver: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public observe(ZLcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeListener;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;->mListenerList:Ljava/util/ArrayList;

    monitor-enter v0

    if-eqz p1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "BSS_InDisplaySensorHelper"

    const-string v2, "HighBrightnessModeObserver.observe: exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;->mFileObserve:Landroid/os/FileObserver;

    if-nez v1, :cond_2

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver$2;

    const-string v2, "/sys/class/lcd/panel/actual_mask_brightness"

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver$2;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;->mFileObserve:Landroid/os/FileObserver;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;->mFileObserve:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v1, "BSS_InDisplaySensorHelper"

    const-string v2, "HighBrightnessModeObserver.observe: no exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;->mFileObserve:Landroid/os/FileObserver;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;->mFileObserve:Landroid/os/FileObserver;

    :cond_5
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
