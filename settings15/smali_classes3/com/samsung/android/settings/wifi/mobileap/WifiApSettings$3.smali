.class public final Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$3;
.super Landroid/text/style/ClickableSpan;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettingQrInfoBottomView:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->showInfoDialog()V

    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v0, 0x7f06070f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
