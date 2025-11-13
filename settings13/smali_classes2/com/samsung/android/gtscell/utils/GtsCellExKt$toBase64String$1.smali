.class final Lcom/samsung/android/gtscell/utils/GtsCellExKt$toBase64String$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GtsCellEx.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gtscell/utils/GtsCellExKt;->toBase64String(Landroid/graphics/Bitmap;I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/graphics/Bitmap;",
        "[B>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/gtscell/utils/GtsCellExKt$toBase64String$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/gtscell/utils/GtsCellExKt$toBase64String$1;

    invoke-direct {v0}, Lcom/samsung/android/gtscell/utils/GtsCellExKt$toBase64String$1;-><init>()V

    sput-object v0, Lcom/samsung/android/gtscell/utils/GtsCellExKt$toBase64String$1;->INSTANCE:Lcom/samsung/android/gtscell/utils/GtsCellExKt$toBase64String$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/samsung/android/gtscell/utils/GtsCellExKt$toBase64String$1;->invoke(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Landroid/graphics/Bitmap;)[B
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "$this$toByteArray"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 14
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x5a

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 15
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string/jumbo p1, "stream.toByteArray()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
