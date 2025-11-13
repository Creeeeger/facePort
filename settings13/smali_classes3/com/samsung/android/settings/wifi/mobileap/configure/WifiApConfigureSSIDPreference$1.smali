.class Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1;
.super Ljava/lang/Object;
.source "WifiApConfigureSSIDPreference.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 126
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasFocus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    .line 128
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 129
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1;)V

    const-wide/16 v0, 0x258

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmSsidEditText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 138
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmSsidEditText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    :goto_0
    return-void
.end method
