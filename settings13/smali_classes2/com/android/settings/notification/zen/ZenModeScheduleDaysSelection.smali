.class public Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;
.super Landroid/widget/ScrollView;
.source "ZenModeScheduleDaysSelection.java"


# instance fields
.field private final mDays:Landroid/util/SparseBooleanArray;


# direct methods
.method private getDays()[I
    .locals 5

    .line 75
    new-instance v0, Landroid/util/SparseBooleanArray;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 76
    :goto_0
    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 77
    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 78
    iget-object v4, p0, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    .line 79
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    new-array v2, p0, [I

    :goto_2
    if-ge v1, p0, :cond_2

    .line 83
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 85
    :cond_2
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    return-object v2
.end method

.method protected static getDaysOfWeekForLocale(Ljava/util/Calendar;)[I
    .locals 4

    const/4 v0, 0x7

    new-array v1, v0, [I

    .line 91
    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    const/4 v3, 0x1

    if-le p0, v0, :cond_0

    move p0, v3

    .line 94
    :cond_0
    aput p0, v1, v2

    add-int/2addr p0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
