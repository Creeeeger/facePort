.class public Landroid/graphics/pdf/PdfDocument;
.super Ljava/lang/Object;
.source "PdfDocument.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/pdf/PdfDocument$PdfCanvas;,
        Landroid/graphics/pdf/PdfDocument$PageInfo;,
        Landroid/graphics/pdf/PdfDocument$Page;
    }
.end annotation


# instance fields
.field private final greylist-max-o mChunk:[B

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

.field private greylist-max-o mNativeDocument:J

.field private final greylist-max-o mPages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/pdf/PdfDocument$PageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mChunk:[B

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mPages:Ljava/util/List;

    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->nativeCreateDocument()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method private greylist-max-o dispose()V
    .locals 4

    iget-wide v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    invoke-direct {p0, v0, v1}, Landroid/graphics/pdf/PdfDocument;->nativeClose(J)V

    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    iput-wide v2, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    :cond_0
    return-void
.end method

.method private native greylist-max-o nativeClose(J)V
.end method

.method private native greylist-max-o nativeCreateDocument()J
.end method

.method private native greylist-max-o nativeFinishPage(J)V
.end method

.method private static native greylist-max-o nativeStartPage(JIIIIII)J
.end method

.method private native greylist-max-o nativeWriteTo(JLjava/io/OutputStream;[B)V
.end method

.method private greylist-max-o throwIfClosed()V
    .locals 4

    iget-wide v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "document is closed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwIfCurrentPageNotFinished()V
    .locals 2

    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current page not finished!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist close()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfCurrentPageNotFinished()V

    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->dispose()V

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
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->dispose()V
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

.method public whitelist finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfClosed()V

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

    if-ne p1, v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/pdf/PdfDocument$Page;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mPages:Ljava/util/List;

    invoke-virtual {p1}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

    iget-wide v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    invoke-direct {p0, v0, v1}, Landroid/graphics/pdf/PdfDocument;->nativeFinishPage(J)V

    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$Page;->-$$Nest$mfinish(Landroid/graphics/pdf/PdfDocument$Page;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "page already finished"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid page"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "page cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/pdf/PdfDocument$PageInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument;->mPages:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;
    .locals 9

    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfClosed()V

    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfCurrentPageNotFinished()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/pdf/PdfDocument$PdfCanvas;

    iget-wide v1, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-$$Nest$fgetmPageWidth(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-$$Nest$fgetmPageHeight(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-$$Nest$fgetmContentRect(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-$$Nest$fgetmContentRect(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-$$Nest$fgetmContentRect(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-static {p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->-$$Nest$fgetmContentRect(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v1 .. v8}, Landroid/graphics/pdf/PdfDocument;->nativeStartPage(JIIIIII)J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Landroid/graphics/pdf/PdfDocument$PdfCanvas;-><init>(Landroid/graphics/pdf/PdfDocument;J)V

    new-instance v1, Landroid/graphics/pdf/PdfDocument$Page;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Landroid/graphics/pdf/PdfDocument$Page;-><init>(Landroid/graphics/Canvas;Landroid/graphics/pdf/PdfDocument$PageInfo;Landroid/graphics/pdf/PdfDocument$Page-IA;)V

    iput-object v1, p0, Landroid/graphics/pdf/PdfDocument;->mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

    iget-object v1, p0, Landroid/graphics/pdf/PdfDocument;->mCurrentPage:Landroid/graphics/pdf/PdfDocument$Page;

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "page cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfClosed()V

    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;->throwIfCurrentPageNotFinished()V

    if-eqz p1, :cond_0

    iget-wide v0, p0, Landroid/graphics/pdf/PdfDocument;->mNativeDocument:J

    iget-object v2, p0, Landroid/graphics/pdf/PdfDocument;->mChunk:[B

    invoke-direct {p0, v0, v1, p1, v2}, Landroid/graphics/pdf/PdfDocument;->nativeWriteTo(JLjava/io/OutputStream;[B)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "out cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
