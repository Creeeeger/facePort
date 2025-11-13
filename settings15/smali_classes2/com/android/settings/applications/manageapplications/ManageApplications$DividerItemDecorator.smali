.class public final Lcom/android/settings/applications/manageapplications/ManageApplications$DividerItemDecorator;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDivider:Landroid/graphics/drawable/Drawable;

.field public final synthetic this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$DividerItemDecorator;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$DividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$DividerItemDecorator;->this$0:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10103bd

    const v3, 0x10103be

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070dd1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0708d2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    sub-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v6

    sub-int/2addr v2, v6

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v6

    if-ne v6, v4, :cond_0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v0

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$DividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v4

    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$DividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v3, v4, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$DividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
