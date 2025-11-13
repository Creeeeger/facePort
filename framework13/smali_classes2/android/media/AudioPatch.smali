.class public Landroid/media/AudioPatch;
.super Ljava/lang/Object;
.source "AudioPatch.java"


# instance fields
.field private final greylist mHandle:Landroid/media/AudioHandle;

.field private final greylist-max-o mSinks:[Landroid/media/AudioPortConfig;

.field private final greylist-max-o mSources:[Landroid/media/AudioPortConfig;


# direct methods
.method constructor greylist-max-r <init>(Landroid/media/AudioHandle;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)V
    .locals 0
    .param p1, "patchHandle"    # Landroid/media/AudioHandle;
    .param p2, "sources"    # [Landroid/media/AudioPortConfig;
    .param p3, "sinks"    # [Landroid/media/AudioPortConfig;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/media/AudioPatch;->mHandle:Landroid/media/AudioHandle;

    .line 43
    iput-object p2, p0, Landroid/media/AudioPatch;->mSources:[Landroid/media/AudioPortConfig;

    .line 44
    iput-object p3, p0, Landroid/media/AudioPatch;->mSinks:[Landroid/media/AudioPortConfig;

    .line 45
    return-void
.end method


# virtual methods
.method public greylist-max-o id()I
    .locals 1

    .line 67
    iget-object v0, p0, Landroid/media/AudioPatch;->mHandle:Landroid/media/AudioHandle;

    invoke-virtual {v0}, Landroid/media/AudioHandle;->id()I

    move-result v0

    return v0
.end method

.method public greylist sinks()[Landroid/media/AudioPortConfig;
    .locals 1

    .line 60
    iget-object v0, p0, Landroid/media/AudioPatch;->mSinks:[Landroid/media/AudioPortConfig;

    return-object v0
.end method

.method public greylist sources()[Landroid/media/AudioPortConfig;
    .locals 1

    .line 52
    iget-object v0, p0, Landroid/media/AudioPatch;->mSources:[Landroid/media/AudioPortConfig;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 8

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "mHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Landroid/media/AudioPatch;->mHandle:Landroid/media/AudioHandle;

    invoke-virtual {v1}, Landroid/media/AudioHandle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, " mSources: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Landroid/media/AudioPatch;->mSources:[Landroid/media/AudioPortConfig;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, ", "

    if-ge v4, v2, :cond_0

    aget-object v6, v1, v4

    .line 78
    .local v6, "source":Landroid/media/AudioPortConfig;
    invoke-virtual {v6}, Landroid/media/AudioPortConfig;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .end local v6    # "source":Landroid/media/AudioPortConfig;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    :cond_0
    const-string/jumbo v1, "} mSinks: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, p0, Landroid/media/AudioPatch;->mSinks:[Landroid/media/AudioPortConfig;

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 83
    .local v4, "sink":Landroid/media/AudioPortConfig;
    invoke-virtual {v4}, Landroid/media/AudioPortConfig;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .end local v4    # "sink":Landroid/media/AudioPortConfig;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 86
    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
