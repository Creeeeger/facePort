.class Landroid/widget/Spinner$DropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/Spinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field private greylist-max-o mAdapter:Landroid/widget/ListAdapter;

.field private greylist-max-o mHintText:Ljava/lang/CharSequence;

.field final synthetic blacklist this$0:Landroid/widget/Spinner;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdapter(Landroid/widget/Spinner$DropdownPopup;)Landroid/widget/ListAdapter;
    .locals 0

    iget-object p0, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0, p1}, Landroid/widget/Spinner$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Spinner$DropdownPopup;->setModal(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Spinner$DropdownPopup;->setPromptPosition(I)V

    new-instance v0, Landroid/widget/Spinner$DropdownPopup$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/Spinner$DropdownPopup$1;-><init>(Landroid/widget/Spinner$DropdownPopup;Landroid/widget/Spinner;)V

    invoke-virtual {p0, v0}, Landroid/widget/Spinner$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic blacklist access$001(Landroid/widget/Spinner$DropdownPopup;)V
    .locals 0

    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method

.method static synthetic blacklist access$101(Landroid/widget/Spinner$DropdownPopup;)V
    .locals 0

    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method


# virtual methods
.method greylist-max-o computeContentWidth()V
    .locals 10

    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v2}, Landroid/widget/Spinner;->-$$Nest$fgetmTempRect(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v2}, Landroid/widget/Spinner;->-$$Nest$fgetmTempRect(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v2}, Landroid/widget/Spinner;->-$$Nest$fgetmTempRect(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v2}, Landroid/widget/Spinner;->-$$Nest$fgetmTempRect(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v3}, Landroid/widget/Spinner;->-$$Nest$fgetmTempRect(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iput v4, v2, Landroid/graphics/Rect;->left:I

    :goto_1
    iget-object v2, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getWidth()I

    move-result v4

    const/16 v5, 0xc

    iget-object v6, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget v6, v6, Landroid/widget/Spinner;->mDropDownWidth:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget-object v7, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v7, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/Spinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v6

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v8, v7}, Landroid/widget/Spinner;->getWindowDisplayFrame(Landroid/graphics/Rect;)V

    iget v8, v7, Landroid/graphics/Rect;->right:I

    iget v9, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v9}, Landroid/widget/Spinner;->-$$Nest$fgetmTempRect(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v9}, Landroid/widget/Spinner;->-$$Nest$fgetmTempRect(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_2

    move v6, v8

    :cond_2
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v9}, Landroid/widget/Spinner;->-$$Nest$fgetmIsThemeDeviceDefaultFamily(Landroid/widget/Spinner;)Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v9, v6, 0xc

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_2

    :cond_3
    sub-int v9, v4, v2

    sub-int/2addr v9, v3

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    :goto_2
    goto :goto_3

    :cond_4
    iget-object v6, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget v6, v6, Landroid/widget/Spinner;->mDropDownWidth:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    sub-int v6, v4, v2

    sub-int/2addr v6, v3

    invoke-virtual {p0, v6}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_3

    :cond_5
    iget-object v6, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget v6, v6, Landroid/widget/Spinner;->mDropDownWidth:I

    invoke-virtual {p0, v6}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    :goto_3
    iget-object v6, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_6

    sub-int v6, v4, v3

    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v1, v6

    goto :goto_4

    :cond_6
    add-int/2addr v1, v2

    :goto_4
    iget-object v6, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v6}, Landroid/widget/Spinner;->-$$Nest$fgetmIsThemeDeviceDefaultFamily(Landroid/widget/Spinner;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v6}, Landroid/widget/Spinner;->-$$Nest$fgetmDropdownHorizontalOffset(Landroid/widget/Spinner;)I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p0, v6}, Landroid/widget/Spinner$DropdownPopup;->setHorizontalOffset(I)V

    goto :goto_5

    :cond_7
    invoke-virtual {p0, v1}, Landroid/widget/Spinner$DropdownPopup;->setHorizontalOffset(I)V

    :goto_5
    return-void
.end method

.method public greylist-max-o getHintText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method public greylist-max-o setPromptText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-void
.end method

.method public greylist-max-o show(II)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->isShowing()Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->computeContentWidth()V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/Spinner$DropdownPopup;->setInputMethodMode(I)V

    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    iget-object v2, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/Spinner$DropdownPopup;->setSelection(I)V

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Landroid/widget/Spinner$DropdownPopup$2;

    invoke-direct {v3, p0}, Landroid/widget/Spinner$DropdownPopup$2;-><init>(Landroid/widget/Spinner$DropdownPopup;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v4, Landroid/widget/Spinner$DropdownPopup$3;

    invoke-direct {v4, p0, v3}, Landroid/widget/Spinner$DropdownPopup$3;-><init>(Landroid/widget/Spinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v4}, Landroid/widget/Spinner$DropdownPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_1
    return-void
.end method
