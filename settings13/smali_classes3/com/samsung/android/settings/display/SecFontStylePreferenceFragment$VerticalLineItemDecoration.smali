.class Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$VerticalLineItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SecFontStylePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerticalLineItemDecoration"
.end annotation


# instance fields
.field private final mDivider:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;Landroid/content/Context;)V
    .locals 2

    .line 554
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$VerticalLineItemDecoration;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v0, 0x1010214

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 556
    invoke-virtual {p2, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 557
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 558
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 582
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    .line 563
    iget-object p3, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$VerticalLineItemDecoration;->this$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    invoke-static {p3}, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->-$$Nest$fgetmResources(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/settings/R$dimen;->list_radio_button_divier_margin_start:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    const/4 v0, 0x0

    .line 564
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 565
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 566
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 567
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, p3

    .line 568
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 569
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    .line 570
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v1

    .line 571
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v6

    if-ne v6, v2, :cond_0

    .line 572
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    .line 573
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    sub-int v5, v2, p3

    .line 575
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v1, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 576
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
