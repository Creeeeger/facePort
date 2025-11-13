.class Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController$1;
.super Ljava/lang/Object;
.source "DeviceInfoHeaderPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->createDeviceInfoHeader()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 121
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->-$$Nest$fgetmFragment(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;->-$$Nest$mshowDeviceNameEditorDialog(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeaderPreferenceController;)V

    return-void
.end method
