.class public Lcom/samsung/android/settings/wifi/details/WifiExpandablePreference;
.super Landroidx/preference/Preference;
.source "WifiExpandablePreference.java"


# instance fields
.field private mArrow:Landroid/widget/ImageView;

.field private final mContext:Landroid/content/Context;

.field private mIsExpanded:Z

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 36
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreference;->mIsExpanded:Z

    .line 42
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreference;->mContext:Landroid/content/Context;

    .line 43
    sget p1, Lcom/android/settings/R$layout;->sec_wifi_expandable_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 64
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreference;->mTitle:Landroid/widget/TextView;

    .line 65
    sget v0, Lcom/android/settings/R$id;->arrow:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreference;->mArrow:Landroid/widget/ImageView;

    .line 66
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$color;->sec_wifi_arrow_icon_color:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/4 p0, 0x0

    .line 67
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    return-void
.end method
