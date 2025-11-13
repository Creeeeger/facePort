.class public final synthetic Lcom/android/settings/network/telephony/MobileNetworkSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/telephony/MobileNetworkSettings;

.field public final synthetic f$1:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/MobileNetworkSettings;Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/telephony/MobileNetworkSettings;

    iput-object p2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/telephony/MobileNetworkSettings;

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    sget-object v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v2, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->uniqueName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->redrawPreferenceControllers()V

    return-void
.end method
