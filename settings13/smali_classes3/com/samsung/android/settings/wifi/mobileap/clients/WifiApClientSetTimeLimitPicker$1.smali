.class Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker$1;
.super Ljava/lang/Object;
.source "WifiApClientSetTimeLimitPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 36
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;->-$$Nest$fgetmMacAddress(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPicker;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-static {p1, p0, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->setWifiApClientTimeLimit(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method
