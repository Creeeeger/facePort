.class Landroid/widget/YearPickerView$YearAdapter;
.super Landroid/widget/BaseAdapter;
.source "YearPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YearPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YearAdapter"
.end annotation


# static fields
.field private static final blacklist ITEM_LAYOUT:I = 0x10901ea

.field private static final blacklist ITEM_TEXT_ACTIVATED_APPEARANCE:I = 0x10303f9

.field private static final blacklist ITEM_TEXT_APPEARANCE:I = 0x10303f8


# instance fields
.field private blacklist mActivatedYear:I

.field private blacklist mCount:I

.field private final blacklist mInflater:Landroid/view/LayoutInflater;

.field private blacklist mMinYear:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getCount()I
    .locals 1

    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mCount:I

    return v0
.end method

.method public blacklist getItem(I)Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getYearForPosition(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getItemId(I)J
    .locals 2

    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getYearForPosition(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPositionForYear(I)I
    .locals 1

    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    sub-int v0, p1, v0

    return v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/widget/YearPickerView$YearAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x10901ea

    invoke-virtual {v3, v4, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    goto :goto_1

    :cond_1
    move-object v3, p2

    check-cast v3, Landroid/widget/TextView;

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getYearForPosition(I)I

    move-result v4

    iget v5, p0, Landroid/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    if-ne v5, v4, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-nez v2, :cond_3

    invoke-virtual {v3}, Landroid/widget/TextView;->isActivated()Z

    move-result v1

    if-eq v1, v0, :cond_5

    :cond_3
    if-eqz v0, :cond_4

    const v1, 0x10303f9

    goto :goto_3

    :cond_4
    const v1, 0x10303f8

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setActivated(Z)V

    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v3
.end method

.method public whitelist getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getYearForPosition(I)I
    .locals 1

    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    add-int/2addr v0, p1

    return v0
.end method

.method public whitelist hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isEnabled(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, v1

    add-int/2addr v2, v0

    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mCount:I

    if-eq v0, v2, :cond_1

    :cond_0
    iput v1, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    iput v2, p0, Landroid/widget/YearPickerView$YearAdapter;->mCount:I

    invoke-virtual {p0}, Landroid/widget/YearPickerView$YearAdapter;->notifyDataSetInvalidated()V

    :cond_1
    return-void
.end method

.method public blacklist setSelection(I)Z
    .locals 1

    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    invoke-virtual {p0}, Landroid/widget/YearPickerView$YearAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
