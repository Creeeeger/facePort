.class public Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;
.super Landroidx/preference/Preference;
.source "WifiApExpandablePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference$OnPreferenceItemCLickListener;
    }
.end annotation


# static fields
.field private static final EXPANDABLE_PREFERENCE_LAYOUT:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOnPreferenceItemCLickListener:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference$OnPreferenceItemCLickListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmOnPreferenceItemCLickListener(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;)Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference$OnPreferenceItemCLickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;->mOnPreferenceItemCLickListener:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference$OnPreferenceItemCLickListener;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;->TAG:Ljava/lang/String;

    .line 17
    sget v0, Lcom/android/settings/R$layout;->sec_wifi_ap_expandable_preference:I

    sput v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;->EXPANDABLE_PREFERENCE_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    sget p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;->EXPANDABLE_PREFERENCE_LAYOUT:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 27
    sget p1, Lcom/android/settings/R$drawable;->ic_wifi_ap_dropdown:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020016

    .line 45
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x1020006

    .line 46
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 47
    sget v0, Lcom/android/settings/R$id;->click_container:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 48
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPreferenceItemCLickListener(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference$OnPreferenceItemCLickListener;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;->mOnPreferenceItemCLickListener:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference$OnPreferenceItemCLickListener;

    return-void
.end method
