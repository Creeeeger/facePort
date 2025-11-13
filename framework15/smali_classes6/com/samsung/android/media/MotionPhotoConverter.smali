.class public Lcom/samsung/android/media/MotionPhotoConverter;
.super Ljava/lang/Object;
.source "MotionPhotoConverter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MotionPhotoConverter"

.field private static blacklist sInstance:Lcom/samsung/android/media/MotionPhotoConverter;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Lcom/samsung/android/media/MotionPhotoConverter;
    .locals 2

    const-class v0, Lcom/samsung/android/media/MotionPhotoConverter;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/media/MotionPhotoConverter;->sInstance:Lcom/samsung/android/media/MotionPhotoConverter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/media/MotionPhotoConverter;

    invoke-direct {v1}, Lcom/samsung/android/media/MotionPhotoConverter;-><init>()V

    sput-object v1, Lcom/samsung/android/media/MotionPhotoConverter;->sInstance:Lcom/samsung/android/media/MotionPhotoConverter;

    :cond_0
    sget-object v1, Lcom/samsung/android/media/MotionPhotoConverter;->sInstance:Lcom/samsung/android/media/MotionPhotoConverter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized blacklist convertToMp4(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "MotionPhoto_Data"

    invoke-static {v1, v2}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method
