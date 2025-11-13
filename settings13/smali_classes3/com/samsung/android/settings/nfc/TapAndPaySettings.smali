.class public Lcom/samsung/android/settings/nfc/TapAndPaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TapAndPaySettings.java"


# static fields
.field private static CATEGORY:Ljava/lang/String; = "android.settings.NFC_PAYMENT_SETTINGS.category"

.field private static OTHER_TAB_TAG:Ljava/lang/String; = "others"

.field private static PAYMENT_TAB_TAG:Ljava/lang/String; = "payment"

.field private static SETTING_OTHER_TAB:I = 0x1

.field private static SETTING_PAYMENT_TAB:I


# instance fields
.field private mCurrentTab:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOtherFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mPaymentFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mTabLayout:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentTab(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mCurrentTab:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentTab(Lcom/samsung/android/settings/nfc/TapAndPaySettings;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mCurrentTab:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeView(Lcom/samsung/android/settings/nfc/TapAndPaySettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->changeView(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mInflater:Landroid/view/LayoutInflater;

    .line 25
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mCurrentTab:I

    return-void
.end method

.method private changeView(I)V
    .locals 4

    const-string v0, "TapAndPaySettings"

    const-string v1, "changeView Called"

    .line 124
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 128
    sget-object v3, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->PAYMENT_TAB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/nfc/PaymentSettings;

    iput-object v3, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 129
    sget-object v3, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->OTHER_TAB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/nfc/OtherSettings;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 131
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v1, :cond_1

    .line 136
    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_1
    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 150
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/android/settings/SettingsPreferenceFragment;

    if-nez p1, :cond_3

    const-string p0, "mOtherFragment == null"

    .line 151
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget p0, Lcom/android/settings/R$id;->tabcontent:I

    new-instance p1, Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-direct {p1}, Lcom/samsung/android/settings/nfc/OtherSettings;-><init>()V

    sget-object v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->OTHER_TAB_TAG:Ljava/lang/String;

    invoke-virtual {v2, p0, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    :cond_3
    const-string p1, "mOtherFragment != null"

    .line 154
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v2, p0}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 141
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/android/settings/SettingsPreferenceFragment;

    if-nez p1, :cond_5

    const-string p0, "mPaymentFragment == null"

    .line 142
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget p0, Lcom/android/settings/R$id;->tabcontent:I

    new-instance p1, Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-direct {p1}, Lcom/samsung/android/settings/nfc/PaymentSettings;-><init>()V

    sget-object v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->PAYMENT_TAB_TAG:Ljava/lang/String;

    invoke-virtual {v2, p0, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    :cond_5
    const-string p1, "mPaymentFragment != null"

    .line 145
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v2, p0}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 161
    :goto_0
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x46

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "layout_inflater"

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mInflater:Landroid/view/LayoutInflater;

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 52
    sget-object v1, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->CATEGORY:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mCurrentTab:I

    goto :goto_0

    .line 54
    :cond_0
    iput v0, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mCurrentTab:I

    .line 55
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->nfc_payment_settings_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 61
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/settings/R$layout;->sec_nfc_tap_and_pay:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 63
    sget p2, Lcom/android/settings/R$id;->tab_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 65
    new-instance v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;-><init>(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)V

    invoke-virtual {p2, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    if-eqz p3, :cond_0

    const-string p2, "tap_and_pay_current"

    .line 81
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mCurrentTab:I

    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mCurrentTab = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mCurrentTab:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TapAndPaySettings"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    iget p2, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mCurrentTab:I

    sget p3, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->SETTING_PAYMENT_TAB:I

    if-eq p2, p3, :cond_1

    sget v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->SETTING_OTHER_TAB:I

    if-eq p2, v0, :cond_1

    .line 86
    iput p3, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mCurrentTab:I

    .line 88
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget p0, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mCurrentTab:I

    invoke-virtual {p2, p0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_2
    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 113
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 108
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 100
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    const-string v0, "TapAndPaySettings"

    const-string v1, "onResume Called"

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget v0, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mCurrentTab:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->changeView(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 118
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 119
    iget p0, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mCurrentTab:I

    const-string v0, "tap_and_pay_current"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
