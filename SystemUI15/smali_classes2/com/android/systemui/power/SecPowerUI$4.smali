.class public final Lcom/android/systemui/power/SecPowerUI$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/SecPowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/SecPowerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerUI$4;->this$0:Lcom/android/systemui/power/SecPowerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI$4;->this$0:Lcom/android/systemui/power/SecPowerUI;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/SecPowerUI;->mIsChangedStringAfterCharging:Z

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryChargingType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xb

    :goto_0
    iput v0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryChargingType:I

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    iget p0, p0, Lcom/android/systemui/power/SecPowerUI;->mSuperFastCharger:I

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iget v3, v2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    iput v3, v2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldChargingType:I

    iput v0, v2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    iput p0, v2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSuperFastCharger:I

    check-cast v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showChargingNotice()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
