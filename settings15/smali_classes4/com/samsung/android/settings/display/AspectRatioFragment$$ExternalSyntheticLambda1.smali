.class public final synthetic Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mViewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    int-to-float v1, v1

    int-to-float v3, v3

    invoke-virtual {v4, v1, v3}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iput v2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightPosition:I

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightKey:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mHighlightRequest:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mViewHolder:Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    :cond_2
    new-instance p0, Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/display/AspectRatioFragment$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
