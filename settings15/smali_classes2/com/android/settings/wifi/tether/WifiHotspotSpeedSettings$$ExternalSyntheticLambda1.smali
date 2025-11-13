.class public final synthetic Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings;->onRestartingChanged(Ljava/lang/Boolean;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiHotspotSpeedSettings;->onSpeedInfoMapDataChanged(Ljava/util/Map;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
