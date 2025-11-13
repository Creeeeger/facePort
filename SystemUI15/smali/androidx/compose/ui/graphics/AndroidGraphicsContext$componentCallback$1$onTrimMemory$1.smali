.class public final Landroidx/compose/ui/graphics/AndroidGraphicsContext$componentCallback$1$onTrimMemory$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Landroidx/compose/ui/graphics/AndroidGraphicsContext;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/AndroidGraphicsContext;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext$componentCallback$1$onTrimMemory$1;->this$0:Landroidx/compose/ui/graphics/AndroidGraphicsContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext$componentCallback$1$onTrimMemory$1;->this$0:Landroidx/compose/ui/graphics/AndroidGraphicsContext;

    iget-object v0, v0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->layerManager:Landroidx/compose/ui/graphics/layer/LayerManager;

    iget-object v1, v0, Landroidx/compose/ui/graphics/layer/LayerManager;->imageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/compose/ui/graphics/layer/LayerManager;->imageReader:Landroid/media/ImageReader;

    iget-object v1, v0, Landroidx/compose/ui/graphics/layer/LayerManager;->layerSet:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/layer/LayerManager;->persistLayers(Landroidx/collection/ScatterSet;)V

    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext$componentCallback$1$onTrimMemory$1;->this$0:Landroidx/compose/ui/graphics/AndroidGraphicsContext;

    iget-object v0, v0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->ownerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext$componentCallback$1$onTrimMemory$1;->this$0:Landroidx/compose/ui/graphics/AndroidGraphicsContext;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->predrawListenerRegistered:Z

    const/4 p0, 0x1

    return p0
.end method
