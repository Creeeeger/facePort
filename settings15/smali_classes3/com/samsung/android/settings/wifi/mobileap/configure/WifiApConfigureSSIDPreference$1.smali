.class public final Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    sget p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->$r8$clinit:I

    const-string p1, "hasFocus:"

    const-string v0, "WifiApConfigureSSIDPreference"

    invoke-static {p1, v0, p2}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p2, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1;)V

    const-wide/16 v0, 0x258

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSsidEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSsidEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    :goto_0
    return-void
.end method
