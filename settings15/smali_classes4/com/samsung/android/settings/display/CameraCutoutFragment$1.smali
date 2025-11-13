.class public final Lcom/samsung/android/settings/display/CameraCutoutFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
.implements Landroidx/apppickerview/widget/AppPickerView$OnBindListener;
.implements Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;


# instance fields
.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
    .locals 4

    instance-of p2, p1, Landroidx/apppickerview/widget/AppPickerView$CustomViewItemViewHolder;

    if-nez p2, :cond_7

    instance-of p2, p1, Landroidx/apppickerview/widget/AppPickerView$SeparatorViewHolder;

    if-eqz p2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$1;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object v0, p2, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mRows:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

    if-nez p3, :cond_1

    return-void

    :cond_1
    iget-object v0, p3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppIconContainer:Landroid/view/ViewGroup;

    if-eq v0, v2, :cond_4

    iget-object v2, p3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppIconContainer:Landroid/view/ViewGroup;

    iget-object v2, p3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_2
    iget-object v0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/widget/AppCompatSpinner;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_3
    iget-object v0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppIconContainer:Landroid/view/ViewGroup;

    iget-object v2, p3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p2, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070dc3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p2, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070ace

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setDropDownHorizontalOffset(I)V

    iget-object v0, p3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatSpinner;->setDropDownVerticalOffset(I)V

    :cond_4
    :goto_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/settings/display/CameraCutoutFragment$3$1;

    invoke-direct {v2, p3}, Lcom/samsung/android/settings/display/CameraCutoutFragment$3$1;-><init>(Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    new-instance v2, Lcom/samsung/android/settings/display/CameraCutoutFragment$3$2;

    invoke-direct {v2, p0, p1, p3}, Lcom/samsung/android/settings/display/CameraCutoutFragment$3$2;-><init>(Lcom/samsung/android/settings/display/CameraCutoutFragment$1;Landroidx/apppickerview/widget/AppPickerView$ViewHolder;Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mSummary:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060659

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget p0, p3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mSummary:Landroid/widget/TextView;

    iget-object v0, p3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x2

    if-ne p0, v1, :cond_6

    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mSummary:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mSummary:Landroid/widget/TextView;

    iget-object v0, p3, Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;->mOptionList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p0, p2, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, p3, v1}, Lcom/samsung/android/settings/display/CameraCutoutFragment$LoadAppIconTask;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object v1, v0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mPreviewImageLayout:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mPreviewImageLayout:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mPreviewImageLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    new-instance v1, Lcom/samsung/android/settings/display/CameraCutoutFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/CameraCutoutFragment$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroidx/apppickerview/widget/AppPickerView;->setSearchFilter(Ljava/lang/String;Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;)V

    :cond_2
    return v2
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->setSearchFilter(Ljava/lang/String;Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;)V

    :cond_0
    return-void
.end method

.method public onSearchFilterCompleted(I)V
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$1;

    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mEmptyViewText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    const p1, 0x7f1420c6

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mEmptyViewText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppNestedView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mAppNestedView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method
