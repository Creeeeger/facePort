.class public final Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;Landroid/os/Handler;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->-$$Nest$mupdateConfigureChanges(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;)V

    return-void

    :pswitch_0
    const-string v0, "mMobileDataObserver - onChange - "

    const-string v1, "SwitchForIndividualAppsSettings"

    invoke-static {v0, v1, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->-$$Nest$mupdateConfigureChanges(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
