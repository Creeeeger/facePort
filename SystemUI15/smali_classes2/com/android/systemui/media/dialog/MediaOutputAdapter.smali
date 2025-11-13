.class public final Lcom/android/systemui/media/dialog/MediaOutputAdapter;
.super Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mMediaItemList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaOutputAdapter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/media/dialog/MediaOutputController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;-><init>(Lcom/android/systemui/media/dialog/MediaOutputController;)V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->mMediaItemList:Ljava/util/List;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->mMediaItemList:Ljava/util/List;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItemId(I)J
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->mMediaItemList:Ljava/util/List;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const-string p0, "Incorrect position for item id: "

    const-string v0, "MediaOutputAdapter"

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    int-to-long p0, p1

    return-wide p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->mMediaItemList:Ljava/util/List;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/dialog/MediaItem;

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaItem;->mMediaDeviceOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaItem;->mMediaDeviceOptional:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    int-to-long p0, p0

    goto :goto_0

    :cond_1
    int-to-long p0, p1

    :goto_0
    return-wide p0
.end method

.method public final getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->mMediaItemList:Ljava/util/List;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const-string p0, "Incorrect position for item type: "

    const-string v0, "MediaOutputAdapter"

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->mMediaItemList:Ljava/util/List;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/dialog/MediaItem;

    iget p0, p0, Lcom/android/systemui/media/dialog/MediaItem;->mMediaItemType:I

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->mMediaItemList:Ljava/util/List;

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    const-string v3, "Incorrect position: "

    const-string v4, "MediaOutputAdapter"

    if-lt v1, v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, " list size: "

    invoke-static {v1, v3, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->mMediaItemList:Ljava/util/List;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->mMediaItemList:Ljava/util/List;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/dialog/MediaItem;

    iget v2, v0, Lcom/android/systemui/media/dialog/MediaItem;->mMediaItemType:I

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x8

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v6, :cond_2

    invoke-static {v1, v3, v4}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_2
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;

    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mTitleText:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    iget-object v3, v2, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget v3, v3, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, v2, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f130bcc

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v0

    invoke-virtual/range {v8 .. v13}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setSingleLineLayout(Ljava/lang/CharSequence;ZZZZ)V

    iget-object v1, v2, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0807f6

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mTitleIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mTitleIcon:Landroid/widget/ImageView;

    iget-object v2, v2, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget v3, v2, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mIconAreaLayout:Landroid/widget/FrameLayout;

    iget v3, v2, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemBackground:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mContainerLayout:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda3;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_b

    :cond_3
    move-object/from16 v1, p1

    check-cast v1, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaGroupDividerViewHolder;

    iget-object v2, v1, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaGroupDividerViewHolder;->mTitleText:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaGroupDividerViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    iget-object v3, v3, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget v3, v3, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v1, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaGroupDividerViewHolder;->mTitleText:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    :cond_4
    move-object/from16 v13, p1

    check-cast v13, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaItem;->mMediaDeviceOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mDeviceId:Ljava/lang/String;

    iget-object v2, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v2, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mEndTouchArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mEndTouchArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    iget-object v2, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mContainerLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mContainerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mTitleText:Landroid/widget/TextView;

    iget-object v8, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;

    iget-object v4, v8, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget v4, v4, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mSubTitleText:Landroid/widget/TextView;

    iget-object v9, v8, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget v4, v9, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mSubTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v2, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mTwoLineTitleText:Landroid/widget/TextView;

    iget v4, v9, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mVolumeValueText:Landroid/widget/TextView;

    iget v4, v9, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mSeekBar:Lcom/android/systemui/media/dialog/MediaOutputSeekbar;

    iget v4, v9, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorSeekbarProgress:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, v13, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->this$0:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    iget-object v4, v2, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object v4, v4, Lcom/android/systemui/media/dialog/MediaOutputController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMutingExpectedDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v4

    const/4 v14, 0x0

    if-eqz v4, :cond_5

    move v4, v5

    goto :goto_0

    :cond_5
    move v4, v14

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->isCurrentlyConnected(Lcom/android/settingslib/media/MediaDevice;)Z

    move-result v10

    iget-object v11, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mSeekBar:Lcom/android/systemui/media/dialog/MediaOutputSeekbar;

    invoke-virtual {v11}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v11

    if-ne v11, v7, :cond_6

    move v11, v5

    goto :goto_1

    :cond_6
    move v11, v14

    :goto_1
    iget v12, v2, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mCurrentActivePosition:I

    if-ne v12, v1, :cond_7

    const/4 v12, -0x1

    iput v12, v2, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mCurrentActivePosition:I

    :cond_7
    iget-object v12, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v12, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mContainerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v7, v14}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v7, v2, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {v7}, Lcom/android/systemui/media/dialog/MediaOutputController;->isAnyDeviceTransferring()Z

    move-result v12

    if-eqz v12, :cond_9

    iget v1, v0, Lcom/android/settingslib/media/MediaDevice;->mState:I

    if-ne v1, v5, :cond_8

    invoke-virtual {v7}, Lcom/android/systemui/media/dialog/MediaOutputController;->hasAdjustVolumeUserRestriction()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v13, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setUpDeviceIcon(Lcom/android/settingslib/media/MediaDevice;)V

    iget-object v1, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, v2, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget v2, v2, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, v13

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setSingleLineLayout(Ljava/lang/CharSequence;ZZZZ)V

    goto/16 :goto_b

    :cond_8
    invoke-virtual {v13, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setUpDeviceIcon(Lcom/android/settingslib/media/MediaDevice;)V

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v13

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setSingleLineLayout(Ljava/lang/CharSequence;ZZZZ)V

    goto/16 :goto_b

    :cond_9
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->isMutingExpectedDevice()Z

    move-result v12

    const v15, 0x7f080ca6

    if-eqz v12, :cond_a

    invoke-virtual {v7}, Lcom/android/systemui/media/dialog/MediaOutputController;->isCurrentConnectedDeviceRemote()Z

    move-result v12

    if-nez v12, :cond_a

    iget v3, v7, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    invoke-virtual {v13, v15, v3}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->updateTitleIcon(II)V

    iput v1, v2, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mCurrentActivePosition:I

    new-instance v1, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, v13, v0, v2}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lcom/android/settingslib/media/MediaDevice;I)V

    iget-object v2, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mContainerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mIconAreaLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v13

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setSingleLineLayout(Ljava/lang/CharSequence;ZZZZ)V

    invoke-virtual {v13}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->disableSeekBar()V

    iget v0, v9, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    invoke-virtual {v13, v15, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->updateTitleIcon(II)V

    iget-object v0, v8, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f080ca9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mItemLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mItemLayout:Landroid/widget/FrameLayout;

    iget v1, v9, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorConnectedItemBackground:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mIconAreaLayout:Landroid/widget/FrameLayout;

    iget v1, v9, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorConnectedItemBackground:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_b

    :cond_a
    iget-object v8, v0, Lcom/android/settingslib/media/MediaDevice;->mItem:Landroid/media/RouteListingPreference$Item;

    const v12, 0x7f080caf

    const v9, 0x7f080cad

    const/high16 v16, 0x3f000000    # 0.5f

    const v17, 0x7f080cac

    const/high16 v3, 0x3f800000    # 1.0f

    const v14, 0x7f080b11

    if-eqz v8, :cond_17

    invoke-virtual {v8}, Landroid/media/RouteListingPreference$Item;->getSubText()I

    move-result v8

    if-eqz v8, :cond_17

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->hasOngoingSession()Z

    move-result v4

    if-eqz v4, :cond_c

    if-nez v10, :cond_b

    invoke-virtual {v7}, Lcom/android/systemui/media/dialog/MediaOutputController;->getSelectedMediaDevice()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->isDeviceIncluded(Ljava/util/List;Lcom/android/settingslib/media/MediaDevice;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    move v4, v5

    goto :goto_2

    :cond_c
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->isHostForOngoingSession()Z

    move-result v8

    if-eqz v8, :cond_d

    if-eqz v4, :cond_d

    move v8, v5

    goto :goto_3

    :cond_d
    const/4 v8, 0x0

    :goto_3
    if-eqz v4, :cond_f

    iput v1, v2, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mCurrentActivePosition:I

    iget v1, v7, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    invoke-virtual {v13, v15, v1}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->updateTitleIcon(II)V

    iget-object v1, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mSubTitleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getSubtextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mSubTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mTitleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mTwoLineTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    if-eqz v8, :cond_e

    move/from16 v14, v17

    :cond_e
    invoke-virtual {v13, v0, v14}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->updateEndClickAreaAsSessionEditing(Lcom/android/settingslib/media/MediaDevice;I)V

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v2, v13

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setTwoLineLayout(Lcom/android/settingslib/media/MediaDevice;ZZZZ)V

    invoke-virtual {v13, v0, v11}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->initSeekbar(Lcom/android/settingslib/media/MediaDevice;Z)V

    goto/16 :goto_b

    :cond_f
    if-eqz v10, :cond_10

    iput v1, v2, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mCurrentActivePosition:I

    iget v1, v7, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    invoke-virtual {v13, v15, v1}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->updateTitleIcon(II)V

    invoke-virtual {v13, v0, v11}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->initSeekbar(Lcom/android/settingslib/media/MediaDevice;Z)V

    goto :goto_4

    :cond_10
    invoke-virtual {v13, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setUpDeviceIcon(Lcom/android/settingslib/media/MediaDevice;)V

    :goto_4
    iget-object v1, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mSubTitleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getSubtextString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->hasOngoingSession()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v2, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v14}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_5

    :cond_11
    iget-object v1, v2, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getSelectionBehavior()I

    move-result v2

    if-eqz v2, :cond_13

    if-eq v2, v6, :cond_12

    const/4 v1, 0x0

    goto :goto_5

    :cond_12
    invoke-virtual {v1, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_5

    :cond_13
    invoke-virtual {v1, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_5
    if-eqz v1, :cond_14

    invoke-virtual {v13, v1}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->updateDeviceStatusIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_14
    invoke-virtual {v13, v0}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->updateClickActionBasedOnSelectionBehavior(Lcom/android/settingslib/media/MediaDevice;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_6

    :cond_15
    move/from16 v3, v16

    :goto_6
    iget-object v2, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mSubTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v2, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mTitleIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v2, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mTwoLineTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v2, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    if-eqz v1, :cond_16

    move v6, v5

    goto :goto_7

    :cond_16
    const/4 v6, 0x0

    :goto_7
    const/4 v7, 0x0

    move-object v2, v13

    move-object v3, v0

    move v4, v10

    move v5, v10

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setTwoLineLayout(Lcom/android/settingslib/media/MediaDevice;ZZZZ)V

    goto/16 :goto_b

    :cond_17
    iget v8, v0, Lcom/android/settingslib/media/MediaDevice;->mState:I

    const/4 v3, 0x3

    if-ne v8, v3, :cond_18

    invoke-virtual {v13, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setUpDeviceIcon(Lcom/android/settingslib/media/MediaDevice;)V

    iget-object v1, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mStatusIcon:Landroid/widget/ImageView;

    iget-object v2, v2, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mStatusIcon:Landroid/widget/ImageView;

    iget v2, v7, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mSubTitleText:Landroid/widget/TextView;

    const v2, 0x7f130bc7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, v13, v0, v2}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lcom/android/settingslib/media/MediaDevice;I)V

    iget-object v2, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mContainerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mIconAreaLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, v13

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setTwoLineLayout(Lcom/android/settingslib/media/MediaDevice;ZZZZ)V

    goto/16 :goto_b

    :cond_18
    const/4 v3, 0x5

    if-ne v8, v3, :cond_19

    invoke-virtual {v13, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setUpDeviceIcon(Lcom/android/settingslib/media/MediaDevice;)V

    iget-object v1, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, v2, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget v2, v2, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, v13

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setSingleLineLayout(Ljava/lang/CharSequence;ZZZZ)V

    goto/16 :goto_b

    :cond_19
    invoke-virtual {v7}, Lcom/android/systemui/media/dialog/MediaOutputController;->getSelectedMediaDevice()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_1a

    invoke-virtual {v7}, Lcom/android/systemui/media/dialog/MediaOutputController;->getSelectedMediaDevice()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->isDeviceIncluded(Ljava/util/List;Lcom/android/settingslib/media/MediaDevice;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v7}, Lcom/android/systemui/media/dialog/MediaOutputController;->getDeselectableMediaDevice()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->isDeviceIncluded(Ljava/util/List;Lcom/android/settingslib/media/MediaDevice;)Z

    move-result v1

    iget v2, v7, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    invoke-virtual {v13, v15, v2}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->updateTitleIcon(II)V

    invoke-virtual {v13, v5, v1, v0}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->updateGroupableCheckBox(ZZLcom/android/settingslib/media/MediaDevice;)V

    invoke-virtual {v13, v0, v1}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->updateEndClickArea(Lcom/android/settingslib/media/MediaDevice;Z)V

    iget-object v1, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mContainerLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v1, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mSeekBar:Lcom/android/systemui/media/dialog/MediaOutputSeekbar;

    invoke-virtual {v13, v1, v0}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->setUpContentDescriptionForView(Landroid/view/View;Lcom/android/settingslib/media/MediaDevice;)V

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, v13

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setSingleLineLayout(Ljava/lang/CharSequence;ZZZZ)V

    invoke-virtual {v13, v0, v11}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->initSeekbar(Lcom/android/settingslib/media/MediaDevice;Z)V

    goto/16 :goto_b

    :cond_1a
    invoke-virtual {v7}, Lcom/android/systemui/media/dialog/MediaOutputController;->hasAdjustVolumeUserRestriction()Z

    move-result v3

    if-nez v3, :cond_1f

    if-eqz v10, :cond_1f

    if-eqz v4, :cond_1b

    invoke-virtual {v7}, Lcom/android/systemui/media/dialog/MediaOutputController;->isCurrentConnectedDeviceRemote()Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-virtual {v13, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setUpDeviceIcon(Lcom/android/settingslib/media/MediaDevice;)V

    new-instance v1, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    invoke-direct {v1, v13, v2}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    iget-object v2, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mContainerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mIconAreaLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v13

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setSingleLineLayout(Ljava/lang/CharSequence;ZZZZ)V

    goto/16 :goto_b

    :cond_1b
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->hasOngoingSession()Z

    move-result v3

    if-eqz v3, :cond_1d

    iput v1, v2, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mCurrentActivePosition:I

    iget v1, v7, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    invoke-virtual {v13, v15, v1}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->updateTitleIcon(II)V

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->isHostForOngoingSession()Z

    move-result v1

    if-eqz v1, :cond_1c

    move/from16 v14, v17

    :cond_1c
    invoke-virtual {v13, v0, v14}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->updateEndClickAreaAsSessionEditing(Lcom/android/settingslib/media/MediaDevice;I)V

    iget-object v1, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mEndClickIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, v13

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setSingleLineLayout(Ljava/lang/CharSequence;ZZZZ)V

    invoke-virtual {v13, v0, v11}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->initSeekbar(Lcom/android/settingslib/media/MediaDevice;Z)V

    goto/16 :goto_b

    :cond_1d
    invoke-virtual {v7}, Lcom/android/systemui/media/dialog/MediaOutputController;->isCurrentConnectedDeviceRemote()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v7}, Lcom/android/systemui/media/dialog/MediaOutputController;->getSelectableMediaDevice()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1e

    iget v1, v7, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    invoke-virtual {v13, v15, v1}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->updateTitleIcon(II)V

    invoke-virtual {v7}, Lcom/android/systemui/media/dialog/MediaOutputController;->getDeselectableMediaDevice()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->isDeviceIncluded(Ljava/util/List;Lcom/android/settingslib/media/MediaDevice;)Z

    move-result v1

    invoke-virtual {v13, v5, v1, v0}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->updateGroupableCheckBox(ZZLcom/android/settingslib/media/MediaDevice;)V

    invoke-virtual {v13, v0, v1}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->updateEndClickArea(Lcom/android/settingslib/media/MediaDevice;Z)V

    iget-object v1, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mContainerLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v1, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mSeekBar:Lcom/android/systemui/media/dialog/MediaOutputSeekbar;

    invoke-virtual {v13, v1, v0}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->setUpContentDescriptionForView(Landroid/view/View;Lcom/android/settingslib/media/MediaDevice;)V

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, v13

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setSingleLineLayout(Ljava/lang/CharSequence;ZZZZ)V

    invoke-virtual {v13, v0, v11}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->initSeekbar(Lcom/android/settingslib/media/MediaDevice;Z)V

    goto/16 :goto_b

    :cond_1e
    iget v3, v7, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    invoke-virtual {v13, v15, v3}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->updateTitleIcon(II)V

    iget-object v3, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mContainerLayout:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v3, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mSeekBar:Lcom/android/systemui/media/dialog/MediaOutputSeekbar;

    invoke-virtual {v13, v3, v0}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->setUpContentDescriptionForView(Landroid/view/View;Lcom/android/settingslib/media/MediaDevice;)V

    iput v1, v2, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mCurrentActivePosition:I

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, v13

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setSingleLineLayout(Ljava/lang/CharSequence;ZZZZ)V

    invoke-virtual {v13, v0, v11}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->initSeekbar(Lcom/android/settingslib/media/MediaDevice;Z)V

    goto/16 :goto_b

    :cond_1f
    invoke-virtual {v7}, Lcom/android/systemui/media/dialog/MediaOutputController;->getSelectableMediaDevice()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->isDeviceIncluded(Ljava/util/List;Lcom/android/settingslib/media/MediaDevice;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v13, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setUpDeviceIcon(Lcom/android/settingslib/media/MediaDevice;)V

    const/4 v1, 0x0

    invoke-virtual {v13, v1, v5, v0}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->updateGroupableCheckBox(ZZLcom/android/settingslib/media/MediaDevice;)V

    invoke-virtual {v13, v0, v5}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->updateEndClickArea(Lcom/android/settingslib/media/MediaDevice;Z)V

    new-instance v1, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;

    const/4 v2, 0x4

    invoke-direct {v1, v13, v0, v2}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$Api34Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lcom/android/settingslib/media/MediaDevice;I)V

    iget-object v2, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mContainerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mIconAreaLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v13

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setSingleLineLayout(Ljava/lang/CharSequence;ZZZZ)V

    goto :goto_b

    :cond_20
    invoke-virtual {v13, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setUpDeviceIcon(Lcom/android/settingslib/media/MediaDevice;)V

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    move-object v7, v13

    move v4, v9

    move v9, v3

    move v3, v12

    move v12, v1

    invoke-virtual/range {v7 .. v12}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->setSingleLineLayout(Ljava/lang/CharSequence;ZZZZ)V

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->hasOngoingSession()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, v2, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v14}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_9

    :cond_21
    iget-object v1, v2, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getSelectionBehavior()I

    move-result v2

    if-eqz v2, :cond_23

    if-eq v2, v6, :cond_22

    const/4 v3, 0x0

    goto :goto_8

    :cond_22
    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_8

    :cond_23
    invoke-virtual {v1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_8
    move-object v1, v3

    :goto_9
    if-eqz v1, :cond_24

    invoke-virtual {v13, v1}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->updateDeviceStatusIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mStatusIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_24
    invoke-virtual {v13, v0}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;->updateClickActionBasedOnSelectionBehavior(Lcom/android/settingslib/media/MediaDevice;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_25
    move/from16 v0, v16

    :goto_a
    iget-object v1, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mTitleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, v13, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;->mStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_b
    return-void
.end method

.method public final onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    new-instance p1, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;

    iget-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mHolderView:Landroid/view/View;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaDeviceViewHolder;-><init>(Lcom/android/systemui/media/dialog/MediaOutputAdapter;Landroid/view/View;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaGroupDividerViewHolder;

    iget-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mHolderView:Landroid/view/View;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/media/dialog/MediaOutputAdapter$MediaGroupDividerViewHolder;-><init>(Lcom/android/systemui/media/dialog/MediaOutputAdapter;Landroid/view/View;)V

    return-object p1
.end method
