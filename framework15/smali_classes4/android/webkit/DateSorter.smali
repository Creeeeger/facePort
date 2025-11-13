.class public Landroid/webkit/DateSorter;
.super Ljava/lang/Object;
.source "DateSorter.java"


# static fields
.field public static final whitelist DAY_COUNT:I = 0x5

.field private static final greylist-max-o LOGTAG:Ljava/lang/String; = "webkit"

.field private static final greylist-max-o NUM_DAYS_AGO:I = 0x7


# instance fields
.field private greylist-max-o mBins:[J

.field private greylist-max-o mLabels:[Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/webkit/DateSorter;->mBins:[J

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/DateSorter;->beginningOfDay(Ljava/util/Calendar;)V

    iget-object v3, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    iget-object v5, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const/4 v9, 0x1

    aput-wide v7, v5, v9

    const/4 v5, -0x6

    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->add(II)V

    iget-object v5, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const/4 v10, 0x2

    aput-wide v7, v5, v10

    const/4 v5, 0x7

    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v2, v10, v4}, Ljava/util/Calendar;->add(II)V

    iget-object v3, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const/4 v4, 0x3

    aput-wide v7, v3, v4

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v3, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    :cond_0
    invoke-static {v3}, Lcom/android/icu/text/DateSorterBridge;->createInstance(Ljava/util/Locale;)Lcom/android/icu/text/DateSorterBridge;

    move-result-object v7

    iget-object v8, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/icu/text/DateSorterBridge;->getToday()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v6

    iget-object v6, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/icu/text/DateSorterBridge;->getYesterday()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v8, "count"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    const v8, 0x104072a

    invoke-static {v1, v6, v8}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v10

    iget-object v5, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    const v8, 0x1040729

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v4

    iget-object v4, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    const v5, 0x1040944

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    return-void
.end method

.method private greylist-max-o beginningOfDay(Ljava/util/Calendar;)V
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    return-void
.end method


# virtual methods
.method public whitelist getBoundary(I)J
    .locals 3

    const/4 v0, 0x4

    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    if-ne p1, v0, :cond_2

    const-wide/high16 v1, -0x8000000000000000L

    return-wide v1

    :cond_2
    iget-object v1, p0, Landroid/webkit/DateSorter;->mBins:[J

    aget-wide v1, v1, p1

    return-wide v1
.end method

.method public whitelist getIndex(J)I
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/webkit/DateSorter;->mBins:[J

    aget-wide v2, v2, v1

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public whitelist getLabel(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method
