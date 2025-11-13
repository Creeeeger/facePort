.class public Lcom/samsung/android/settings/wifi/details/WifiWarningPreference;
.super Landroidx/preference/Preference;
.source "WifiWarningPreference.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSummary:Landroid/widget/TextView;

.field private mSummaryText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, ""

    .line 36
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiWarningPreference;->mSummaryText:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiWarningPreference;->mContext:Landroid/content/Context;

    .line 41
    sget p1, Lcom/android/settings/R$layout;->sec_wifi_detail_warning_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 52
    sget v0, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiWarningPreference;->mSummary:Landroid/widget/TextView;

    .line 53
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiWarningPreference;->mSummaryText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
