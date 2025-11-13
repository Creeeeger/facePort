.class public final Lcom/android/settings/development/WirelessDebuggingPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/development/WirelessDebuggingPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/development/WirelessDebuggingPreferenceController;Landroid/os/Handler;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/development/WirelessDebuggingPreferenceController$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/development/WirelessDebuggingPreferenceController$1;->this$0:Lcom/android/settings/development/WirelessDebuggingPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget v0, p0, Lcom/android/settings/development/WirelessDebuggingPreferenceController$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void

    :pswitch_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingPreferenceController$1;->this$0:Lcom/android/settings/development/WirelessDebuggingPreferenceController;

    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/WirelessDebuggingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget v0, p0, Lcom/android/settings/development/WirelessDebuggingPreferenceController$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingPreferenceController$1;->this$0:Lcom/android/settings/development/WirelessDebuggingPreferenceController;

    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/WirelessDebuggingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
