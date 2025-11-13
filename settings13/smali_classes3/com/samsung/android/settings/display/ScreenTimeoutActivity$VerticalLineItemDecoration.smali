.class public Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ScreenTimeoutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/ScreenTimeoutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VerticalLineItemDecoration"
.end annotation


# instance fields
.field private final ATTRS:[I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mIsVisibleFooterViewDivider:Z

.field final synthetic this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;Landroid/content/Context;)V
    .locals 2

    .line 205
    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v0, 0x1010214

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 200
    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->ATTRS:[I

    .line 202
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->mIsVisibleFooterViewDivider:Z

    .line 206
    invoke-virtual {p2, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 207
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 208
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 243
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

    .line 244
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    .line 217
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, p3, -0x1

    if-ge v0, v1, :cond_3

    .line 220
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 221
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 222
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    .line 223
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 224
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 225
    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 227
    iget-boolean v5, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->mIsVisibleFooterViewDivider:Z

    if-eqz v5, :cond_0

    add-int/lit8 v5, p3, -0x2

    if-eq v0, v5, :cond_2

    .line 228
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v3

    if-nez v3, :cond_1

    .line 229
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$dimen;->list_radio_button_divier_margin_start:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    .line 230
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    goto :goto_1

    .line 232
    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    .line 233
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$dimen;->list_radio_button_divier_margin_start:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    :goto_1
    sub-int/2addr v4, v5

    .line 236
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3, v1, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 237
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public setVisibleFooterViewDivider(Z)V
    .locals 0

    .line 212
    iput-boolean p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->mIsVisibleFooterViewDivider:Z

    return-void
.end method
