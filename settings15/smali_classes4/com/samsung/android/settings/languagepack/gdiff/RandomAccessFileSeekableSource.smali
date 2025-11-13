.class public final Lcom/samsung/android/settings/languagepack/gdiff/RandomAccessFileSeekableSource;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public raf:Ljava/io/RandomAccessFile;


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/gdiff/RandomAccessFileSeekableSource;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method
