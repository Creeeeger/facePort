.class Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListView;
.super Landroid/widget/SemExpandableListView;
.source "AABluetoothListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/SemExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SemExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 1

    const p2, 0x1fffffff

    const/high16 v0, -0x80000000

    .line 27
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 29
    invoke-super {p0, p1, p2}, Landroid/widget/SemExpandableListView;->onMeasure(II)V

    .line 30
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 31
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView;->getMeasuredHeight()I

    move-result p0

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/widget/SemExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, 0x0

    .line 41
    invoke-super {p0, p1}, Landroid/widget/SemExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 0

    const/4 p1, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/widget/SemExpandableListView;->setDividerHeight(I)V

    return-void
.end method
