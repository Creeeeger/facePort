.class public Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$VerticalLineItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ScreenTimeoutDockingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VerticalLineItemDecoration"
.end annotation


# instance fields
.field private final ATTRS:[I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;Landroid/content/Context;)V
    .locals 2

    .line 163
    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$VerticalLineItemDecoration;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v0, 0x1010214

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 159
    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$VerticalLineItemDecoration;->ATTRS:[I

    .line 164
    invoke-virtual {p2, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 165
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 166
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 188
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

    .line 189
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .line 171
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, p3, -0x1

    if-ge v0, v1, :cond_0

    .line 174
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 176
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    .line 177
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 178
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 179
    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 181
    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3, v1, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 182
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$VerticalLineItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
