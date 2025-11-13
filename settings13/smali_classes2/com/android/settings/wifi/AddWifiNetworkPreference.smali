.class public Lcom/android/settings/wifi/AddWifiNetworkPreference;
.super Landroidx/preference/Preference;
.source "AddWifiNetworkPreference.java"


# instance fields
.field mIsAddWifiConfigAllow:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mScanIconDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static synthetic $r8$lambda$qmINaXka_96aC6jw4vOXgTRgY-Q(Lcom/android/settings/wifi/AddWifiNetworkPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AddWifiNetworkPreference;->lambda$onBindViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 48
    sget v0, Lcom/android/settingslib/R$layout;->preference_access_point:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 49
    sget v0, Lcom/android/settings/R$layout;->wifi_button_preference_widget:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 50
    sget v0, Lcom/android/settings/R$drawable;->ic_add_24dp:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(I)V

    .line 51
    sget v0, Lcom/android/settings/R$string;->wifi_add_network:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 53
    sget v0, Lcom/android/settings/R$drawable;->ic_scan_24dp:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AddWifiNetworkPreference;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AddWifiNetworkPreference;->mScanIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->isAddWifiConfigAllowed(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/AddWifiNetworkPreference;->mIsAddWifiConfigAllow:Z

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/wifi/AddWifiNetworkPreference;->updatePreferenceForRestriction()V

    return-void
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 76
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Resource does not exist: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AddWifiNetworkPreference"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)V
    .locals 1

    .line 67
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 68
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getEnrolleeQrCodeScannerIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 67
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 62
    sget v0, Lcom/android/settings/R$id;->button_icon:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 63
    iget-object v0, p0, Lcom/android/settings/wifi/AddWifiNetworkPreference;->mScanIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_dpp_scan_qr_code:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 66
    new-instance v0, Lcom/android/settings/wifi/AddWifiNetworkPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/AddWifiNetworkPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/AddWifiNetworkPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method updatePreferenceForRestriction()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 85
    iget-boolean v0, p0, Lcom/android/settings/wifi/AddWifiNetworkPreference;->mIsAddWifiConfigAllow:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 87
    sget v0, Lcom/android/settings/R$string;->not_allowed_by_ent:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_0
    return-void
.end method
