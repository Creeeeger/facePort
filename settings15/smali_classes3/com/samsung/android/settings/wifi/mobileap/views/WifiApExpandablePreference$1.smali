.class public final Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;->mOnPreferenceItemCLickListener:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$2;

    if-eqz p0, :cond_0

    const-string p1, "TETH_011"

    const-string v0, "8014"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mAdvancedViewExpandablePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mAdvancedSection1PreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mAdvancedSection2PreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mHotspotLabPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method
