.class public Lcom/samsung/android/settings/share/view/DragHintDotDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DragHintDotDecoration.java"


# instance fields
.field private final mHintDot:Landroid/graphics/drawable/Drawable;

.field private final mRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 21
    sget v0, Lcom/android/settings/R$drawable;->sec_share_hint_dot:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/share/view/DragHintDotDecoration;->mHintDot:Landroid/graphics/drawable/Drawable;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->sec_share_select_app_hint_dot_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/share/view/DragHintDotDecoration;->mRadius:I

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 9

    .line 29
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 31
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    .line 32
    instance-of v0, p3, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    check-cast p3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 37
    invoke-virtual {p3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p3

    .line 39
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    .line 40
    div-int/2addr v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_2

    move v3, v1

    :goto_1
    add-int/lit8 v4, p3, -0x1

    if-ge v3, v4, :cond_1

    mul-int v4, v2, p3

    add-int/2addr v4, v3

    .line 45
    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 46
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 47
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    .line 48
    iget-object v6, p0, Lcom/samsung/android/settings/share/view/DragHintDotDecoration;->mHintDot:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/samsung/android/settings/share/view/DragHintDotDecoration;->mRadius:I

    sub-int v8, v4, v7

    sub-int v7, v5, v7

    invoke-virtual {v6, v8, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 49
    iget-object v4, p0, Lcom/samsung/android/settings/share/view/DragHintDotDecoration;->mHintDot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
