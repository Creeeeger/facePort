.class public Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;
.super Ljava/lang/Object;
.source "SemShareImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SemShareImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemShareImageCacheParams"
.end annotation


# instance fields
.field public blacklist diskCacheDir:Ljava/io/File;

.field public blacklist diskCacheEnabled:Z

.field public blacklist diskCacheSize:I

.field public blacklist initDiskCacheOnCreate:Z

.field public blacklist memCacheSize:I

.field public blacklist memoryCacheEnabled:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diskCacheDirectoryName"    # Ljava/lang/String;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    const/16 v0, 0x7800

    iput v0, p0, Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;->memCacheSize:I

    .line 387
    const/high16 v0, 0x1e00000

    iput v0, p0, Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;->diskCacheSize:I

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;->memoryCacheEnabled:Z

    .line 390
    iput-boolean v0, p0, Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;->diskCacheEnabled:Z

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;->initDiskCacheOnCreate:Z

    .line 402
    invoke-static {p1, p2}, Lcom/samsung/android/share/SemShareImageCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;->diskCacheDir:Ljava/io/File;

    .line 403
    return-void
.end method
