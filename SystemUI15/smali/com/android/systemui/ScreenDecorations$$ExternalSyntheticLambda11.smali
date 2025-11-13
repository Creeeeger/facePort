.class public final synthetic Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/ScreenDecorations;

.field public final synthetic f$1:Lcom/android/systemui/decor/OverlayWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ScreenDecorations;Lcom/android/systemui/decor/OverlayWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda11;->f$0:Lcom/android/systemui/ScreenDecorations;

    iput-object p2, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda11;->f$1:Lcom/android/systemui/decor/OverlayWindow;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda11;->f$0:Lcom/android/systemui/ScreenDecorations;

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda11;->f$1:Lcom/android/systemui/decor/OverlayWindow;

    check-cast p1, Lcom/android/systemui/decor/DecorProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/systemui/decor/DecorProvider;->getViewId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/decor/OverlayWindow;->getView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/decor/DecorProvider;->getViewId()I

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v1}, Lcom/android/systemui/decor/OverlayWindow;->getView(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v7, v5, Lcom/android/systemui/decor/OverlayWindow;->rootView:Lcom/android/systemui/RegionInterceptingFrameLayout;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v5, v5, Lcom/android/systemui/decor/OverlayWindow;->viewProviderMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    iget v1, v0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    iget v0, v0, Lcom/android/systemui/ScreenDecorations;->mTintColor:I

    iget-object v2, p0, Lcom/android/systemui/decor/OverlayWindow;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/decor/OverlayWindow;->rootView:Lcom/android/systemui/RegionInterceptingFrameLayout;

    invoke-virtual {p1, v2, v3, v1, v0}, Lcom/android/systemui/decor/DecorProvider;->inflateView(Landroid/content/Context;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/decor/OverlayWindow;->viewProviderMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/systemui/decor/DecorProvider;->getViewId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-void
.end method
