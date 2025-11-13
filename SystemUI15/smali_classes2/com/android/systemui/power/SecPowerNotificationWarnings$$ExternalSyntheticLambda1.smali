.class public final synthetic Lcom/android/systemui/power/SecPowerNotificationWarnings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch p1, :pswitch_data_0

    const-string p1, "PowerUI.Notification"

    const-string/jumbo v0, "showIncompleteChargerConnectionInfoPopUp() dismissed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroidx/appcompat/app/AlertDialog;

    return-void

    :pswitch_0
    const-string p1, "PowerUI.Notification"

    const-string/jumbo v0, "showBatterySwellingLowTempPopup() dismissed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSwellingDialog:Landroidx/appcompat/app/AlertDialog;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
