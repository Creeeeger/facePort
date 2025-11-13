.class Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$2;
.super Landroid/database/ContentObserver;
.source "MobileWIPSSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;Landroid/os/Handler;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$2;->this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 101
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$2;->this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "wifi_mwips"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 104
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings$2;->this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSSettings;->setMobileWipsSwitch()V

    :cond_0
    return-void
.end method
