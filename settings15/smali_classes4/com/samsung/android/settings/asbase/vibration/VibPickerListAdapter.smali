.class public final Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCustomPatternCount:I

.field public final mFrom:Ljava/lang/String;

.field public mIsBluetoothA2dpOn:Z

.field public mListener:Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity$2;

.field public mSelectedItemOtherSimPosition:I

.field public mSelectedItemPosition:I

.field public mSyncEnabled:Z

.field public final mType:I

.field public final mVibPickerItemList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mSelectedItemPosition:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mSyncEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mIsBluetoothA2dpOn:Z

    iput v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mSelectedItemOtherSimPosition:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mListener:Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity$2;

    iput p2, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mType:I

    iput-object p3, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mVibPickerItemList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mContext:Landroid/content/Context;

    iput p4, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mCustomPatternCount:I

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    iput-object p5, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mFrom:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getItem(I)Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mVibPickerItemList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;

    return-object p0
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mVibPickerItemList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mVibPickerItemList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->getViewTypeByPosition(II)I

    move-result p0

    return p0
.end method

.method public final getPositionByIndex(I)I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mVibPickerItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mPattern:I

    if-ne v3, p1, :cond_0

    iget v1, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mPosition:I

    const-string v3, "Custom"

    iget-object v2, v2, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mCategory:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    const-string v3, "Galaxy"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mCustomPatternCount:I

    if-lez v2, :cond_1

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    :goto_1
    const-string v2, "android.intent.extra.pattern.FROM_CONTACT"

    iget-object v3, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mFrom:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    sget-boolean v2, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    instance-of v0, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->getItemViewType(I)I

    move-result v0

    sget-object v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->typeMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->MIDDLE_VIEW:Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->getRoundMode()I

    move-result v0

    iput v0, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->roundMode:I

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mVibPickerItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;

    iget v1, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mItemType:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object p0, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mSubtitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, v2}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    iget-object p0, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mDeleteItemButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p0, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mSubtitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object p0, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    iget-object p1, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_1
    iget-object v1, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mSubtitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    iget-object v1, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mDeleteItemButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mDeleteItemButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    iget-object v4, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    iget-object v5, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->onSelectItemListener:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder$1;

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    iget v5, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mSelectedItemPosition:I

    const/4 v6, 0x1

    if-ne p2, v5, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    sget-boolean v1, Lcom/samsung/android/settings/asbase/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v1, :cond_5

    const v1, 0xc350

    iget v5, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mPattern:I

    if-ne v5, v1, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mSyncEnabled:Z

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->setSpanText(Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;I)Landroid/text/SpannableString;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    goto :goto_3

    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mIsBluetoothA2dpOn:Z

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->setSpanText(Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;I)Landroid/text/SpannableString;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    iget-object v1, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v4}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v1, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v6}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    :cond_5
    :goto_3
    const-string v1, "android.intent.extra.pattern.FROM_CONTACT"

    iget-object v5, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mFrom:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "Default"

    iget-object v8, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mCategory:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f142838

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    const/4 v7, 0x2

    invoke-virtual {p0, v0, v7}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->setSpanText(Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;I)Landroid/text/SpannableString;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget v0, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mIsCustom:I

    if-ne v0, v6, :cond_9

    iget-object v0, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mDeleteItemButton:Landroid/widget/ImageButton;

    iget-object v4, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->onDeleteItemListener:Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mSelectedItemPosition:I

    if-eq p2, v0, :cond_7

    iget-object v0, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mDeleteItemButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_4

    :cond_7
    iget-object v0, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mDeleteItemButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_4
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mDeleteItemButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_8
    iget p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mSelectedItemOtherSimPosition:I

    if-ne p2, p0, :cond_a

    iget-object p0, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mDeleteItemButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_5

    :cond_9
    iget-object p0, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;->mDeleteItemButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_a
    :goto_5
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget-object v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->typeMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->MIDDLE_VIEW:Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p1, v2}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->getView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->FOOTER_VIEW:Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;

    invoke-virtual {v0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_1

    new-instance p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$DecorationViewHolder;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter$ViewHolder;-><init>(Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;Landroid/view/View;)V

    move-object p0, p2

    :goto_1
    return-object p0
.end method

.method public final setSpanText(Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;I)Landroid/text/SpannableString;
    .locals 5

    iget-object v0, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "\n"

    if-nez p2, :cond_1

    iget p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mType:I

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f14283b

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f14283a

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const p2, 0x7f1504ad

    goto :goto_2

    :cond_1
    const/4 v3, 0x1

    const v4, 0x7f150239

    if-ne p2, v3, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f14283c

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    move p2, v4

    goto :goto_2

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_2
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, p2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x21

    invoke-virtual {v0, v2, v1, p0, p1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method
