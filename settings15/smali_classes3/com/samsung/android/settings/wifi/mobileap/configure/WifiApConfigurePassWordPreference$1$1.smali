.class public final Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$1$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$1$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$1;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->hideKeyboard(Landroid/content/Context;)V

    return-void
.end method
