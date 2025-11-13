.class public abstract Landroidx/apppickerview/widget/AbsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/SectionIndexer;


# static fields
.field public static final APP_LABEL_ASCENDING:Landroidx/apppickerview/widget/AbsAdapter$1;

.field public static final APP_LABEL_ASCENDING_IGNORE_CASE:Landroidx/apppickerview/widget/AbsAdapter$1;

.field public static final APP_LABEL_DESCENDING:Landroidx/apppickerview/widget/AbsAdapter$1;

.field public static final APP_LABEL_DESCENDING_IGNORE_CASE:Landroidx/apppickerview/widget/AbsAdapter$1;


# instance fields
.field public final mAppPickerIconLoader:Landroidx/apppickerview/widget/AppPickerIconLoader;

.field public final mContext:Landroid/content/Context;

.field public final mDataSet:Ljava/util/List;

.field public final mDataSetFiltered:Ljava/util/List;

.field public final mForegroundColor:I

.field public mHideAllApps:Z

.field public mOnBindListener:Landroidx/apppickerview/widget/AppPickerView$OnBindListener;

.field public mOnSearchFilterListener:Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;

.field public final mOrder:I

.field public mPositionToSectionIndex:[I

.field public mSearchText:Ljava/lang/String;

.field public final mSectionMap:Ljava/util/Map;

.field public mSections:[Ljava/lang/String;

.field public final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/apppickerview/widget/AbsAdapter$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/apppickerview/widget/AbsAdapter$1;-><init>(I)V

    sput-object v0, Landroidx/apppickerview/widget/AbsAdapter;->APP_LABEL_ASCENDING:Landroidx/apppickerview/widget/AbsAdapter$1;

    new-instance v0, Landroidx/apppickerview/widget/AbsAdapter$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/apppickerview/widget/AbsAdapter$1;-><init>(I)V

    sput-object v0, Landroidx/apppickerview/widget/AbsAdapter;->APP_LABEL_ASCENDING_IGNORE_CASE:Landroidx/apppickerview/widget/AbsAdapter$1;

    new-instance v0, Landroidx/apppickerview/widget/AbsAdapter$1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/apppickerview/widget/AbsAdapter$1;-><init>(I)V

    sput-object v0, Landroidx/apppickerview/widget/AbsAdapter;->APP_LABEL_DESCENDING:Landroidx/apppickerview/widget/AbsAdapter$1;

    new-instance v0, Landroidx/apppickerview/widget/AbsAdapter$1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/apppickerview/widget/AbsAdapter$1;-><init>(I)V

    sput-object v0, Landroidx/apppickerview/widget/AbsAdapter;->APP_LABEL_DESCENDING_IGNORE_CASE:Landroidx/apppickerview/widget/AbsAdapter$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILandroidx/apppickerview/widget/AppPickerIconLoader;)V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSectionMap:Ljava/util/Map;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSections:[Ljava/lang/String;

    iput-boolean v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mHideAllApps:Z

    const-string v0, ""

    iput-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSearchText:Ljava/lang/String;

    iput-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    iput p2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mType:I

    iput p3, p0, Landroidx/apppickerview/widget/AbsAdapter;->mOrder:I

    iput-object p4, p0, Landroidx/apppickerview/widget/AbsAdapter;->mAppPickerIconLoader:Landroidx/apppickerview/widget/AppPickerIconLoader;

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    const p4, 0x7f040155

    const/4 v0, 0x1

    invoke-virtual {p3, p4, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p3, p2, Landroid/util/TypedValue;->resourceId:I

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p2, Landroid/util/TypedValue;->data:I

    :goto_0
    iput p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mForegroundColor:I

    return-void
.end method


# virtual methods
.method public final getAppInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;
    .locals 0

    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    return-object p0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    new-instance v0, Landroidx/apppickerview/widget/AbsAdapter$5;

    invoke-direct {v0, p0}, Landroidx/apppickerview/widget/AbsAdapter$5;-><init>(Landroidx/apppickerview/widget/AbsAdapter;)V

    return-object v0
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public final getPositionForSection(I)I
    .locals 2

    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSections:[Ljava/lang/String;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSectionMap:Ljava/util/Map;

    aget-object p1, v0, p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getSectionForPosition(I)I
    .locals 1

    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mPositionToSectionIndex:[I

    array-length v0, p0

    if-lt p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    aget p0, p0, p1

    return p0
.end method

.method public final getSections()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSections:[Ljava/lang/String;

    return-object p0
.end method

.method public final hasAllAppsInList()Z
    .locals 2

    iget v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mHideAllApps:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12

    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    iget-object v0, v0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    iget-object v1, v1, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mActivityName:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    instance-of v3, p1, Landroidx/apppickerview/widget/AppPickerView$HeaderViewHolder;

    if-nez v3, :cond_9

    instance-of v3, p1, Landroidx/apppickerview/widget/AppPickerView$SeparatorViewHolder;

    if-nez v3, :cond_9

    instance-of p1, p1, Landroidx/apppickerview/widget/AppPickerView$CustomViewItemViewHolder;

    if-nez p1, :cond_9

    iget-object v3, p0, Landroidx/apppickerview/widget/AbsAdapter;->mAppPickerIconLoader:Landroidx/apppickerview/widget/AppPickerIconLoader;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v5, v2, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppIcon:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance v6, Landroidx/apppickerview/widget/AppPickerIconLoader$IconInfo;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v0, v6, Landroidx/apppickerview/widget/AppPickerIconLoader$IconInfo;->packageName:Ljava/lang/String;

    iput-object v5, v6, Landroidx/apppickerview/widget/AppPickerIconLoader$IconInfo;->imageView:Landroid/widget/ImageView;

    iput-object v1, v6, Landroidx/apppickerview/widget/AppPickerIconLoader$IconInfo;->activityName:Ljava/lang/String;

    new-instance v1, Landroidx/apppickerview/widget/AppPickerIconLoader$LoadIconTask;

    invoke-direct {v1, v3, v6}, Landroidx/apppickerview/widget/AppPickerIconLoader$LoadIconTask;-><init>(Landroidx/apppickerview/widget/AppPickerIconLoader;Landroidx/apppickerview/widget/AppPickerIconLoader$IconInfo;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v3, v5}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    iget-object v1, v1, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mLabel:Ljava/lang/String;

    iget-object v3, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/util/StringTokenizer;

    iget-object v5, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSearchText:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    move v7, v4

    :cond_3
    iget-object v8, v2, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-static {v8, v6, v9}, Landroidx/reflect/text/SeslTextUtilsReflector;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v8

    if-eqz v8, :cond_4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([C)V

    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v9, v10, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    goto :goto_2

    :cond_5
    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v8

    if-gez v8, :cond_6

    goto :goto_1

    :cond_6
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    iget v11, p0, Landroidx/apppickerview/widget/AbsAdapter;->mForegroundColor:I

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/2addr v8, v7

    add-int/2addr v7, v9

    const/16 v11, 0x11

    invoke-virtual {p1, v10, v8, v7, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    const/16 v8, 0xc8

    if-lt v7, v8, :cond_3

    goto :goto_1

    :cond_7
    iget-object v1, v2, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    if-nez p1, :cond_9

    iget-object p1, v2, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_3
    invoke-virtual {p0, v2, p2}, Landroidx/apppickerview/widget/AbsAdapter;->onBindViewHolderAction(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;I)V

    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mOnBindListener:Landroidx/apppickerview/widget/AppPickerView$OnBindListener;

    if-eqz p0, :cond_a

    invoke-interface {p0, v2, p2, v0}, Landroidx/apppickerview/widget/AppPickerView$OnBindListener;->onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V

    :cond_a
    return-void
.end method

.method public abstract onBindViewHolderAction(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;I)V
.end method

.method public final refreshSectionMap$1()V
    .locals 9

    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSectionMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    new-instance v1, Landroid/os/LocaleList;

    new-array v2, v4, [Ljava/util/Locale;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v5, v2, v3

    invoke-direct {v1, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    :cond_0
    new-instance v2, Landroid/icu/text/AlphabeticIndex;

    invoke-virtual {v1, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/icu/text/AlphabeticIndex;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v5

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_1

    new-array v7, v4, [Ljava/util/Locale;

    invoke-virtual {v1, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v2, v7}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    new-array v1, v4, [Ljava/util/Locale;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v5, v1, v3

    invoke-virtual {v2, v1}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    invoke-virtual {v2}, Landroid/icu/text/AlphabeticIndex;->buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    move-result-object v1

    iget-object v2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mPositionToSectionIndex:[I

    :goto_1
    iget-object v2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    iget-object v2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    iget-object v2, v2, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mLabel:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v2, ""

    :cond_2
    invoke-virtual {v1, v2}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketIndex(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSectionMap:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSectionMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mPositionToSectionIndex:[I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSections:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method public final resetPackages(Ljava/util/List;Z)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v2, p2

    const-string v0, "Start resetpackage dataSetchanged : "

    const-string v3, "AppPickerViewAdapter"

    invoke-static {v0, v3, v2}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, v1, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v1, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    iget-object v5, v1, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    const-string v0, "AppLabelMapBixbyFactory"

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "content://com.samsung.android.scs.ai.search/v1"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string v8, "application"

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v9, "android:query-arg-sql-selection"

    const-string v10, "*"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "query-arg-all-apps"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v9, "android:query-arg-limit"

    const/16 v11, 0x2710

    invoke-virtual {v8, v9, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v7, v9, v8, v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    if-eqz v7, :cond_4

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_0
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    const-string v8, "label"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v11, "componentName"

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "packageName"

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v8, v13, :cond_3

    if-eq v11, v13, :cond_3

    if-ne v12, v13, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v8, v0

    goto :goto_3

    :cond_3
    :goto_1
    const-string v13, "Can\'t find columnIndex (%s : %d, %s : %d, %s : %d)"

    const-string v14, "label"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v16, "componentName"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const-string v18, "packageName"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    filled-new-array/range {v14 .. v19}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v13, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_1

    goto :goto_0

    :goto_3
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v7, v0

    :try_start_3
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v8
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_5
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_4
    :goto_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v11, 0x0

    const-string v12, ""

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-nez v13, :cond_6

    :try_start_4
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v13, v8, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v13, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_8
    move-object v13, v11

    goto :goto_9

    :catch_1
    const-string v11, "can\'t find label for "

    const-string v13, "DataManager"

    invoke-static {v11, v8, v13}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v11, "Unknown"

    goto :goto_8

    :cond_6
    :goto_9
    new-instance v11, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    invoke-direct {v11, v8, v13, v12}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_7
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v0, v1, Landroidx/apppickerview/widget/AbsAdapter;->mOrder:I

    sget-object v4, Landroidx/apppickerview/widget/AbsAdapter;->APP_LABEL_ASCENDING:Landroidx/apppickerview/widget/AbsAdapter$1;

    sget-object v5, Landroidx/apppickerview/widget/AbsAdapter;->APP_LABEL_ASCENDING_IGNORE_CASE:Landroidx/apppickerview/widget/AbsAdapter$1;

    sget-object v6, Landroidx/apppickerview/widget/AbsAdapter;->APP_LABEL_DESCENDING:Landroidx/apppickerview/widget/AbsAdapter$1;

    sget-object v7, Landroidx/apppickerview/widget/AbsAdapter;->APP_LABEL_DESCENDING_IGNORE_CASE:Landroidx/apppickerview/widget/AbsAdapter$1;

    const/4 v8, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-eq v0, v10, :cond_b

    if-eq v0, v14, :cond_a

    if-eq v0, v13, :cond_9

    if-eq v0, v8, :cond_8

    move-object v15, v9

    goto :goto_a

    :cond_8
    move-object v15, v7

    goto :goto_a

    :cond_9
    move-object v15, v6

    goto :goto_a

    :cond_a
    move-object v15, v5

    goto :goto_a

    :cond_b
    move-object v15, v4

    :goto_a
    if-eqz v15, :cond_10

    iget-object v15, v1, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    if-eq v0, v10, :cond_f

    if-eq v0, v14, :cond_e

    if-eq v0, v13, :cond_d

    if-eq v0, v8, :cond_c

    goto :goto_b

    :cond_c
    move-object v9, v7

    goto :goto_b

    :cond_d
    move-object v9, v6

    goto :goto_b

    :cond_e
    move-object v9, v5

    goto :goto_b

    :cond_f
    move-object v9, v4

    :goto_b
    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroidx/apppickerview/widget/AbsAdapter;->hasAllAppsInList()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    if-eqz v0, :cond_11

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, v1, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    new-instance v4, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    const-string v5, "all_apps"

    invoke-direct {v4, v5, v12, v12}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v11, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_11
    iget-object v0, v1, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    iget-object v4, v1, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {p0 .. p0}, Landroidx/apppickerview/widget/AbsAdapter;->refreshSectionMap$1()V

    if-eqz v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_12
    const-string v0, "End resetpackage"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
