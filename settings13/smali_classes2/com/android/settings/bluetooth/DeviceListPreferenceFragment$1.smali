.class Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;
.super Ljava/lang/Object;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->sendBsdcDataForSaLogging()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

.field final synthetic val$eventId:Ljava/lang/String;

.field final synthetic val$screenId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;->val$screenId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;->val$eventId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 606
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->-$$Nest$fgetmScanStartTime(Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 607
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->-$$Nest$fgetmScanStartTime(Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    goto :goto_0

    :cond_0
    move-wide v0, v2

    .line 612
    :goto_0
    sget-boolean v4, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->IS_ACTION_BUTTON:Z

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/samsung/android/settings/bluetooth/SecDevicePickerDialog;->IS_ACTION_BUTTON:Z

    if-eqz v4, :cond_3

    .line 613
    :cond_1
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    const-string v5, "Button"

    iput-object v5, v4, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mScanFinishAction:Ljava/lang/String;

    .line 614
    sget-boolean v4, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->IS_ACTION_BUTTON:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 615
    sput-boolean v5, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->IS_ACTION_BUTTON:Z

    .line 617
    :cond_2
    sget-boolean v4, Lcom/samsung/android/settings/bluetooth/SecDevicePickerDialog;->IS_ACTION_BUTTON:Z

    if-eqz v4, :cond_3

    .line 618
    sput-boolean v5, Lcom/samsung/android/settings/bluetooth/SecDevicePickerDialog;->IS_ACTION_BUTTON:Z

    .line 621
    :cond_3
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    iget-object v5, v5, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mScanFinishAction:Ljava/lang/String;

    invoke-static {v4, v5, v0, v1}, Lcom/android/settings/bluetooth/Utils;->makeBsdcDataForSaLogging(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/Map;

    move-result-object v0

    .line 623
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    const-string v4, "Callback"

    iput-object v4, v1, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mScanFinishAction:Ljava/lang/String;

    .line 624
    invoke-static {v1, v2, v3}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->-$$Nest$fputmScanStartTime(Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;J)V

    .line 626
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;->val$screenId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;->val$eventId:Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
