.class public Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VibPickerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;,
        Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$DecorationViewHolder;,
        Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCustomPatternCount:I

.field private final mFrom:Ljava/lang/String;

.field private mIsBluetoothA2dpOn:Z

.field private mListener:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$OnItemClickListener;

.field private mSelectedItemPosition:I

.field private mSyncEnabled:Z

.field private final mType:I

.field private final mVibPickerItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/as/vibration/VibPickerItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCustomPatternCount(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mCustomPatternCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;)Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mListener:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$OnItemClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectedItemPosition(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mSelectedItemPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibPickerItemList(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mVibPickerItemList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCustomPatternCount(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mCustomPatternCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSelectedItemPosition(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mSelectedItemPosition:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/as/vibration/VibPickerItem;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mSelectedItemPosition:I

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mSyncEnabled:Z

    .line 68
    iput-boolean v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mIsBluetoothA2dpOn:Z

    const/4 v1, 0x0

    .line 76
    iput-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mListener:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$OnItemClickListener;

    .line 84
    iput p2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mType:I

    .line 85
    iput-object p3, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mVibPickerItemList:Ljava/util/ArrayList;

    .line 86
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mContext:Landroid/content/Context;

    .line 87
    iput p4, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mCustomPatternCount:I

    .line 88
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 89
    iput-object p5, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mFrom:Ljava/lang/String;

    return-void
.end method

.method private setSpanText(Lcom/samsung/android/settings/as/vibration/VibPickerItem;I)Landroid/text/SpannableString;
    .locals 4

    .line 248
    invoke-virtual {p1}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getName()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "\n"

    if-nez p2, :cond_1

    .line 252
    iget p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mType:I

    if-nez p1, :cond_0

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_vib_picker_not_available_sync_ringtone:I

    .line 254
    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 253
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 256
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_vib_picker_not_available_sync_notification:I

    .line 257
    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 259
    :goto_0
    sget p2, Lcom/android/settings/R$style;->SyncItemSummaryTextStyle:I

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 261
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_vib_picker_not_available_when_connected_bluetooth:I

    .line 262
    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 263
    sget p2, Lcom/android/settings/R$style;->DefaultItemSummaryTextStyle:I

    goto :goto_1

    .line 265
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 266
    sget p2, Lcom/android/settings/R$style;->DefaultItemSummaryTextStyle:I

    .line 268
    :goto_1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 269
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, p2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x21

    invoke-virtual {v0, v2, v1, p0, p1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method


# virtual methods
.method public getCustomPatternCount()I
    .locals 0

    .line 325
    iget p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mCustomPatternCount:I

    return p0
.end method

.method public getItem(I)Lcom/samsung/android/settings/as/vibration/VibPickerItem;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mVibPickerItemList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mVibPickerItemList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mVibPickerItemList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->getViewTypeByPosition(II)I

    move-result p0

    return p0
.end method

.method public getPositionByIndex(I)I
    .locals 4

    .line 300
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mVibPickerItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/as/vibration/VibPickerItem;

    if-eqz v2, :cond_0

    .line 301
    invoke-virtual {v2}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getPattern()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 302
    invoke-virtual {v2}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getPosition()I

    move-result v1

    .line 303
    invoke-virtual {v2}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getCategory()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Custom"

    .line 304
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    const-string v3, "Galaxy"

    .line 306
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 307
    iget v2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mCustomPatternCount:I

    if-lez v2, :cond_1

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    .line 313
    :cond_3
    :goto_1
    sget-boolean v2, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v2, :cond_0

    const v2, 0xc350

    if-ne p1, v2, :cond_4

    return v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 181
    instance-of v0, p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;

    if-eqz v0, :cond_8

    .line 182
    check-cast p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;

    .line 183
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->getItemViewType(I)I

    move-result v0

    .line 184
    invoke-static {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->getViewType(I)Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->getRoundMode()I

    move-result v0

    iput v0, p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->roundMode:I

    .line 185
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mVibPickerItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/as/vibration/VibPickerItem;

    .line 187
    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getItemType()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 188
    iget-object p0, p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mSubtitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    iget-object p0, p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, v2}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 190
    iget-object p0, p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mDeleteItemButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 192
    iget-object p0, p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mSubtitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 193
    iget-object p0, p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 194
    iget-object p0, p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 196
    :cond_0
    iget-object v1, p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mSubtitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 197
    iget-object v1, p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 198
    iget-object v1, p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mDeleteItemButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 200
    iget-object v1, p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v1, p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mDeleteItemButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v1, p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v1, p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->-$$Nest$fgetonSelectItemListener(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v1, p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    iget v4, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mSelectedItemPosition:I

    const/4 v5, 0x1

    if-ne p2, v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 207
    sget-boolean v1, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v1, :cond_4

    .line 208
    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getPattern()I

    move-result v1

    const v4, 0xc350

    if-ne v1, v4, :cond_4

    .line 209
    iget-boolean v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mSyncEnabled:Z

    if-nez v1, :cond_2

    .line 210
    iget-object v1, p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->setSpanText(Lcom/samsung/android/settings/as/vibration/VibPickerItem;I)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v1, p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    goto :goto_2

    .line 213
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mIsBluetoothA2dpOn:Z

    if-eqz v1, :cond_3

    .line 214
    iget-object v1, p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    invoke-direct {p0, v0, v5}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->setSpanText(Lcom/samsung/android/settings/as/vibration/VibPickerItem;I)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 216
    :cond_3
    iget-object v1, p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :goto_1
    iget-object v1, p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 223
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mFrom:Ljava/lang/String;

    const-string v4, "android.intent.extra.pattern.FROM_CONTACT"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 224
    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getCategory()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Default"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 225
    iget-object v1, p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    const/4 v6, 0x2

    invoke-direct {p0, v0, v6}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->setSpanText(Lcom/samsung/android/settings/as/vibration/VibPickerItem;I)Landroid/text/SpannableString;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getIsCustom()I

    move-result v0

    if-ne v0, v5, :cond_7

    .line 230
    iget-object v0, p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mDeleteItemButton:Landroid/widget/ImageButton;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->-$$Nest$fgetonDeleteItemListener(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mSelectedItemPosition:I

    if-eq p2, v0, :cond_6

    .line 232
    iget-object p2, p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mDeleteItemButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_3

    .line 234
    :cond_6
    iget-object p2, p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mDeleteItemButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 237
    :goto_3
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mFrom:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 238
    iget-object p0, p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mDeleteItemButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_4

    .line 241
    :cond_7
    iget-object p0, p1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mDeleteItemButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_8
    :goto_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 172
    invoke-static {p2}, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->getViewType(I)Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p1, v2}, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->getView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    .line 174
    sget-object v0, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->FOOTER_VIEW:Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 175
    new-instance p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$DecorationViewHolder;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$DecorationViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 176
    :cond_0
    new-instance p2, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;-><init>(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;Landroid/view/View;)V

    move-object p0, p2

    :goto_0
    return-object p0
.end method

.method public setOnItemClickListener(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$OnItemClickListener;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mListener:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$OnItemClickListener;

    return-void
.end method

.method public setSelectItem(I)V
    .locals 0

    .line 289
    iput p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mSelectedItemPosition:I

    .line 290
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public setSyncEnabled(ZLjava/lang/String;Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mSyncEnabled:Z

    .line 95
    iput-boolean p3, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mIsBluetoothA2dpOn:Z

    return-void
.end method

.method public updateItem(I)V
    .locals 0

    .line 294
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public updateVibPatternList(I)V
    .locals 0

    .line 329
    iput p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->mCustomPatternCount:I

    .line 330
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
