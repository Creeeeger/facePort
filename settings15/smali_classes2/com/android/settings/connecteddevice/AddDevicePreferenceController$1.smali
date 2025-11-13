.class public final Lcom/android/settings/connecteddevice/AddDevicePreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/connecteddevice/AddDevicePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/connecteddevice/AddDevicePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/AddDevicePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/AddDevicePreferenceController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/connecteddevice/AddDevicePreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
