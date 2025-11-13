.class public final Lcom/android/systemui/screenshot/scroll/ImageTileSet$1;
.super Lcom/android/internal/util/CallbackRegistry$NotifierCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/scroll/ImageTileSet;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/util/CallbackRegistry$NotifierCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNotifyCallback(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/screenshot/scroll/TiledImageDrawable$$ExternalSyntheticLambda0;

    check-cast p2, Lcom/android/systemui/screenshot/scroll/ImageTileSet;

    check-cast p4, Landroid/graphics/Rect;

    iget-object p0, p1, Lcom/android/systemui/screenshot/scroll/TiledImageDrawable$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/scroll/TiledImageDrawable;

    iget-object p1, p0, Lcom/android/systemui/screenshot/scroll/TiledImageDrawable;->mNode:Landroid/graphics/RenderNode;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/screenshot/scroll/TiledImageDrawable;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1}, Landroid/graphics/RenderNode;->discardDisplayList()V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
