.class public final Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;Landroid/os/Handler;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController$1;->this$0:Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget p1, p0, Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController$1;->this$0:Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;)Landroidx/preference/SecPreferenceScreen;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController$1;->this$0:Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;)Landroidx/preference/SecPreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController$1;->this$0:Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;)Landroidx/preference/SecPreferenceScreen;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController$1;->this$0:Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;)Landroidx/preference/SecPreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/CarrierBridgePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
