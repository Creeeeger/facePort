.class public Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseTimeZoneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;,
        Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;,
        Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$FooterViewHolder;,
        Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$HeaderViewHolder;,
        Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field static final TYPE_HEADER:I = 0x0

.field static final TYPE_ITEM:I = 0x1


# instance fields
.field private mFilter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter<",
            "TT;>.ArrayFilter;"
        }
    .end annotation
.end field

.field private final mHeaderText:Ljava/lang/CharSequence;

.field private mIsSupportContrastView:Z

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mLocale:Ljava/util/Locale;

.field private final mOnListItemClickListener:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mOriginalItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mQueryText:Ljava/lang/String;

.field private final mShowHeader:Z

.field private final mShowItemSummary:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmLocale(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;)Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOriginalItems(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mOriginalItems:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmItems(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mItems:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmQueryText(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mQueryText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;Ljava/util/Locale;ZLjava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener<",
            "TT;>;",
            "Ljava/util/Locale;",
            "Z",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, ""

    .line 75
    iput-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mQueryText:Ljava/lang/String;

    .line 76
    invoke-static {}, Lcom/samsung/android/settings/general/GeneralUtils;->isSupportContrastTextView()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mIsSupportContrastView:Z

    .line 84
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mOriginalItems:Ljava/util/List;

    .line 85
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mItems:Ljava/util/List;

    .line 86
    iput-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mOnListItemClickListener:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;

    .line 87
    iput-object p3, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mLocale:Ljava/util/Locale;

    .line 88
    iput-boolean p4, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mShowItemSummary:Z

    const/4 p1, 0x1

    if-eqz p5, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 89
    :goto_0
    iput-boolean p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mShowHeader:Z

    .line 90
    iput-object p5, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mHeaderText:Ljava/lang/CharSequence;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method private getHeaderCount()I
    .locals 0

    .line 208
    iget-boolean p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mShowHeader:Z

    return p0
.end method

.method private isPositionHeader(I)Z
    .locals 0

    .line 212
    iget-boolean p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mShowHeader:Z

    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getDataItem(I)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->getHeaderCount()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;

    return-object p0
.end method

.method public getFilter()Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter<",
            "TT;>.ArrayFilter;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mFilter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;

    invoke-direct {v0, p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;-><init>(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;)V

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mFilter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;

    .line 220
    :cond_0
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mFilter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;

    return-object p0
.end method

.method public getItemCount()I
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->getHeaderCount()I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemId(I)J
    .locals 3

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, -0x1

    if-ne p1, v0, :cond_0

    return-wide v1

    .line 176
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->isPositionHeader(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->getDataItem(I)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;->getItemId()J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->getHeaderCount()I

    move-result v1

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 195
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->isPositionHeader(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .line 129
    instance-of v0, p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$HeaderViewHolder;

    if-eqz v0, :cond_0

    .line 130
    check-cast p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$HeaderViewHolder;

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$HeaderViewHolder;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 131
    :cond_0
    instance-of v0, p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;

    if-eqz v0, :cond_5

    .line 132
    check-cast p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;

    .line 133
    invoke-virtual {p0, p2}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->getDataItem(I)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->setAdapterItem(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;)V

    .line 134
    iget-object v0, p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->mSummaryFrame:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mShowItemSummary:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-boolean v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mShowHeader:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-ne p2, v1, :cond_2

    .line 138
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 139
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->-$$Nest$fgetmContext(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;)Landroid/content/Context;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 139
    invoke-virtual {p2, v0, v1}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    goto :goto_1

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->getHeaderCount()I

    move-result v3

    add-int/2addr v0, v3

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_3

    .line 142
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 143
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->-$$Nest$fgetmContext(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;)Landroid/content/Context;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 143
    invoke-virtual {p2, v0, v1}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    goto :goto_1

    .line 146
    :cond_3
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 150
    :goto_1
    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->getText()Ljava/lang/String;

    move-result-object p2

    .line 151
    iget-boolean v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mIsSupportContrastView:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mQueryText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 152
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mQueryText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 153
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mQueryText:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 155
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 156
    invoke-static {p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->-$$Nest$fgetmContext(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/android/settings/R$color;->sec_preference_summary_primary_color:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 157
    new-instance p2, Landroid/text/style/TextAppearanceSpan;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v8, 0x0

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    const/16 v2, 0x21

    .line 158
    invoke-interface {v1, p2, v0, p0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 159
    invoke-virtual {p1, v1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 162
    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 97
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 p0, 0x2

    if-ne p2, p0, :cond_0

    .line 118
    sget p0, Lcom/android/settings/R$layout;->sec_time_zone_footer_holder:I

    invoke-virtual {v0, p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 119
    new-instance p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$FooterViewHolder;

    invoke-direct {p1, p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$FooterViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 123
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected viewType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 113
    :cond_1
    sget p2, Lcom/android/settings/R$layout;->time_zone_search_item:I

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 114
    new-instance p2, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mOnListItemClickListener:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;-><init>(Landroid/view/View;Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;)V

    return-object p2

    .line 101
    :cond_2
    sget p0, Lcom/android/settings/R$layout;->sec_preference_category_layout:I

    invoke-virtual {v0, p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 104
    new-instance p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$HeaderViewHolder;

    invoke-direct {p1, p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public final setHasStableIds(Z)V
    .locals 0

    .line 204
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method
