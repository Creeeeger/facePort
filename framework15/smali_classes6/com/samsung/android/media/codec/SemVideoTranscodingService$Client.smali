.class public Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;
.super Ljava/lang/Object;
.source "SemVideoTranscodingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/codec/SemVideoTranscodingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Client"
.end annotation


# instance fields
.field private final blacklist mImpl:Lcom/samsung/android/media/codec/client/ClientImpl;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/media/codec/IVideoTranscodingService;Ljava/lang/String;ILjava/util/Map;Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p5, p0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->setClient(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)V

    if-eqz p3, :cond_4

    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x64

    if-ne p3, v0, :cond_1

    new-instance v0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;-><init>(Lcom/samsung/android/media/codec/IVideoTranscodingService;Ljava/lang/String;ILjava/util/Map;Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)V

    iput-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mImpl:Lcom/samsung/android/media/codec/client/ClientImpl;

    goto :goto_2

    :cond_1
    const/16 v0, 0xc8

    if-eq p3, v0, :cond_3

    const/16 v0, 0xc9

    if-eq p3, v0, :cond_3

    const/16 v0, 0xca

    if-ne p3, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mImpl:Lcom/samsung/android/media/codec/client/ClientImpl;

    goto :goto_2

    :cond_3
    :goto_0
    new-instance v0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;-><init>(Lcom/samsung/android/media/codec/IVideoTranscodingService;Ljava/lang/String;ILjava/util/Map;Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)V

    iput-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mImpl:Lcom/samsung/android/media/codec/client/ClientImpl;

    goto :goto_2

    :cond_4
    :goto_1
    new-instance v0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;-><init>(Lcom/samsung/android/media/codec/IVideoTranscodingService;Ljava/lang/String;ILjava/util/Map;Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)V

    iput-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mImpl:Lcom/samsung/android/media/codec/client/ClientImpl;

    :goto_2
    return-void
.end method


# virtual methods
.method public blacklist isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mImpl:Lcom/samsung/android/media/codec/client/ClientImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist start()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mImpl:Lcom/samsung/android/media/codec/client/ClientImpl;

    invoke-virtual {v0}, Lcom/samsung/android/media/codec/client/ClientImpl;->start()V

    return-void
.end method

.method public whitelist stop()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mImpl:Lcom/samsung/android/media/codec/client/ClientImpl;

    invoke-virtual {v0}, Lcom/samsung/android/media/codec/client/ClientImpl;->stop()V

    return-void
.end method

.method public blacklist transcode()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->mImpl:Lcom/samsung/android/media/codec/client/ClientImpl;

    invoke-virtual {v0}, Lcom/samsung/android/media/codec/client/ClientImpl;->transcode()V

    return-void
.end method
