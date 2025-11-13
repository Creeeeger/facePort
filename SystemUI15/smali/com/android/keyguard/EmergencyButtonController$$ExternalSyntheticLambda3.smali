.class public final synthetic Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/EmergencyButtonController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/EmergencyButtonController;I)V
    .locals 0

    iput p2, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda3;->f$0:Lcom/android/keyguard/EmergencyButtonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 2

    iget p1, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda3;->f$0:Lcom/android/keyguard/EmergencyButtonController;

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButtonController;->updateEmergencyCallButton()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda3;->f$0:Lcom/android/keyguard/EmergencyButtonController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isSatelliteModeEnabled()Z

    move-result p1

    const-string v0, "SATELLITE_MODE_ENABLED changed to "

    const-string v1, "EmergencyButton"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButtonController;->registerSatelliteTelephonyCallback()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButtonController;->unregisterSatelliteTelephonyCallback()V

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButtonController;->updateEmergencyCallButton()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
