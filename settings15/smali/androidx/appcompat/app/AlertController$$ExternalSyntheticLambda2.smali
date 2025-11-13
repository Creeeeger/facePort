.class public final synthetic Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda2;->f$0:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object p0, p0, Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda2;->f$0:Landroid/widget/LinearLayout;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/Button;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    const/4 p0, 0x0

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v2, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-static {p0, v7}, Landroidx/core/view/SeslTouchTargetDelegate;->calculateViewBounds(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v6

    if-nez v6, :cond_4

    new-instance v6, Landroidx/core/view/SeslTouchDelegateFactory$$ExternalSyntheticLambda0;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v4}, Landroidx/core/view/SeslTouchDelegateFactory$$ExternalSyntheticLambda0;-><init>(ILandroid/graphics/Rect;)V

    goto :goto_2

    :cond_4
    new-instance v6, Landroidx/core/view/SeslTouchDelegateFactory$$ExternalSyntheticLambda0;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v4}, Landroidx/core/view/SeslTouchDelegateFactory$$ExternalSyntheticLambda0;-><init>(ILandroid/graphics/Rect;)V

    :goto_2
    const/4 v4, 0x1

    invoke-static {v4, v5}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int v8, v3, v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v8, v3

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v1, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v7, v8, v4, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroidx/core/view/SeslTouchTargetDelegate$Builder;

    invoke-direct {v3, p0}, Landroidx/core/view/SeslTouchTargetDelegate$Builder;-><init>(Landroid/view/View;)V

    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v2, p0, :cond_5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    iget v8, v6, Landroidx/core/view/SeslTouchDelegateFactory$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v8, :pswitch_data_0

    iget-object v8, v6, Landroidx/core/view/SeslTouchDelegateFactory$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Rect;

    iget v9, p0, Landroid/graphics/Rect;->left:I

    iget v10, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v1

    iget v1, v8, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v8

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-static {v9, v10, v1, v7}, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->of(IIII)Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    move-result-object v1

    goto :goto_4

    :pswitch_0
    iget-object v8, v6, Landroidx/core/view/SeslTouchDelegateFactory$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Rect;

    iget v9, p0, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v10, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v10

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v10, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v10

    const/4 v10, 0x0

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v10, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v10

    invoke-static {v9, v1, v7, v8}, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->of(IIII)Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v7, v3, Landroidx/core/view/SeslTouchTargetDelegate$Builder;->mQueue:Ljava/util/Queue;

    new-instance v8, Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v8, v2, v1}, Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;)V

    check-cast v7, Ljava/util/LinkedList;

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object v1, p0

    move v2, v4

    goto :goto_3

    :cond_5
    move-object p0, v3

    :goto_5
    if-eqz p0, :cond_6

    iget-object v0, p0, Landroidx/core/view/SeslTouchTargetDelegate$Builder;->mAnchorView:Landroid/view/View;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/core/view/SeslTouchTargetDelegate$Builder;->mAnchorView:Landroid/view/View;

    new-instance v2, Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda2;-><init>(Landroidx/core/view/SeslTouchTargetDelegate$Builder;Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda0;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
