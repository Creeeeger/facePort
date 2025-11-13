.class public final Lcom/android/settings/dream/DreamAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mEnabled:Z

.field public final mItemList:Ljava/util/List;

.field public mLastSelectedPos:I

.field public final mLayouts:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/dream/DreamAdapter;->mLastSelectedPos:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dream/DreamAdapter;->mEnabled:Z

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dream/DreamAdapter;->mLayouts:Landroid/util/SparseIntArray;

    iput-object p1, p0, Lcom/android/settings/dream/DreamAdapter;->mItemList:Ljava/util/List;

    const/4 p0, 0x0

    const p1, 0x7f0d0216

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dream/DreamAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dream/DreamAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/dream/DreamPickerController$DreamItem;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    check-cast p1, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;

    iget-object p0, p0, Lcom/android/settings/dream/DreamAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/dream/DreamPickerController$DreamItem;

    iget-object v0, p1, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/dream/DreamPickerController$DreamItem;->mDreamInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v1, v1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/dream/DreamPickerController$DreamItem;->mDreamInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v1, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->description:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v1, p1, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/dream/DreamPickerController$DreamItem;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->mContext:Landroid/content/Context;

    const v2, 0x7f0803e0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    iget-object v2, p1, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f07037d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v4, v4, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p1, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->mTitleView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p0, p2}, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;Lcom/android/settings/dream/DreamPickerController$DreamItem;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/dream/DreamPickerController$DreamItem;->isActive()Z

    move-result v1

    const/4 v2, 0x1

    iget-object v6, p1, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->this$0:Lcom/android/settings/dream/DreamAdapter;

    if-eqz v1, :cond_2

    iput p2, v6, Lcom/android/settings/dream/DreamAdapter;->mLastSelectedPos:I

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->setClickable(Z)V

    goto :goto_2

    :cond_2
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->setSelected(Z)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setClickable(Z)V

    :goto_2
    iget-object p2, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->previewImage:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_3

    iget-object v1, p1, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->mPreviewView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p1, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->mPreviewView:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    iget-object p2, p1, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->mPreviewPlaceholderView:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_3
    iget-object p2, p1, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->mPreviewView:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p1, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->mPreviewPlaceholderView:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    iget-object p2, p1, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->mCustomizeButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/dream/DreamPickerController$DreamItem;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->mCustomizeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/dream/DreamPickerController$DreamItem;->isActive()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz p0, :cond_4

    iget-boolean p0, v6, Lcom/android/settings/dream/DreamAdapter;->mEnabled:Z

    if-eqz p0, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p0, p1, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->mCustomizeButton:Landroid/widget/Button;

    invoke-virtual {p0, v4}, Landroid/widget/Button;->setSelected(Z)V

    iget-object p0, p1, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->mCustomizeButton:Landroid/widget/Button;

    iget-object p2, p1, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f140b26

    invoke-virtual {p2, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean p2, v6, Lcom/android/settings/dream/DreamAdapter;->mEnabled:Z

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->setEnabledStateOnViews(Landroid/view/View;Z)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dream/DreamAdapter;->mLayouts:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;-><init>(Lcom/android/settings/dream/DreamAdapter;Landroid/view/View;Landroid/content/Context;)V

    return-object v0
.end method
