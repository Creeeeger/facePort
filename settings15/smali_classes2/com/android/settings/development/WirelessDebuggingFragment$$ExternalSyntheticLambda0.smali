.class public final synthetic Lcom/android/settings/development/WirelessDebuggingFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/development/WirelessDebuggingFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/development/WirelessDebuggingFragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/development/WirelessDebuggingFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/development/WirelessDebuggingFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/development/WirelessDebuggingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/development/WirelessDebuggingFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/development/WirelessDebuggingFragment;

    iget p0, p0, Lcom/android/settings/development/WirelessDebuggingFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/android/settings/development/WirelessDebuggingFragment;->sAdbIpAddressPreferenceController:Lcom/android/settings/development/AdbIpAddressPreferenceController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/android/settings/development/AdbPairedDevicePreference;

    invoke-virtual {v1, p1}, Lcom/android/settings/development/WirelessDebuggingFragment;->launchPairedDeviceDetailsFragment(Lcom/android/settings/development/AdbPairedDevicePreference;)V

    return v0

    :pswitch_0
    sget-object p0, Lcom/android/settings/development/WirelessDebuggingFragment;->sAdbIpAddressPreferenceController:Lcom/android/settings/development/AdbIpAddressPreferenceController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/android/settings/development/AdbPairedDevicePreference;

    invoke-virtual {v1, p1}, Lcom/android/settings/development/WirelessDebuggingFragment;->launchPairedDeviceDetailsFragment(Lcom/android/settings/development/AdbPairedDevicePreference;)V

    return v0

    :pswitch_1
    sget-object p0, Lcom/android/settings/development/WirelessDebuggingFragment;->sAdbIpAddressPreferenceController:Lcom/android/settings/development/AdbIpAddressPreferenceController;

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
