.class public final Lcom/samsung/android/gtscell/utils/GtsCellExKt;
.super Ljava/lang/Object;
.source "GtsCellEx.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGtsCellEx.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GtsCellEx.kt\ncom/samsung/android/gtscell/utils/GtsCellExKt\n*L\n1#1,47:1\n*E\n"
.end annotation


# direct methods
.method public static final toBase64String(Landroid/graphics/Bitmap;I)Ljava/lang/String;
    .locals 3
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$toBase64String"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lcom/samsung/android/gtscell/utils/GtsCellExKt$toBase64String$1;->INSTANCE:Lcom/samsung/android/gtscell/utils/GtsCellExKt$toBase64String$1;

    .line 18
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 19
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p1

    div-float/2addr v2, v1

    .line 20
    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    .line 21
    invoke-static {p0, p1, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string/jumbo p1, "thumbnail"

    .line 22
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/samsung/android/gtscell/utils/GtsCellExKt$toBase64String$1;->invoke(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    .line 23
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/gtscell/utils/GtsCellExKt$toBase64String$1;->invoke(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    :goto_0
    const/4 p0, 0x0

    .line 28
    invoke-static {p1, p0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Base64.encodeToString(bytes, Base64.DEFAULT)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$this$toBitmap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {p0}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    move-result-object p0

    const/4 v0, 0x0

    .line 43
    :try_start_0
    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final toBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$this$toBitmap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 32
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 34
    :try_start_0
    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
