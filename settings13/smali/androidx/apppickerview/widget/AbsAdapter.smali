.class abstract Landroidx/apppickerview/widget/AbsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AbsAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Landroid/widget/Filterable;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# static fields
.field private static APP_LABEL_ASCENDING:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static APP_LABEL_ASCENDING_IGNORE_CASE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static APP_LABEL_DESCENDING:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static APP_LABEL_DESCENDING_IGNORE_CASE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MAX_OFFSET:I

.field private mAppPickerIconLoader:Landroidx/apppickerview/widget/AppPickerIconLoader;

.field protected mContext:Landroid/content/Context;

.field private mDataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSetFiltered:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mForegroundColor:I

.field private mHideAllApps:Z

.field private mOnBindListener:Landroidx/apppickerview/widget/AppPickerView$OnBindListener;

.field private mOnSearchFilterListener:Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;

.field private mOrder:I

.field private mPositionToSectionIndex:[I

.field private mSearchText:Ljava/lang/String;

.field private mSectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSections:[Ljava/lang/String;

.field protected mType:I

.field private misDividerVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Landroidx/apppickerview/widget/AbsAdapter$1;

    invoke-direct {v0}, Landroidx/apppickerview/widget/AbsAdapter$1;-><init>()V

    sput-object v0, Landroidx/apppickerview/widget/AbsAdapter;->APP_LABEL_ASCENDING:Ljava/util/Comparator;

    .line 74
    new-instance v0, Landroidx/apppickerview/widget/AbsAdapter$2;

    invoke-direct {v0}, Landroidx/apppickerview/widget/AbsAdapter$2;-><init>()V

    sput-object v0, Landroidx/apppickerview/widget/AbsAdapter;->APP_LABEL_ASCENDING_IGNORE_CASE:Ljava/util/Comparator;

    .line 83
    new-instance v0, Landroidx/apppickerview/widget/AbsAdapter$3;

    invoke-direct {v0}, Landroidx/apppickerview/widget/AbsAdapter$3;-><init>()V

    sput-object v0, Landroidx/apppickerview/widget/AbsAdapter;->APP_LABEL_DESCENDING:Ljava/util/Comparator;

    .line 92
    new-instance v0, Landroidx/apppickerview/widget/AbsAdapter$4;

    invoke-direct {v0}, Landroidx/apppickerview/widget/AbsAdapter$4;-><init>()V

    sput-object v0, Landroidx/apppickerview/widget/AbsAdapter;->APP_LABEL_DESCENDING_IGNORE_CASE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILandroidx/apppickerview/widget/AppPickerIconLoader;Z)V
    .locals 2

    .line 121
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/16 v0, 0xc8

    .line 101
    iput v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->MAX_OFFSET:I

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSectionMap:Ljava/util/Map;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 106
    iput-object v1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSections:[Ljava/lang/String;

    .line 111
    iput-boolean v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mHideAllApps:Z

    const-string v0, ""

    .line 113
    iput-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSearchText:Ljava/lang/String;

    .line 122
    iput-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    .line 123
    iput p2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mType:I

    .line 124
    iput p3, p0, Landroidx/apppickerview/widget/AbsAdapter;->mOrder:I

    .line 125
    iput-object p4, p0, Landroidx/apppickerview/widget/AbsAdapter;->mAppPickerIconLoader:Landroidx/apppickerview/widget/AppPickerIconLoader;

    .line 126
    iput-boolean p5, p0, Landroidx/apppickerview/widget/AbsAdapter;->misDividerVisible:Z

    .line 127
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 128
    iget-object p2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    sget p3, Landroidx/apppickerview/R$attr;->colorPrimary:I

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p1, p4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 129
    iget p2, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_0

    .line 130
    :cond_0
    iget p1, p1, Landroid/util/TypedValue;->data:I

    :goto_0
    iput p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mForegroundColor:I

    return-void
.end method

.method static synthetic access$000(Landroidx/apppickerview/widget/AbsAdapter;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSearchText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Landroidx/apppickerview/widget/AbsAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 63
    iput-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSearchText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Landroidx/apppickerview/widget/AbsAdapter;)Ljava/util/List;
    .locals 0

    .line 63
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Landroidx/apppickerview/widget/AbsAdapter;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mHideAllApps:Z

    return p1
.end method

.method static synthetic access$300(Landroidx/apppickerview/widget/AbsAdapter;)Ljava/util/List;
    .locals 0

    .line 63
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/apppickerview/widget/AbsAdapter;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Landroidx/apppickerview/widget/AbsAdapter;->refreshSectionMap()V

    return-void
.end method

.method static synthetic access$500(Landroidx/apppickerview/widget/AbsAdapter;)Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;
    .locals 0

    .line 63
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mOnSearchFilterListener:Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;

    return-object p0
.end method

.method private getAppLabelComparator(I)Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Comparator<",
            "Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 243
    :cond_0
    sget-object p0, Landroidx/apppickerview/widget/AbsAdapter;->APP_LABEL_DESCENDING_IGNORE_CASE:Ljava/util/Comparator;

    return-object p0

    .line 241
    :cond_1
    sget-object p0, Landroidx/apppickerview/widget/AbsAdapter;->APP_LABEL_DESCENDING:Ljava/util/Comparator;

    return-object p0

    .line 239
    :cond_2
    sget-object p0, Landroidx/apppickerview/widget/AbsAdapter;->APP_LABEL_ASCENDING_IGNORE_CASE:Ljava/util/Comparator;

    return-object p0

    .line 237
    :cond_3
    sget-object p0, Landroidx/apppickerview/widget/AbsAdapter;->APP_LABEL_ASCENDING:Ljava/util/Comparator;

    return-object p0
.end method

.method static getAppPickerAdapter(Landroid/content/Context;Ljava/util/List;IILjava/util/List;Landroidx/apppickerview/widget/AppPickerIconLoader;Ljava/util/List;Z)Landroidx/apppickerview/widget/AbsAdapter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/util/List<",
            "Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;",
            ">;",
            "Landroidx/apppickerview/widget/AppPickerIconLoader;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;Z)",
            "Landroidx/apppickerview/widget/AbsAdapter;"
        }
    .end annotation

    const/4 v0, 0x7

    if-lt p2, v0, :cond_0

    .line 137
    new-instance v0, Landroidx/apppickerview/widget/GridAdapter;

    move-object v1, v0

    move-object v2, p0

    move v3, p2

    move v4, p3

    move-object v5, p5

    move v6, p7

    invoke-direct/range {v1 .. v6}, Landroidx/apppickerview/widget/GridAdapter;-><init>(Landroid/content/Context;IILandroidx/apppickerview/widget/AppPickerIconLoader;Z)V

    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Landroidx/apppickerview/widget/ListAdapter;

    move-object v1, v0

    move-object v2, p0

    move v3, p2

    move v4, p3

    move-object v5, p5

    move v6, p7

    invoke-direct/range {v1 .. v6}, Landroidx/apppickerview/widget/ListAdapter;-><init>(Landroid/content/Context;IILandroidx/apppickerview/widget/AppPickerIconLoader;Z)V

    :goto_0
    const/4 p0, 0x1

    .line 139
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    const/4 p0, 0x0

    .line 140
    invoke-virtual {v0, p1, p0, p4, p6}, Landroidx/apppickerview/widget/AbsAdapter;->resetPackages(Ljava/util/List;ZLjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method private refreshSectionMap()V
    .locals 9

    .line 423
    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSectionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 427
    iget-object v1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 428
    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 429
    new-instance v1, Landroid/os/LocaleList;

    new-array v2, v4, [Ljava/util/Locale;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v5, v2, v3

    invoke-direct {v1, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 432
    :cond_0
    new-instance v2, Landroid/icu/text/AlphabeticIndex;

    invoke-virtual {v1, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/icu/text/AlphabeticIndex;-><init>(Ljava/util/Locale;)V

    .line 433
    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v5

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_1

    new-array v7, v4, [Ljava/util/Locale;

    .line 435
    invoke-virtual {v1, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v2, v7}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    new-array v1, v4, [Ljava/util/Locale;

    .line 437
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v5, v1, v3

    invoke-virtual {v2, v1}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    .line 439
    invoke-virtual {v2}, Landroid/icu/text/AlphabeticIndex;->buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    move-result-object v1

    .line 440
    iget-object v2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mPositionToSectionIndex:[I

    .line 442
    :goto_1
    iget-object v2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    .line 443
    iget-object v2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    invoke-virtual {v2}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 444
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v2, ""

    :cond_2
    invoke-virtual {v1, v2}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketIndex(Ljava/lang/CharSequence;)I

    move-result v2

    .line 445
    invoke-virtual {v1, v2}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 446
    iget-object v5, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSectionMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 447
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v5, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSectionMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    :cond_3
    iget-object v2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mPositionToSectionIndex:[I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 452
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSections:[Ljava/lang/String;

    .line 453
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method addCustomViewItem(II)V
    .locals 4

    .line 213
    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    new-instance v1, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    const-string v2, "app_picker_custom_view_item"

    const-string v3, ""

    invoke-direct {v1, v2, v3, v3}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 215
    invoke-virtual {v1, v2, p2}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->setCustomViewItem(ZI)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object p2

    .line 213
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 217
    iget-object p2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 218
    iget-object p2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 219
    invoke-direct {p0}, Landroidx/apppickerview/widget/AbsAdapter;->refreshSectionMap()V

    .line 221
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void
.end method

.method addPackage(ILjava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 184
    invoke-virtual {p0, p1, v0, v0, p2}, Landroidx/apppickerview/widget/AbsAdapter;->addPackage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method addPackage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 188
    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    new-instance v1, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    invoke-direct {v1, p2, p4, p3}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 192
    iget-object p2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 193
    iget-object p2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    iget-object p3, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    invoke-direct {p0}, Landroidx/apppickerview/widget/AbsAdapter;->refreshSectionMap()V

    .line 196
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void
.end method

.method addSeparator(I)V
    .locals 4

    .line 200
    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    new-instance v1, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    const-string v2, "app_picker_separator"

    const-string v3, ""

    invoke-direct {v1, v2, v3, v3}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 202
    invoke-virtual {v1, v2}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->setSeparator(Z)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v1

    .line 200
    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 205
    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 206
    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    iget-object v1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    invoke-direct {p0}, Landroidx/apppickerview/widget/AbsAdapter;->refreshSectionMap()V

    .line 209
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void
.end method

.method public getAppInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;
    .locals 0

    .line 321
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    return-object p0
.end method

.method getDataSet()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    return-object p0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 343
    new-instance v0, Landroidx/apppickerview/widget/AbsAdapter$5;

    invoke-direct {v0, p0}, Landroidx/apppickerview/widget/AbsAdapter$5;-><init>(Landroidx/apppickerview/widget/AbsAdapter;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 0

    .line 317
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 338
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getPositionForSection(I)I
    .locals 2

    .line 403
    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSections:[Ljava/lang/String;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 406
    :cond_0
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSectionMap:Ljava/util/Map;

    aget-object p1, v0, p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    .line 411
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mPositionToSectionIndex:[I

    array-length v0, p0

    if-lt p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 414
    :cond_0
    aget p0, p0, p1

    return p0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 0

    .line 419
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSections:[Ljava/lang/String;

    return-object p0
.end method

.method protected hasAllAppsInList()Z
    .locals 2

    .line 332
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

.method protected limitFontLarge(Landroid/widget/TextView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 464
    invoke-virtual {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->limitFontScale(Landroid/widget/TextView;)F

    move-result p0

    const/4 v0, 0x0

    .line 465
    invoke-virtual {p1, v0, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method protected limitFontLarge2LinesHeight(Landroid/widget/TextView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 471
    invoke-virtual {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->limitFontScale(Landroid/widget/TextView;)F

    move-result p0

    const/4 v0, 0x0

    .line 472
    invoke-virtual {p1, v0, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    .line 473
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMinHeight(I)V

    :cond_0
    return-void
.end method

.method protected limitFontScale(Landroid/widget/TextView;)F
    .locals 2

    .line 458
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    const v0, 0x3fa66666    # 1.3f

    cmpl-float v1, p0, v0

    .line 459
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    if-lez v1, :cond_0

    div-float/2addr p1, p0

    mul-float/2addr p1, v0

    :cond_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    .line 250
    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    invoke-virtual {v0}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 251
    iget-object v1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    invoke-virtual {v1}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->getActivityName()Ljava/lang/String;

    move-result-object v1

    .line 252
    move-object v2, p1

    check-cast v2, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    .line 254
    instance-of v3, p1, Landroidx/apppickerview/widget/AppPickerView$HeaderViewHolder;

    if-nez v3, :cond_8

    instance-of v3, p1, Landroidx/apppickerview/widget/AppPickerView$SeparatorViewHolder;

    if-nez v3, :cond_8

    instance-of p1, p1, Landroidx/apppickerview/widget/AppPickerView$CustomViewItemViewHolder;

    if-nez p1, :cond_8

    .line 255
    iget-object v3, p0, Landroidx/apppickerview/widget/AbsAdapter;->mAppPickerIconLoader:Landroidx/apppickerview/widget/AppPickerIconLoader;

    if-eqz v3, :cond_0

    .line 256
    invoke-virtual {v2}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppIcon()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Landroidx/apppickerview/widget/AppPickerIconLoader;->loadIcon(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 258
    :cond_0
    iget-object v1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    invoke-virtual {v1}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 259
    iget-object v3, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 261
    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 262
    new-instance v3, Ljava/util/StringTokenizer;

    iget-object v4, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSearchText:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 264
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 265
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v1

    .line 270
    :cond_2
    invoke-virtual {v2}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppLabel()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-static {v7, v6, v8}, Landroidx/reflect/text/SeslTextUtilsReflector;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v7

    if-eqz v7, :cond_3

    .line 272
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([C)V

    .line 278
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 279
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_4

    .line 280
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    goto :goto_1

    .line 282
    :cond_4
    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 285
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    if-gez v7, :cond_5

    goto :goto_0

    .line 290
    :cond_5
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    iget v10, p0, Landroidx/apppickerview/widget/AbsAdapter;->mForegroundColor:I

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/2addr v7, v5

    add-int/2addr v5, v8

    const/16 v10, 0x11

    invoke-virtual {p1, v9, v7, v5, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 293
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 296
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    const/16 v7, 0xc8

    if-lt v5, v7, :cond_2

    goto :goto_0

    .line 298
    :cond_6
    invoke-virtual {v2}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppLabel()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    if-nez p1, :cond_8

    .line 301
    invoke-virtual {v2}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppLabel()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :cond_8
    :goto_2
    invoke-virtual {p0, v2, p2, v0}, Landroidx/apppickerview/widget/AbsAdapter;->onBindViewHolderAction(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V

    .line 307
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mOnBindListener:Landroidx/apppickerview/widget/AppPickerView$OnBindListener;

    if-eqz p0, :cond_9

    .line 308
    invoke-interface {p0, v2, p2, v0}, Landroidx/apppickerview/widget/AppPickerView$OnBindListener;->onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method abstract onBindViewHolderAction(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
.end method

.method resetPackages(Ljava/util/List;ZLjava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/List<",
            "Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start resetpackage dataSetchanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppPickerViewAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 151
    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    iget-object v2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p3, p4}, Landroidx/apppickerview/widget/DataManager;->resetPackages(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 153
    iget p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mOrder:I

    invoke-direct {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->getAppLabelComparator(I)Ljava/util/Comparator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    iget p3, p0, Landroidx/apppickerview/widget/AbsAdapter;->mOrder:I

    invoke-direct {p0, p3}, Landroidx/apppickerview/widget/AbsAdapter;->getAppLabelComparator(I)Ljava/util/Comparator;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroidx/apppickerview/widget/AbsAdapter;->hasAllAppsInList()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 158
    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    const/4 p3, 0x0

    new-instance p4, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    const-string v0, "all_apps"

    const-string v2, ""

    invoke-direct {p4, v0, v2, v2}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p3, p4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 161
    :cond_1
    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 162
    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    iget-object p3, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    invoke-direct {p0}, Landroidx/apppickerview/widget/AbsAdapter;->refreshSectionMap()V

    if-eqz p2, :cond_2

    .line 166
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    const-string p0, "End resetpackage"

    .line 168
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOnBindListener(Landroidx/apppickerview/widget/AppPickerView$OnBindListener;)V
    .locals 0

    .line 324
    iput-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mOnBindListener:Landroidx/apppickerview/widget/AppPickerView$OnBindListener;

    return-void
.end method

.method public setOnSearchFilterListener(Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;)V
    .locals 0

    .line 328
    iput-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mOnSearchFilterListener:Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;

    return-void
.end method

.method public setOrder(I)V
    .locals 2

    .line 225
    iput p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mOrder:I

    .line 226
    invoke-direct {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->getAppLabelComparator(I)Ljava/util/Comparator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    invoke-direct {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->getAppLabelComparator(I)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 228
    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    invoke-direct {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->getAppLabelComparator(I)Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 230
    :cond_0
    invoke-direct {p0}, Landroidx/apppickerview/widget/AbsAdapter;->refreshSectionMap()V

    .line 231
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
