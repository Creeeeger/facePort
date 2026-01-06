.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;
.super Ljava/lang/Object;
.source "DisplayBrightnessListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener$OnBrightnessListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BSS_DisplayBrightnessListener"


# instance fields
.field private BRIGHTNESS_FILE_PATH:Ljava/lang/String;

.field private mFileObserver:Landroid/os/FileObserver;

.field private mH:Landroid/os/Handler;

.field private mLatestBrightness:I

.field private mListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener$OnBrightnessListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener$OnBrightnessListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;->mListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener$OnBrightnessListener;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;->mH:Landroid/os/Handler;

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "qcom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/sys/class/backlight/panel0-backlight/brightness"

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;->BRIGHTNESS_FILE_PATH:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "/sys/class/lcd/panel/device/backlight/panel/brightness"

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;->BRIGHTNESS_FILE_PATH:Ljava/lang/String;

    :goto_0
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener$1;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;->BRIGHTNESS_FILE_PATH:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;->mFileObserver:Landroid/os/FileObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;->mLatestBrightness:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;->mLatestBrightness:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;)Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener$OnBrightnessListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;->mListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener$OnBrightnessListener;

    return-object v0
.end method

.method private readFile(Ljava/io/File;)[B
    .locals 7

    const-string v0, "failed to close file"

    const-string v1, "BSS_DisplayBrightnessListener"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_6

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v4, v4, [B

    move-object v3, v4

    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_1

    nop

    nop

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v3

    :cond_1
    nop

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    goto :goto_2

    :catch_1
    move-exception v4

    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catchall_0
    move-exception v4

    goto :goto_3

    :catch_2
    move-exception v4

    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failure to read file : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :goto_2
    return-object v3

    :goto_3
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v5

    invoke-static {v1, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_3
    :goto_4
    nop

    :goto_5
    throw v4

    :cond_4
    :goto_6
    const-string v0, "Invalid file info, "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getBrightnessFromFile()I
    .locals 6

    const-string v0, "4"

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;->BRIGHTNESS_FILE_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;->readFile(Ljava/io/File;)[B

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    div-int/lit8 v0, v4, 0x64
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v0

    :cond_0
    return v4

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrightnessFromFile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BSS_DisplayBrightnessListener"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getLatestBrightness()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;->mLatestBrightness:I

    return v0
.end method

.method public observe(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    :goto_0
    return-void
.end method
