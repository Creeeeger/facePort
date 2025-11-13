.class public final synthetic Landroidx/compose/ui/graphics/layer/LayerManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/Image;->close()V

    :cond_0
    return-void
.end method
