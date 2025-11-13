.class public final synthetic Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/util/Pair;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v2, 0x3f0

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->signIn()V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->$r8$lambda$6wqxssGKIlYRKwRrbjxUV7oAgKg(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->connectDisconnectNetwork()V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/util/Pair;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v2, 0x3f0

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->signIn()V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->showConfirmForgetDialog()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->forget(Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;)V

    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/util/Pair;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v1, 0x89

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
