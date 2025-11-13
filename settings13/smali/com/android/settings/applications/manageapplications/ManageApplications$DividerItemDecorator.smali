.class Lcom/android/settings/applications/manageapplications/ManageApplications$DividerItemDecorator;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DividerItemDecorator"
.end annotation


# instance fields
.field private mAttr:Landroid/content/res/TypedArray;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$DividerItemDecorator;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 509
    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$DividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 510
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$DividerItemDecorator;->mAttr:Landroid/content/res/TypedArray;

    return-void

    :array_0
    .array-data 4
        0x10103bd
        0x10103be
    .end array-data
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .line 517
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$DividerItemDecorator;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 518
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->sec_widget_list_item_padding_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr p3, v0

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$DividerItemDecorator;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 519
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$dimen;->sec_app_list_item_icon_min_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr p3, v0

    float-to-int p3, p3

    .line 520
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$DividerItemDecorator;->mAttr:Landroid/content/res/TypedArray;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 522
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 523
    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$DividerItemDecorator;->mAttr:Landroid/content/res/TypedArray;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3, v5, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    .line 524
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$DividerItemDecorator;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 525
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$DividerItemDecorator;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 526
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 529
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    add-int/lit8 v1, v1, -0x2

    :goto_0
    if-gt v2, v1, :cond_2

    .line 533
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 534
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 537
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 539
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    .line 540
    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$DividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v3

    .line 542
    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$DividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p3, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 543
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$DividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
