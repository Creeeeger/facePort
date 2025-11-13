.class final Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$captureBitmap$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $onBitmapCaptured:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$captureBitmap$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    iput-object p2, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$captureBitmap$1;->$onBitmapCaptured:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$captureBitmap$1;

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$captureBitmap$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$captureBitmap$1;->$onBitmapCaptured:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, p0, p2}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$captureBitmap$1;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$captureBitmap$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$captureBitmap$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$captureBitmap$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$captureBitmap$1;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$captureBitmap$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    iget-object p1, p1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->eglHandler:Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;

    const-string v0, "VideoTextureListener"

    if-nez p1, :cond_0

    const-string p1, "couldn\'t capture bitmap. egl not prepared."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$captureBitmap$1;->$onBitmapCaptured:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$captureBitmap$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    iget-object v1, p1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->eglHandler:Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener$captureBitmap$1;->$onBitmapCaptured:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1}, Lcom/samsung/android/sesl/transparentvideo/renderer/egl/EGLHandler;->makeCurrent()V

    iget-object v1, p1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->renderer:Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;

    invoke-virtual {v1}, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->onDraw()Z

    move-result v1

    iget-object p1, p1, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->renderer:Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;

    iget-object v2, p1, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->surfaceSize:Landroid/util/Size;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iget-object v4, p1, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->surfaceSize:Landroid/util/Size;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v3

    :cond_2
    mul-int v4, v2, v3

    if-gtz v4, :cond_3

    iget-object p1, p1, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->surfaceSize:Landroid/util/Size;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cannot capture bitmap (size="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "TransparentVideoRenderer"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    mul-int/lit8 p1, v2, 0x4

    mul-int/2addr p1, v3

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v2

    move v7, v3

    move-object v10, p1

    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES30;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr p1, v5

    int-to-float v6, v3

    div-float/2addr v6, v5

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v9, v5, v7, p1, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    move v7, v2

    move v8, v3

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_4

    const-string p0, "couldn\'t capture screen since the renderer was not ready for drawing."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
