.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

.field public final synthetic f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final synthetic f$2:Lcom/android/settings/homepage/contextualcards/ContextualCard;

.field public final synthetic f$3:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$$ExternalSyntheticLambda1;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$$ExternalSyntheticLambda1;->f$2:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iput-object p4, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$$ExternalSyntheticLambda1;->f$3:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$$ExternalSyntheticLambda1;->f$3:Landroid/view/View;

    check-cast p1, Landroidx/slice/Slice;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v2, p1, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    const-string v3, "error"

    invoke-static {v3, v2}, Landroidx/slice/ArrayUtils;->contains(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Slice has HINT_ERROR, skipping rendering. uri="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SliceCardRenderer"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mSliceLiveDataMap:Ljava/util/Map;

    iget-object p1, p1, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LiveData;

    iget-object p1, v1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p0, v1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/settings/homepage/contextualcards/CardContentProvider;->REFRESH_CARD_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$$ExternalSyntheticLambda1;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer$$ExternalSyntheticLambda1;->f$2:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    const v4, 0x7f0d01e9

    if-ne v3, v4, :cond_2

    iget-object v1, v1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mHalfCardHelper:Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;

    iget-object v3, v1, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object p1

    iget-object p1, p1, Landroidx/slice/SliceMetadata;->mPrimaryAction:Landroidx/slice/core/SliceActionImpl;

    iget-object v3, v2, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, p1, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    iget-object v5, v1, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v2, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, p1, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;->content:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, p1, p0, v2}, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;Landroidx/slice/core/SliceActionImpl;Lcom/android/settings/homepage/contextualcards/ContextualCard;Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->mFullCardHelper:Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;

    iget-object v3, v2, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {v3}, Landroidx/slice/widget/SliceView;->setScrollable()V

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSliceUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroidx/slice/widget/SliceView;->setMode(I)V

    invoke-virtual {v3, p1}, Landroidx/slice/widget/SliceView;->setSlice(Landroidx/slice/Slice;)V

    new-instance p1, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$$ExternalSyntheticLambda0;

    invoke-direct {p1, v1, p0, v2}, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;Lcom/android/settings/homepage/contextualcards/ContextualCard;Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;)V

    iput-object p1, v3, Landroidx/slice/widget/SliceView;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object v1, v3, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v1, p1}, Landroidx/slice/widget/SliceChildView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    invoke-virtual {v3}, Landroidx/slice/widget/SliceView;->setShowTitleItems()V

    iget-boolean p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsLargeCard:Z

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    iput-boolean p0, v3, Landroidx/slice/widget/SliceView;->mShowHeaderDivider:Z

    iget-object p1, v3, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz p1, :cond_3

    iget-object v1, p1, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p0, :cond_3

    iget-object p1, p1, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    iput-boolean p0, p1, Landroidx/slice/widget/RowContent;->mShowBottomDivider:Z

    :cond_3
    invoke-virtual {v3}, Landroidx/slice/widget/SliceView;->setShowActionDividers()V

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method
