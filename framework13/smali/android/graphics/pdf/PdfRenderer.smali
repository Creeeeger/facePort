.class public final Landroid/graphics/pdf/PdfRenderer;
.super Ljava/lang/Object;
.source "PdfRenderer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/pdf/PdfRenderer$Page;,
        Landroid/graphics/pdf/PdfRenderer$RenderMode;
    }
.end annotation


# static fields
.field static final greylist-max-o sPdfiumLock:Ljava/lang/Object;


# instance fields
.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-r mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

.field private greylist-max-o mInput:Landroid/os/ParcelFileDescriptor;

.field private greylist-max-o mNativeDocument:J

.field private final greylist-max-o mPageCount:I

.field private final greylist-max-o mTempPoint:Landroid/graphics/Point;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNativeDocument(Landroid/graphics/pdf/PdfRenderer;)J
    .locals 2

    iget-wide v0, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTempPoint(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Landroid/graphics/pdf/PdfRenderer;->mTempPoint:Landroid/graphics/Point;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentPage(Landroid/graphics/pdf/PdfRenderer;Landroid/graphics/pdf/PdfRenderer$Page;)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeClosePage(J)V
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/pdf/PdfRenderer;->nativeClosePage(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeOpenPageAndGetSize(JILandroid/graphics/Point;)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/pdf/PdfRenderer;->nativeOpenPageAndGetSize(JILandroid/graphics/Point;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeRenderPage(JJJIIIIJI)V
    .locals 0

    invoke-static/range {p0 .. p12}, Landroid/graphics/pdf/PdfRenderer;->nativeRenderPage(JJJIIIIJI)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 8
    .param p1, "input"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 117
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mTempPoint:Landroid/graphics/Point;

    .line 158
    if-eqz p1, :cond_0

    .line 164
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    const-wide/16 v3, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 165
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v1

    iget-wide v1, v1, Landroid/system/StructStat;->st_size:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .local v1, "size":J
    nop

    .line 169
    iput-object p1, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    .line 171
    sget-object v5, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v5

    .line 172
    :try_start_1
    iget-object v6, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v6

    invoke-static {v6, v1, v2}, Landroid/graphics/pdf/PdfRenderer;->nativeCreate(IJ)J

    move-result-wide v6

    iput-wide v6, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 174
    :try_start_2
    invoke-static {v6, v7}, Landroid/graphics/pdf/PdfRenderer;->nativeGetPageCount(J)I

    move-result v6

    iput v6, p0, Landroid/graphics/pdf/PdfRenderer;->mPageCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    nop

    .line 180
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 182
    const-string v3, "close"

    invoke-virtual {v0, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 183
    return-void

    .line 175
    :catchall_0
    move-exception v0

    .line 176
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_4
    iget-wide v6, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    invoke-static {v6, v7}, Landroid/graphics/pdf/PdfRenderer;->nativeClose(J)V

    .line 177
    iput-wide v3, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    .line 178
    nop

    .end local v1    # "size":J
    .end local p0    # "this":Landroid/graphics/pdf/PdfRenderer;
    .end local p1    # "input":Landroid/os/ParcelFileDescriptor;
    throw v0

    .line 180
    .end local v0    # "t":Ljava/lang/Throwable;
    .restart local v1    # "size":J
    .restart local p0    # "this":Landroid/graphics/pdf/PdfRenderer;
    .restart local p1    # "input":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 166
    .end local v1    # "size":J
    :catch_0
    move-exception v0

    .line 167
    .local v0, "ee":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "file descriptor not seekable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    .end local v0    # "ee":Landroid/system/ErrnoException;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "input cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-r doClose()V
    .locals 6

    .line 252
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0}, Landroid/graphics/pdf/PdfRenderer$Page;->close()V

    .line 254
    iput-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    .line 257
    :cond_0
    iget-wide v2, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 258
    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_0
    iget-wide v2, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    invoke-static {v2, v3}, Landroid/graphics/pdf/PdfRenderer;->nativeClose(J)V

    .line 260
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    iput-wide v4, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 264
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    .line 265
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 266
    iput-object v1, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    .line 268
    :cond_2
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 269
    return-void
.end method

.method private static native greylist-max-o nativeClose(J)V
.end method

.method private static native greylist-max-o nativeClosePage(J)V
.end method

.method private static native greylist-max-o nativeCreate(IJ)J
.end method

.method private static native greylist-max-o nativeGetPageCount(J)I
.end method

.method private static native greylist-max-o nativeOpenPageAndGetSize(JILandroid/graphics/Point;)J
.end method

.method private static native blacklist nativeRenderPage(JJJIIIIJI)V
.end method

.method private static native greylist-max-o nativeScaleForPrinting(J)Z
.end method

.method private greylist-max-o throwIfClosed()V
    .locals 2

    .line 272
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mInput:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 275
    return-void

    .line 273
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfPageNotInDocument(I)V
    .locals 2
    .param p1, "pageIndex"    # I

    .line 284
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPageCount:I

    if-ge p1, v0, :cond_0

    .line 287
    return-void

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid page index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfPageOpened()V
    .locals 2

    .line 278
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    if-nez v0, :cond_0

    .line 281
    return-void

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current page not closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 0

    .line 190
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfClosed()V

    .line 191
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfPageOpened()V

    .line 192
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->doClose()V

    .line 193
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 240
    :try_start_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 244
    :cond_0
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->doClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 247
    nop

    .line 248
    return-void

    .line 246
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 247
    throw v0
.end method

.method public whitelist getPageCount()I
    .locals 1

    .line 201
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfClosed()V

    .line 202
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer;->mPageCount:I

    return v0
.end method

.method public whitelist openPage(I)Landroid/graphics/pdf/PdfRenderer$Page;
    .locals 2
    .param p1, "index"    # I

    .line 230
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfClosed()V

    .line 231
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfPageOpened()V

    .line 232
    invoke-direct {p0, p1}, Landroid/graphics/pdf/PdfRenderer;->throwIfPageNotInDocument(I)V

    .line 233
    new-instance v0, Landroid/graphics/pdf/PdfRenderer$Page;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/pdf/PdfRenderer$Page;-><init>(Landroid/graphics/pdf/PdfRenderer;ILandroid/graphics/pdf/PdfRenderer$Page-IA;)V

    iput-object v0, p0, Landroid/graphics/pdf/PdfRenderer;->mCurrentPage:Landroid/graphics/pdf/PdfRenderer$Page;

    .line 234
    return-object v0
.end method

.method public whitelist shouldScaleForPrinting()Z
    .locals 3

    .line 214
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer;->throwIfClosed()V

    .line 216
    sget-object v0, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    iget-wide v1, p0, Landroid/graphics/pdf/PdfRenderer;->mNativeDocument:J

    invoke-static {v1, v2}, Landroid/graphics/pdf/PdfRenderer;->nativeScaleForPrinting(J)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 218
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
