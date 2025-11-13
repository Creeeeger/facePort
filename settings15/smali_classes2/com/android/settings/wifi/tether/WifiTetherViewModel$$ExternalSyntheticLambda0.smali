.class public final synthetic Lcom/android/settings/wifi/tether/WifiTetherViewModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/wifi/tether/WifiTetherViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherViewModel;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->onInstantHotspotStateChanged(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->sSpeedSummaryResMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, 0x7f142e0a

    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSpeedSummary:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/tether/WifiTetherViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->sSecuritySummaryResMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    const p1, 0x7f142e0a

    :goto_1
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherViewModel;->mSecuritySummary:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
