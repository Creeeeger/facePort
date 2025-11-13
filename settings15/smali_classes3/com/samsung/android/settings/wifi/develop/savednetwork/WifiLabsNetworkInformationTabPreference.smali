.class public Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationTabPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mOnTabSelectedListener:Lcom/samsung/android/settings/wifi/develop/OnTabSelectedListener;

.field public mPosition:I

.field public mTabLayout:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationTabPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationTabPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationTabPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationTabPreference;->mPosition:I

    const p1, 0x7f0d0a78

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationTabPreference;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-nez v0, :cond_0

    const v0, 0x7f0a0fae

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationTabPreference;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->seslSetSubTabStyle()V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationTabPreference;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationTabPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationTabPreference$1;-><init>(Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationTabPreference;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener$1(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationTabPreference;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsNetworkInformationTabPreference;->mPosition:I

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    return-void
.end method
