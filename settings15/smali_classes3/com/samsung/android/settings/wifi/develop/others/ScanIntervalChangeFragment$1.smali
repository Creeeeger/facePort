.class public final Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    const p1, 0x7f0a0cfe

    const-string/jumbo v0, "sem_wifi_settings_framework_scan_interval"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;->-$$Nest$msetResourceOverlayForScan(Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;ZZ)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    const p1, 0x7f0a0cf8

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;

    invoke-static {p0, v2, v2}, Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;->-$$Nest$msetResourceOverlayForScan(Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;ZZ)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;

    invoke-static {p0, v2, v1}, Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;->-$$Nest$msetResourceOverlayForScan(Lcom/samsung/android/settings/wifi/develop/others/ScanIntervalChangeFragment;ZZ)V

    :goto_0
    return-void
.end method
