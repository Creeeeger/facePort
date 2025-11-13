.class Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$1;
.super Ljava/lang/Object;
.source "WifiApConfigurePassWordPreference.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 107
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasFocus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-nez p2, :cond_0

    .line 110
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 111
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$1$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$1$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$1;)V

    const-wide/16 v0, 0x258

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
