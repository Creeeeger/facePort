.class public final Lokio/ByteString$Companion;
.super Ljava/lang/Object;
.source "ByteString.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteString.kt\nokio/ByteString$Companion\n+ 2 ByteString.kt\nokio/internal/ByteStringKt\n*L\n1#1,338:1\n252#2:339\n256#2,2:340\n262#2,3:342\n269#2,2:345\n275#2,9:347\n*E\n*S KotlinDebug\n*F\n+ 1 ByteString.kt\nokio/ByteString$Companion\n*L\n222#1:339\n227#1,2:340\n239#1,3:342\n247#1,2:345\n250#1,9:347\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Lokio/ByteString$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final decodeHex(Ljava/lang/String;)Lokio/ByteString;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "$this$decodeHex"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    rem-int/lit8 p0, p0, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_2

    .line 277
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    new-array v2, p0, [B

    :goto_1
    if-ge v0, p0, :cond_1

    mul-int/lit8 v3, v0, 0x2

    .line 279
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lokio/internal/ByteStringKt;->access$decodeHexDigit(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v1

    .line 280
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lokio/internal/ByteStringKt;->access$decodeHexDigit(C)I

    move-result v3

    add-int/2addr v4, v3

    int-to-byte v3, v4

    .line 281
    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 283
    :cond_1
    new-instance p0, Lokio/ByteString;

    invoke-direct {p0, v2}, Lokio/ByteString;-><init>([B)V

    return-object p0

    .line 275
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected hex string: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "$this$encodeUtf8"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    new-instance p0, Lokio/ByteString;

    invoke-static {p1}, Lokio/-Platform;->asUtf8ToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    .line 263
    invoke-virtual {p0, p1}, Lokio/ByteString;->setUtf8$okio(Ljava/lang/String;)V

    return-object p0
.end method

.method public final varargs of([B)Lokio/ByteString;
    .locals 0
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    array-length p0, p1

    invoke-static {p1, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string p1, "java.util.Arrays.copyOf(this, size)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lokio/ByteString;

    invoke-direct {p1, p0}, Lokio/ByteString;-><init>([B)V

    return-object p1
.end method

.method public final read(Ljava/io/InputStream;I)Lokio/ByteString;
    .locals 3
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "$this$readByteString"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    if-eqz v0, :cond_3

    .line 263
    new-array v0, p2, [B

    :goto_1
    if-ge p0, p2, :cond_2

    sub-int v1, p2, p0

    .line 267
    invoke-virtual {p1, v0, p0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/2addr p0, v1

    goto :goto_1

    .line 268
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 271
    :cond_2
    new-instance p0, Lokio/ByteString;

    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    return-object p0

    .line 261
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "byteCount < 0: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
