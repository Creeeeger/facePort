.class public Landroidx/preference/SecPreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "SecPreferenceCategory.java"


# instance fields
.field mEmptyHeight:I

.field mIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Landroidx/preference/SecPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008c

    .line 60
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SecPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/SecPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 42
    iput p3, p0, Landroidx/preference/SecPreferenceCategory;->mEmptyHeight:I

    const/4 p3, 0x0

    .line 43
    iput-object p3, p0, Landroidx/preference/SecPreferenceCategory;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    .line 48
    sget-object p3, Lcom/android/settings/R$styleable;->SecCategory:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 49
    sget p2, Lcom/android/settings/R$styleable;->SecCategory_roundStroke:I

    const/16 p3, 0xf

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 50
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 51
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private resizeIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 114
    new-instance p0, Lcom/samsung/android/settings/widget/SecIconResizer;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/SecIconResizer;-><init>(Landroid/content/Context;)V

    .line 115
    sget p1, Lcom/android/settings/R$dimen;->sec_widget_preference_category_icon_size:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecIconResizer;->setIconSize(I)V

    if-eqz p2, :cond_0

    .line 118
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/widget/SecIconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public compareTo(Landroidx/preference/Preference;)I
    .locals 4

    .line 100
    invoke-virtual {p0}, Landroidx/preference/Preference;->getOrder()I

    move-result v0

    int-to-double v0, v0

    .line 101
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

    .line 109
    :cond_1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 40
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/SecPreferenceCategory;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 77
    invoke-super {p0, p1}, Landroidx/preference/PreferenceCategory;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 79
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 80
    check-cast p1, Landroid/widget/TextView;

    .line 81
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 84
    iget v1, p0, Landroidx/preference/SecPreferenceCategory;->mEmptyHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 85
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    :cond_0
    iget-object v0, p0, Landroidx/preference/SecPreferenceCategory;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/SecPreferenceCategory;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v1}, Landroidx/preference/SecPreferenceCategory;->resizeIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 92
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$dimen;->sec_widget_preference_category_icon_padding:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 91
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :cond_1
    return-void
.end method

.method public setEmptyHeight(I)V
    .locals 0

    .line 68
    iput p1, p0, Landroidx/preference/SecPreferenceCategory;->mEmptyHeight:I

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 72
    iput-object p1, p0, Landroidx/preference/SecPreferenceCategory;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method
