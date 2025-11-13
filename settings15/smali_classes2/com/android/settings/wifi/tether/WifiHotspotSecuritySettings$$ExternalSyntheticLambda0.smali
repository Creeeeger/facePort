.class public final synthetic Lcom/android/settings/wifi/tether/WifiHotspotSecuritySettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/wifi/tether/WifiHotspotSecuritySettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/tether/WifiHotspotSecuritySettings;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/wifi/tether/WifiHotspotSecuritySettings$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSecuritySettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/tether/WifiHotspotSecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSecuritySettings$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSecuritySettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/tether/WifiHotspotSecuritySettings;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiHotspotSecuritySettings;->onRestartingChanged(Ljava/lang/Boolean;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSecuritySettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/tether/WifiHotspotSecuritySettings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onViewItemListDataChanged(), viewItems:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiHotspotSecuritySettings;->log(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$ViewItem;

    iget-object v1, v0, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$ViewItem;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v2, v1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    iget-boolean v3, v0, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$ViewItem;->mIsChecked:Z

    if-eq v2, v3, :cond_2

    invoke-virtual {v1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    invoke-virtual {v1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v2

    iget-boolean v3, v0, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$ViewItem;->mIsEnabled:Z

    if-eq v2, v3, :cond_0

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-boolean v0, v0, Lcom/android/settings/wifi/tether/WifiHotspotSecurityViewModel$ViewItem;->mIsEnabled:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const v0, 0x7f14358c

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
