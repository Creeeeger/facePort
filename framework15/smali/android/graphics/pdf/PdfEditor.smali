.class public final Landroid/graphics/pdf/PdfEditor;
.super Ljava/lang/Object;
.source "PdfEditor.java"


# static fields
.field private static final blacklist sPdfiumLock:Ljava/lang/Object;


# instance fields
.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mInput:Landroid/os/ParcelFileDescriptor;

.field private greylist-max-o mNativeDocument:J

.field private greylist-max-o mPageCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/pdf/PdfEditor;->sPdfiumLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->SEEK_SET:I

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v0, v0, Landroid/system/StructStat;->st_size:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iput-object p1, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    sget-object v4, Landroid/graphics/pdf/PdfEditor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v5, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v5

    invoke-static {v5, v0, v1}, Landroid/graphics/pdf/PdfEditor;->nativeOpen(IJ)J

    move-result-wide v5

    iput-wide v5, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-wide v5, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v5, v6}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageCount(J)I

    move-result v5

    iput v5, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v2, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v3, "close"

    invoke-virtual {v2, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v5

    :try_start_4
    iget-wide v6, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v6, v7}, Landroid/graphics/pdf/PdfEditor;->nativeClose(J)V

    iput-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    nop

    throw v5

    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "file descriptor not seekable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "input cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o doClose()V
    .locals 6

    iget-wide v0, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/pdf/PdfEditor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v4, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v4, v5}, Landroid/graphics/pdf/PdfEditor;->nativeClose(J)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    :cond_1
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    return-void
.end method

.method private static native greylist-max-o nativeClose(J)V
.end method

.method private static native greylist-max-o nativeGetPageCount(J)I
.end method

.method private static native greylist-max-o nativeGetPageCropBox(JILandroid/graphics/Rect;)Z
.end method

.method private static native greylist-max-o nativeGetPageMediaBox(JILandroid/graphics/Rect;)Z
.end method

.method private static native greylist-max-o nativeGetPageSize(JILandroid/graphics/Point;)V
.end method

.method private static native greylist-max-o nativeOpen(IJ)J
.end method

.method private static native greylist-max-o nativeRemovePage(JI)I
.end method

.method private static native greylist-max-o nativeScaleForPrinting(J)Z
.end method

.method private static native greylist-max-o nativeSetPageCropBox(JILandroid/graphics/Rect;)V
.end method

.method private static native greylist-max-o nativeSetPageMediaBox(JILandroid/graphics/Rect;)V
.end method

.method private static native greylist-max-o nativeSetTransformAndClip(JIJIIII)V
.end method

.method private static native greylist-max-o nativeWrite(JI)V
.end method

.method private greylist-max-o throwIfClosed()V
    .locals 2

    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mInput:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfCropBoxNull(Landroid/graphics/Rect;)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cropBox cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfMediaBoxNull(Landroid/graphics/Rect;)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mediaBox cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfNotNullAndNotAfine(Landroid/graphics/Matrix;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isAffine()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Matrix must be afine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o throwIfOutCropBoxNull(Landroid/graphics/Rect;)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "outCropBox cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfOutMediaBoxNull(Landroid/graphics/Rect;)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "outMediaBox cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfOutSizeNull(Landroid/graphics/Point;)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "outSize cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfPageNotInDocument(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid page index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist-max-o close()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->doClose()V

    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/pdf/PdfEditor;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->doClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public greylist-max-o getPageCount()I
    .locals 1

    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    iget v0, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I

    return v0
.end method

.method public greylist-max-o getPageCropBox(ILandroid/graphics/Rect;)Z
    .locals 3

    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfOutCropBoxNull(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    sget-object v0, Landroid/graphics/pdf/PdfEditor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageCropBox(JILandroid/graphics/Rect;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getPageMediaBox(ILandroid/graphics/Rect;)Z
    .locals 3

    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfOutMediaBoxNull(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    sget-object v0, Landroid/graphics/pdf/PdfEditor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageMediaBox(JILandroid/graphics/Rect;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getPageSize(ILandroid/graphics/Point;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfOutSizeNull(Landroid/graphics/Point;)V

    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    sget-object v0, Landroid/graphics/pdf/PdfEditor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeGetPageSize(JILandroid/graphics/Point;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o removePage(I)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    sget-object v0, Landroid/graphics/pdf/PdfEditor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2, p1}, Landroid/graphics/pdf/PdfEditor;->nativeRemovePage(JI)I

    move-result v1

    iput v1, p0, Landroid/graphics/pdf/PdfEditor;->mPageCount:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o setPageCropBox(ILandroid/graphics/Rect;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfCropBoxNull(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    sget-object v0, Landroid/graphics/pdf/PdfEditor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeSetPageCropBox(JILandroid/graphics/Rect;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o setPageMediaBox(ILandroid/graphics/Rect;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfMediaBoxNull(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    sget-object v0, Landroid/graphics/pdf/PdfEditor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2, p1, p2}, Landroid/graphics/pdf/PdfEditor;->nativeSetPageMediaBox(JILandroid/graphics/Rect;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o setTransformAndClip(ILandroid/graphics/Matrix;Landroid/graphics/Rect;)V
    .locals 11

    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfEditor;->throwIfPageNotInDocument(I)V

    invoke-direct {p0, p2}, Landroid/graphics/pdf/PdfEditor;->throwIfNotNullAndNotAfine(Landroid/graphics/Matrix;)V

    if-nez p2, :cond_0

    sget-object p2, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/graphics/pdf/PdfEditor;->getPageSize(ILandroid/graphics/Point;)V

    sget-object v1, Landroid/graphics/pdf/PdfEditor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v5

    iget v9, v0, Landroid/graphics/Point;->x:I

    iget v10, v0, Landroid/graphics/Point;->y:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v4, p1

    invoke-static/range {v2 .. v10}, Landroid/graphics/pdf/PdfEditor;->nativeSetTransformAndClip(JIJIIII)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    sget-object v0, Landroid/graphics/pdf/PdfEditor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v4

    iget v6, p3, Landroid/graphics/Rect;->left:I

    iget v7, p3, Landroid/graphics/Rect;->top:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    iget v9, p3, Landroid/graphics/Rect;->bottom:I

    move v3, p1

    invoke-static/range {v1 .. v9}, Landroid/graphics/pdf/PdfEditor;->nativeSetTransformAndClip(JIJIIII)V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public greylist-max-o shouldScaleForPrinting()Z
    .locals 3

    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    sget-object v0, Landroid/graphics/pdf/PdfEditor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-static {v1, v2}, Landroid/graphics/pdf/PdfEditor;->nativeScaleForPrinting(J)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o write(Landroid/os/ParcelFileDescriptor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/graphics/pdf/PdfEditor;->throwIfClosed()V

    sget-object v0, Landroid/graphics/pdf/PdfEditor;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-wide v1, p0, Landroid/graphics/pdf/PdfEditor;->mNativeDocument:J

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/graphics/pdf/PdfEditor;->nativeWrite(JI)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method
