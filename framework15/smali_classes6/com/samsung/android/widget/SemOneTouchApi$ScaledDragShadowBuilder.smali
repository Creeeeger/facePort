.class Lcom/samsung/android/widget/SemOneTouchApi$ScaledDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "SemOneTouchApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemOneTouchApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaledDragShadowBuilder"
.end annotation


# instance fields
.field private blacklist mCustomDragShadowWidth:F

.field final synthetic blacklist this$0:Lcom/samsung/android/widget/SemOneTouchApi;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi$ScaledDragShadowBuilder;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const/high16 p1, 0x42c80000    # 100.0f

    iput p1, p0, Lcom/samsung/android/widget/SemOneTouchApi$ScaledDragShadowBuilder;->mCustomDragShadowWidth:F

    int-to-float p1, p3

    iput p1, p0, Lcom/samsung/android/widget/SemOneTouchApi$ScaledDragShadowBuilder;->mCustomDragShadowWidth:F

    return-void
.end method


# virtual methods
.method public whitelist onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemOneTouchApi$ScaledDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/widget/SemOneTouchApi;->pxToDp(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/widget/SemOneTouchApi;->pxToDp(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v2, v1, :cond_1

    int-to-float v5, v1

    iget v6, p0, Lcom/samsung/android/widget/SemOneTouchApi$ScaledDragShadowBuilder;->mCustomDragShadowWidth:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    goto :goto_0

    :cond_1
    int-to-float v5, v2

    iget v6, p0, Lcom/samsung/android/widget/SemOneTouchApi$ScaledDragShadowBuilder;->mCustomDragShadowWidth:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    :goto_0
    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    if-eqz v3, :cond_4

    iget v4, p0, Lcom/samsung/android/widget/SemOneTouchApi$ScaledDragShadowBuilder;->mCustomDragShadowWidth:F

    if-le v2, v1, :cond_3

    int-to-float v5, v1

    goto :goto_2

    :cond_3
    int-to-float v5, v2

    :goto_2
    div-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {p1, v4, v4, v5, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_4
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    return-void
.end method
