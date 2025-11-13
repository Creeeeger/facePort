.class public Lcom/samsung/android/settings/datausage/DataUsageCategoryPreference;
.super Landroidx/preference/SecPreferenceCategory;
.source "DataUsageCategoryPreference.java"


# instance fields
.field mEmptyHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/datausage/DataUsageCategoryPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008c

    .line 51
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SecPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/samsung/android/settings/datausage/DataUsageCategoryPreference;->mEmptyHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/SecPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    iput v0, p0, Lcom/samsung/android/settings/datausage/DataUsageCategoryPreference;->mEmptyHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SecPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/samsung/android/settings/datausage/DataUsageCategoryPreference;->mEmptyHeight:I

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 64
    invoke-super {p0, p1}, Landroidx/preference/SecPreferenceCategory;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 66
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 67
    check-cast p1, Landroid/widget/TextView;

    const/high16 v0, 0x42000000    # 32.0f

    .line 68
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 69
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_data_usage_header_title_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method public setEmptyHeight(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/samsung/android/settings/datausage/DataUsageCategoryPreference;->mEmptyHeight:I

    return-void
.end method
