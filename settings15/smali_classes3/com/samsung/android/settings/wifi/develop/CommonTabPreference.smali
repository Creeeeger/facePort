.class public Lcom/samsung/android/settings/wifi/develop/CommonTabPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mOnTabSelectedListener:Lcom/samsung/android/settings/wifi/develop/OnTabSelectedListener;

.field public mTabLayout:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBindViewHolder: mTabLayout="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/CommonTabPreference;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonTabPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/CommonTabPreference;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-nez v0, :cond_0

    const v0, 0x7f0a0fae

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/CommonTabPreference;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->seslSetSubTabStyle()V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/CommonTabPreference;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/CommonTabPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/CommonTabPreference$1;-><init>(Lcom/samsung/android/settings/wifi/develop/CommonTabPreference;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener$1(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/CommonTabPreference;->mOnTabSelectedListener:Lcom/samsung/android/settings/wifi/develop/OnTabSelectedListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/CommonTabPreference;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/samsung/android/settings/wifi/develop/OnTabSelectedListener;->onTabSelected(I)V

    :cond_0
    return-void
.end method
