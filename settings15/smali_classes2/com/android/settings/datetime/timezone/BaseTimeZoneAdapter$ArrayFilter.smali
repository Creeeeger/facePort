.class public Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;
.super Landroid/widget/Filter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBreakIterator:Landroid/icu/text/BreakIterator;

.field public final synthetic this$0:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;->this$0:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    iget-object p1, p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mLocale:Ljava/util/Locale;

    invoke-static {p1}, Landroid/icu/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;->mBreakIterator:Landroid/icu/text/BreakIterator;

    return-void
.end method


# virtual methods
.method public final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 12

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;->this$0:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    iget-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mOriginalItems:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mQueryText:Ljava/lang/String;

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;->this$0:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mQueryText:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;->this$0:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    iget-object v0, v0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;->this$0:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    iget-object v1, v1, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mOriginalItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;

    invoke-interface {v2}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;->getSearchKeys()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    iget-object v8, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;->this$0:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    iget-object v8, v8, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;->mBreakIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v8, v7}, Landroid/icu/text/BreakIterator;->setText(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;->mBreakIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v8}, Landroid/icu/text/BreakIterator;->next()I

    move-result v8

    move v9, v5

    :goto_2
    const/4 v10, -0x1

    if-eq v8, v10, :cond_4

    iget-object v10, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;->mBreakIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v10}, Landroid/icu/text/BreakIterator;->getRuleStatus()I

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v7, p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v9, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;->mBreakIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v9}, Landroid/icu/text/BreakIterator;->next()I

    move-result v9

    move v11, v9

    move v9, v8

    move v8, v11

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    move-object p1, v0

    :goto_3
    new-instance p0, Landroid/widget/Filter$FilterResults;

    invoke-direct {p0}, Landroid/widget/Filter$FilterResults;-><init>()V

    iput-object p1, p0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Landroid/widget/Filter$FilterResults;->count:I

    return-object p0
.end method

.method public publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;->this$0:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    iget-object p1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
