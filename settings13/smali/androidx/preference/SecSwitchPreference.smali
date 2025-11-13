.class public Landroidx/preference/SecSwitchPreference;
.super Landroidx/preference/SwitchPreferenceCompat;
.source "SecSwitchPreference.java"


# instance fields
.field mDescription:Ljava/lang/CharSequence;

.field mTitleView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/preference/Preference;)I
    .locals 4

    .line 68
    invoke-virtual {p0}, Landroidx/preference/Preference;->getOrder()I

    move-result v0

    int-to-double v0, v0

    .line 69
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

    .line 77
    :cond_1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 28
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/SecSwitchPreference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 52
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/SecSwitchPreference;->mTitleView:Landroid/view/View;

    .line 53
    iget-object p0, p0, Landroidx/preference/SecSwitchPreference;->mDescription:Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    .line 54
    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public semSetSummaryColorToColorPrimaryDark(Z)V
    .locals 0

    .line 59
    invoke-static {p0, p1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    return-void
.end method

.method public setContentDescriptionTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 63
    iput-object p1, p0, Landroidx/preference/SecSwitchPreference;->mDescription:Ljava/lang/CharSequence;

    return-void
.end method
