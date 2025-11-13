.class Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "SecMyDeviceInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->getDeviceImageFromSCPM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment$3;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 198
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.scpm.product.UPDATE.s5d189ajvs"

    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "modelCodes"

    .line 200
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 202
    array-length v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment$3;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->-$$Nest$fgetmDeviceImageManager(Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;)Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->handleResult([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 203
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment$3;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->-$$Nest$fgetmDeviceInfoHeaderPreferenceController(Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;)Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->updateDeviceImage()V

    :cond_0
    const-string p0, "unregistered"

    .line 207
    invoke-virtual {p2, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 208
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 209
    array-length p1, p0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    aget-object v0, p0, p2

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregistered Model : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecMyDeviceInfoFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
