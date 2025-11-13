.class final Lkotlin/io/ExposingBufferByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "FileReadWrite.kt"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getBuffer()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 99
    iget-object p0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const-string v0, "buf"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
