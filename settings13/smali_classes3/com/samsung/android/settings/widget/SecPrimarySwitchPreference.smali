.class public Lcom/samsung/android/settings/widget/SecPrimarySwitchPreference;
.super Lcom/android/settingslib/PrimarySwitchPreference;
.source "SecPrimarySwitchPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settingslib/PrimarySwitchPreference;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/SecPrimarySwitchPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/PrimarySwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/SecPrimarySwitchPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/PrimarySwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/SecPrimarySwitchPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/PrimarySwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/SecPrimarySwitchPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->isLargeText(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    sget p1, Lcom/android/settings/R$layout;->sec_preference_primary_switch_large:I

    goto :goto_0

    .line 60
    :cond_0
    sget p1, Lcom/android/settings/R$layout;->sec_preference_primary_switch:I

    .line 58
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

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

    .line 34
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecPrimarySwitchPreference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method
