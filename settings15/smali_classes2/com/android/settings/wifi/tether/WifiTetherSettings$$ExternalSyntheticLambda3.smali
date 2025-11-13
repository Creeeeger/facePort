.class public final synthetic Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->onRestartingChanged(Ljava/lang/Boolean;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->onInstantHotspotChanged(Ljava/lang/String;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiHotspotSpeed:Landroidx/preference/Preference;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiHotspotSecurity:Landroidx/preference/Preference;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
