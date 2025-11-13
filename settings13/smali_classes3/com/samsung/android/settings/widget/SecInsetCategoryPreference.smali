.class public Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;
.super Landroidx/preference/PreferenceCategory;
.source "SecInsetCategoryPreference.java"


# instance fields
.field private mHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->mHeight:I

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->sec_widget_inset_category_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->mHeight:I

    if-eqz p2, :cond_0

    .line 31
    sget-object v0, Lcom/android/settings/R$styleable;->SecInsetCategory:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 32
    sget v1, Lcom/android/settings/R$styleable;->SecInsetCategory_height:I

    iget v2, p0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->mHeight:I

    .line 33
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    sget-object v0, Lcom/android/settings/R$styleable;->SecCategory:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 35
    sget p2, Lcom/android/settings/R$styleable;->SecCategory_roundStroke:I

    const/16 v0, 0xf

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 36
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 37
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/preference/Preference;)I
    .locals 4

    .line 63
    invoke-virtual {p0}, Landroidx/preference/Preference;->getOrder()I

    move-result v0

    int-to-double v0, v0

    .line 64
    invoke-virtual {p1}, Landroidx/preference/Preference;->getOrder()I

    move-result v2

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0

    .line 72
    :cond_1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 47
    invoke-super {p0, p1}, Landroidx/preference/PreferenceCategory;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 48
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50
    iget p0, p0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->mHeight:I

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 51
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 57
    iput p1, p0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->mHeight:I

    :cond_0
    return-void
.end method
