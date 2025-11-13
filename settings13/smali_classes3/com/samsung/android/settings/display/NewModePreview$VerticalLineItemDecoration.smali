.class public Lcom/samsung/android/settings/display/NewModePreview$VerticalLineItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "NewModePreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/NewModePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VerticalLineItemDecoration"
.end annotation


# instance fields
.field private final ATTRS:[I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/samsung/android/settings/display/NewModePreview;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/NewModePreview;Landroid/content/Context;)V
    .locals 2

    .line 445
    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$VerticalLineItemDecoration;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v0, 0x1010214

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 441
    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$VerticalLineItemDecoration;->ATTRS:[I

    .line 446
    invoke-virtual {p2, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 447
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 448
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 473
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-eq p2, p3, :cond_0

    .line 474
    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 8

    .line 453
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    add-int/lit8 v2, p3, -0x1

    if-ge v0, v2, :cond_1

    .line 456
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 457
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 458
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/display/NewModePreview$VerticalLineItemDecoration;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {v5}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$dimen;->list_radio_button_divier_margin_start:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    .line 459
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    sub-int/2addr v5, v7

    .line 460
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 461
    iget-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 462
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v7

    if-ne v7, v1, :cond_0

    .line 463
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    .line 464
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v1, v5

    iget-object v5, p0, Lcom/samsung/android/settings/display/NewModePreview$VerticalLineItemDecoration;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {v5}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sub-int v5, v1, v5

    .line 466
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4, v2, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 467
    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
