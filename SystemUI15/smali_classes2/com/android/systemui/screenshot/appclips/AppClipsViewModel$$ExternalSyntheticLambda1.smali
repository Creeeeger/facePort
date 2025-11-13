.class public final synthetic Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$2:Landroid/graphics/Rect;

.field public final synthetic f$3:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;

    iput-object p2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda1;->f$3:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;

    iget-object v1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda1;->f$3:Landroid/os/UserHandle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/graphics/RenderNode;

    const-string v3, "Screenshot save"

    invoke-direct {p0, v3}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v5, v3, v4}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    invoke-virtual {p0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    invoke-virtual {v3, v2}, Landroid/graphics/RecordingCanvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/graphics/RenderNode;->endRecording()V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {p0, v1, v2}, Landroid/graphics/HardwareRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v4, v0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;->mBgExecutor:Ljava/util/concurrent/Executor;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    const/4 v8, 0x0

    iget-object v3, v0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/screenshot/ImageExporter;->export(Ljava/util/concurrent/Executor;Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/os/UserHandle;I)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    move-result-object p0

    new-instance v1, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;Ljava/lang/Object;I)V

    iget-object v0, v0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;->mMainExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    invoke-virtual {p0, v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
