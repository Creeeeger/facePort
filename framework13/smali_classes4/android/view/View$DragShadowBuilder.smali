.class public Landroid/view/View$DragShadowBuilder;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragShadowBuilder"
.end annotation


# instance fields
.field private blacklist mSemLastTouchPoint:Landroid/graphics/Point;

.field private final greylist-max-r mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSemLastTouchPoint(Landroid/view/View$DragShadowBuilder;)Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Landroid/view/View$DragShadowBuilder;->mSemLastTouchPoint:Landroid/graphics/Point;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 28466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28486
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View$DragShadowBuilder;->mSemLastTouchPoint:Landroid/graphics/Point;

    .line 28467
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/view/View$DragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    .line 28468
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 28455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28486
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View$DragShadowBuilder;->mSemLastTouchPoint:Landroid/graphics/Point;

    .line 28456
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/View$DragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    .line 28457
    return-void
.end method


# virtual methods
.method public final whitelist getView()Landroid/view/View;
    .locals 1

    .line 28482
    iget-object v0, p0, Landroid/view/View$DragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public whitelist onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 28547
    iget-object v0, p0, Landroid/view/View$DragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 28548
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 28549
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 28551
    :cond_0
    const-string v1, "View"

    const-string v2, "Asked to draw drag shadow but no view"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28553
    :goto_0
    return-void
.end method

.method public whitelist onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3
    .param p1, "outShadowSize"    # Landroid/graphics/Point;
    .param p2, "outShadowTouchPoint"    # Landroid/graphics/Point;

    .line 28530
    iget-object v0, p0, Landroid/view/View$DragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 28531
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 28532
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 28533
    iget v1, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p1, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 28535
    :cond_0
    const-string v1, "View"

    const-string v2, "Asked for drag thumb metrics but no view"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28537
    :goto_0
    return-void
.end method

.method public blacklist semGetLastTouchPoint()Landroid/graphics/Point;
    .locals 1

    .line 28505
    iget-object v0, p0, Landroid/view/View$DragShadowBuilder;->mSemLastTouchPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public whitelist semSetLastTouchPoint(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 28498
    new-instance v0, Landroid/graphics/Point;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Landroid/view/View$DragShadowBuilder;->mSemLastTouchPoint:Landroid/graphics/Point;

    .line 28499
    return-void
.end method
