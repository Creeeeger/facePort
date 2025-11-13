.class public Landroid/sec/clipboard/data/file/WrapFileClipData;
.super Ljava/lang/Object;
.source "WrapFileClipData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "WrapFileClipData"

.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private transient blacklist mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

.field private blacklist mDir:Ljava/io/File;

.field private blacklist mPath:Ljava/io/File;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 1
    .param p1, "clip"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setPersistableBundle(Landroid/os/PersistableBundle;)V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setClipData(Landroid/content/ClipData;)V

    .line 35
    :cond_0
    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 36
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/clipboard/util/FileHelper;->getNullFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    .line 37
    return-void
.end method

.method private blacklist loadData()Ljava/lang/Object;
    .locals 2

    .line 91
    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data/clipboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/sec/clipboard/util/CompatabilityHelper;->replacePathForCompatability(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    .line 93
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/sec/clipboard/util/CompatabilityHelper;->replacePathForCompatability(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDir:Ljava/io/File;

    .line 95
    :cond_0
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/util/FileHelper;->loadObjectFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private blacklist loadSemClipData(Lcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 5
    .param p1, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 99
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 100
    return v0

    .line 103
    :cond_0
    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 104
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->checkClipId()V

    .line 106
    iget-object v1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v1

    const-string v2, "WrapFileClipData"

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast v0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    .line 131
    .local v0, "htmlClipData":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->toLoad()V

    goto :goto_0

    .line 119
    .end local v0    # "htmlClipData":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    :pswitch_2
    iget-object v1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    .line 120
    .local v1, "imageData":Lcom/samsung/android/content/clipboard/data/SemImageClipData;
    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->toLoad()V

    .line 122
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v3, "tempFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 124
    const-string v4, "SemImageClipData is not exist. Hence return false"

    invoke-static {v2, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return v0

    .line 108
    .end local v1    # "imageData":Lcom/samsung/android/content/clipboard/data/SemImageClipData;
    .end local v3    # "tempFile":Ljava/io/File;
    :pswitch_3
    iget-object v1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    .line 109
    .local v1, "textData":Lcom/samsung/android/content/clipboard/data/SemTextClipData;
    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->toLoad()V

    .line 111
    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    const-string v3, "SemTextClipData is empty. Hence return false"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v0

    .line 135
    .end local v1    # "textData":Lcom/samsung/android/content/clipboard/data/SemTextClipData;
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public blacklist getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 1

    .line 40
    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->load()Z

    .line 43
    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    return-object v0
.end method

.method public blacklist getDir()Ljava/io/File;
    .locals 1

    .line 60
    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDir:Ljava/io/File;

    return-object v0
.end method

.method public blacklist getFile()Ljava/io/File;
    .locals 1

    .line 52
    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    return-object v0
.end method

.method public blacklist load()Z
    .locals 4

    .line 77
    invoke-direct {p0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->loadData()Ljava/lang/Object;

    move-result-object v0

    .line 78
    .local v0, "loadedData":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 79
    return v1

    .line 82
    :cond_0
    instance-of v2, v0, Lcom/samsung/android/content/clipboard/data/SemClipData;

    if-eqz v2, :cond_1

    .line 83
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-direct {p0, v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->loadSemClipData(Lcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v1

    return v1

    .line 85
    :cond_1
    const-string v2, "WrapFileClipData"

    const-string v3, "While loading data, no matching class found!"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return v1
.end method

.method public blacklist save()V
    .locals 3

    .line 68
    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    if-nez v0, :cond_0

    .line 69
    return-void

    .line 72
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->toSave()V

    .line 73
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    iget-object v2, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/util/FileHelper;->saveObjectFile(Ljava/io/File;Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public blacklist setClipData(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 1
    .param p1, "clip"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setClipData(Landroid/content/ClipData;)V

    .line 48
    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 49
    return-void
.end method

.method public blacklist setDir(Ljava/io/File;)V
    .locals 0
    .param p1, "dir"    # Ljava/io/File;

    .line 64
    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDir:Ljava/io/File;

    .line 65
    return-void
.end method

.method public blacklist setFile(Ljava/io/File;)V
    .locals 0
    .param p1, "path"    # Ljava/io/File;

    .line 56
    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    .line 57
    return-void
.end method
