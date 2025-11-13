.class public Landroidx/preference/SecDropDownPreference;
.super Landroidx/preference/DropDownPreference;
.source "SecDropDownPreference.java"


# instance fields
.field private mIsSoundEffectEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Landroidx/preference/SecDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 42
    sget v0, Lcom/android/settings/R$attr;->dropdownPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SecDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/SecDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Landroidx/preference/SecDropDownPreference;->mIsSoundEffectEnabled:Z

    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/preference/Preference;)I
    .locals 4

    .line 69
    invoke-virtual {p0}, Landroidx/preference/Preference;->getOrder()I

    move-result v0

    int-to-double v0, v0

    .line 70
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

    .line 78
    :cond_1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 30
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/SecDropDownPreference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Landroidx/preference/DropDownPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 60
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean p0, p0, Landroidx/preference/SecDropDownPreference;->mIsSoundEffectEnabled:Z

    invoke-virtual {p1, p0}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    return-void
.end method

.method public semSetSummaryColorToColorPrimaryDark(Z)V
    .locals 0

    .line 50
    invoke-static {p0, p1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    return-void
.end method
