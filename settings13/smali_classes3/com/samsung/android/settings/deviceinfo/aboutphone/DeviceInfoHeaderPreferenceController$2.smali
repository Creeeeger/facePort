.class Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController$2;
.super Landroid/database/ContentObserver;
.source "DeviceInfoHeaderPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->getDeviceNameObserver()Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController$2;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 228
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController$2;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "device_name"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 229
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController$2;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->-$$Nest$fgetmDeviceNameView(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
