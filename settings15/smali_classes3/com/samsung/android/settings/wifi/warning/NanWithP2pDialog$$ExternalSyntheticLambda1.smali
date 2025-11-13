.class public final synthetic Lcom/samsung/android/settings/wifi/warning/NanWithP2pDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/warning/NanWithP2pDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/warning/NanWithP2pDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/warning/NanWithP2pDialog$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/wifi/warning/NanWithP2pDialog;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/NanWithP2pDialog$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/wifi/warning/NanWithP2pDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->dismissApDisableDialog()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->sendEnableNanBroadcast(Z)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/warning/NanWithP2pDialog;->sendNotifySelectedBroadcast(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
