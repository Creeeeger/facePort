.class public final synthetic Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/network/NetworkProviderSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/NetworkProviderSettings;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/network/NetworkProviderSettings;

    packed-switch v1, :pswitch_data_0

    invoke-static {p0}, Lcom/android/settings/network/NetworkProviderSettings;->$r8$lambda$7OlqpiUmxFkDn9fJ9dGTdauOVvw(Lcom/android/settings/network/NetworkProviderSettings;)V

    return-void

    :pswitch_0
    iget-boolean v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsViewLoading:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setLoading(ZZ)V

    iput-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsViewLoading:Z

    :cond_0
    return-void

    :pswitch_1
    sget-object v1, Lcom/android/settings/network/NetworkProviderSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/network/NetworkProviderSettings$SearchIndexProvider;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showPinnedHeader(Z)V

    return-void

    :pswitch_2
    sget-object v0, Lcom/android/settings/network/NetworkProviderSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/network/NetworkProviderSettings$SearchIndexProvider;

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->updateWifiEntryPreferences()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mRemoveLoadingRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :pswitch_3
    sget-object v0, Lcom/android/settings/network/NetworkProviderSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/network/NetworkProviderSettings$SearchIndexProvider;

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->onWifiStateChanged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
