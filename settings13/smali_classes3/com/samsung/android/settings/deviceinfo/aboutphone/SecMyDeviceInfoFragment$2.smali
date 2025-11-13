.class Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment$2;
.super Landroid/os/AsyncTask;
.source "SecMyDeviceInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->getDeviceImageFromSCPM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment$2;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 183
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 186
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment$2;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->-$$Nest$fgetmDeviceImageManager(Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;)Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->register()V

    .line 187
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment$2;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->-$$Nest$fgetmDeviceImageManager(Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;)Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->initialize()V

    .line 188
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment$2;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;->-$$Nest$fgetmDeviceImageManager(Lcom/samsung/android/settings/deviceinfo/aboutphone/SecMyDeviceInfoFragment;)Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageManager;->requestPki()V

    const/4 p0, 0x0

    return-object p0
.end method
