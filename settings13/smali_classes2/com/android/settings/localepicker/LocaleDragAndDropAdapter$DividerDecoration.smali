.class public Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "LocaleDragAndDropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DividerDecoration"
.end annotation


# instance fields
.field private final ATTRS:[I

.field private mContext:Landroid/content/Context;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerState:I

.field final synthetic this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Landroid/content/Context;)V
    .locals 3

    .line 901
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 p1, 0x1

    new-array v0, p1, [I

    const v1, 0x1010214

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 896
    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;->ATTRS:[I

    .line 899
    iput p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;->mDividerState:I

    .line 902
    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;->mContext:Landroid/content/Context;

    .line 903
    invoke-virtual {p2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 904
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 905
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 949
    iget p4, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;->mDividerState:I

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    const/4 p4, -0x1

    .line 950
    :goto_0
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    add-int/2addr p3, p4

    if-eq p2, p3, :cond_1

    .line 951
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .line 914
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;->mContext:Landroid/content/Context;

    .line 915
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->sec_widget_checkbox_width_for_divider_inset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr p3, v0

    float-to-int p3, p3

    .line 918
    iget v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;->mDividerState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 919
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$dimen;->sec_widget_list_with_checkbox_margin_start:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;->mContext:Landroid/content/Context;

    .line 920
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$dimen;->sec_locale_mini_label_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    add-int/2addr p3, v0

    .line 923
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    .line 925
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 926
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    .line 927
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;->mContext:Landroid/content/Context;

    .line 928
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 930
    iget v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;->mDividerState:I

    if-ne v1, v2, :cond_1

    .line 931
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->sec_widget_list_with_checkbox_margin_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;->mContext:Landroid/content/Context;

    .line 932
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->sec_locale_mini_label_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 936
    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 938
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 939
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 940
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    .line 941
    iget-object v4, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v3

    .line 942
    iget-object v5, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p3, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 943
    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateDividerState(I)V
    .locals 0

    .line 909
    iput p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$DividerDecoration;->mDividerState:I

    return-void
.end method
