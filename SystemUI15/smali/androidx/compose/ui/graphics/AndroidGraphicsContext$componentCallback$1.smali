.class public final Landroidx/compose/ui/graphics/AndroidGraphicsContext$componentCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field public final synthetic this$0:Landroidx/compose/ui/graphics/AndroidGraphicsContext;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/AndroidGraphicsContext;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext$componentCallback$1;->this$0:Landroidx/compose/ui/graphics/AndroidGraphicsContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 2

    const/16 v0, 0x28

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext$componentCallback$1;->this$0:Landroidx/compose/ui/graphics/AndroidGraphicsContext;

    iget-boolean v0, p1, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->predrawListenerRegistered:Z

    if-nez v0, :cond_1

    iget-object p1, p1, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->layerManager:Landroidx/compose/ui/graphics/layer/LayerManager;

    iget-object v0, p1, Landroidx/compose/ui/graphics/layer/LayerManager;->imageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/compose/ui/graphics/layer/LayerManager;->imageReader:Landroid/media/ImageReader;

    iget-object p1, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext$componentCallback$1;->this$0:Landroidx/compose/ui/graphics/AndroidGraphicsContext;

    iget-object p1, p1, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->ownerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Landroidx/compose/ui/graphics/AndroidGraphicsContext$componentCallback$1$onTrimMemory$1;

    iget-object v1, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext$componentCallback$1;->this$0:Landroidx/compose/ui/graphics/AndroidGraphicsContext;

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/AndroidGraphicsContext$componentCallback$1$onTrimMemory$1;-><init>(Landroidx/compose/ui/graphics/AndroidGraphicsContext;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext$componentCallback$1;->this$0:Landroidx/compose/ui/graphics/AndroidGraphicsContext;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/AndroidGraphicsContext;->predrawListenerRegistered:Z

    :cond_1
    return-void
.end method
