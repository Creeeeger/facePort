.class public final Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt$loadIconDrawableWithTimeout$bitmapTask$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $icon:Landroid/graphics/drawable/Icon;

.field public final synthetic $packageContext:Landroid/content/Context;

.field public final synthetic $targetSize:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Icon;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt$loadIconDrawableWithTimeout$bitmapTask$1;->$icon:Landroid/graphics/drawable/Icon;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt$loadIconDrawableWithTimeout$bitmapTask$1;->$packageContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt$loadIconDrawableWithTimeout$bitmapTask$1;->$targetSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt$loadIconDrawableWithTimeout$bitmapTask$1;->$packageContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt$loadIconDrawableWithTimeout$bitmapTask$1;->$icon:Landroid/graphics/drawable/Icon;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt$loadIconDrawableWithTimeout$bitmapTask$1$durationMillis$1$1;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt$loadIconDrawableWithTimeout$bitmapTask$1;->$targetSize:I

    invoke-direct {v1, v4}, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt$loadIconDrawableWithTimeout$bitmapTask$1$durationMillis$1$1;-><init>(I)V

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v1, 0x1f4

    cmp-long v1, v4, v1

    if-lez v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt$loadIconDrawableWithTimeout$bitmapTask$1;->$icon:Landroid/graphics/drawable/Icon;

    long-to-float v1, v4

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loading "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " took "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " sec"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SmartReplyViewInflater"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ImageDecoder.decodeBitmap() returned null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
