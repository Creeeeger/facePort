.class public final synthetic Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog;

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->disableMobileHotspot()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog;->sendNotifySelectedBroadcast(Z)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->dismissApDisableDialog()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog;->sendNotifySelectedBroadcast(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->setResult(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
