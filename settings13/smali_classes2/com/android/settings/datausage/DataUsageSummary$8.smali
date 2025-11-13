.class Lcom/android/settings/datausage/DataUsageSummary$8;
.super Landroid/telephony/PhoneStateListener;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 0

    .line 1085
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 6

    .line 1089
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1090
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "DataUsageSummary"

    const-string/jumbo v1, "onPreciseCallStateChanged()"

    .line 1091
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary$8;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    .line 1094
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const-string/jumbo v2, "restrict_background"

    .line 1095
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/Preference;->getOrder()I

    move-result v2

    add-int/2addr v2, v4

    :goto_1
    if-ge v2, v1, :cond_4

    .line 1097
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 1098
    instance-of v5, v3, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    if-eqz v5, :cond_3

    if-eqz p1, :cond_2

    const-string/jumbo v5, "volte"

    .line 1099
    invoke-virtual {p1, v5}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1100
    check-cast v3, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    invoke-virtual {v3, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setVolteCallState(Z)V

    const-string v3, "in volte calling:: menu of mobile data is disabled"

    .line 1101
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1103
    :cond_2
    check-cast v3, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setVolteCallState(Z)V

    const-string/jumbo v3, "volte call stop :: menu of mobile data is enabled"

    .line 1104
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
