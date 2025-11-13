.class public final Lcom/android/wm/shell/draganddrop/AospSplitDropTargetProvider;
.super Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final addSplitTargets(Landroid/graphics/Rect;ZZFLjava/util/ArrayList;)V
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    const/4 p0, 0x1

    xor-int/2addr p2, p0

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x2

    if-eqz p2, :cond_1

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    div-float/2addr p4, v3

    add-float/2addr p0, p4

    float-to-int p0, p0

    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget p0, v5, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    sub-float/2addr p0, p4

    float-to-int p0, p0

    iput p0, v5, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    new-array p3, v4, [Landroid/graphics/Rect;

    aput-object p2, p3, v2

    aput-object v5, p3, p0

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->splitHorizontally([Landroid/graphics/Rect;)V

    :goto_0
    new-instance p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    invoke-direct {p0, v4, p2, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    const/4 p1, 0x4

    invoke-direct {p0, p1, v5, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    if-eqz p3, :cond_2

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget p1, p2, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    div-float/2addr p4, v3

    add-float/2addr p1, p4

    float-to-int p1, p1

    iput p1, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget p1, v5, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    sub-float/2addr p1, p4

    float-to-int p1, p1

    iput p1, v5, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_2
    new-array p3, v4, [Landroid/graphics/Rect;

    aput-object p2, p3, v2

    aput-object v5, p3, p0

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->splitVertically([Landroid/graphics/Rect;)V

    :goto_1
    new-instance p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    invoke-direct {p1, p0, p2, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    const/4 p1, 0x3

    invoke-direct {p0, p1, v5, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method
