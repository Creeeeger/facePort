.class public final Lcom/android/systemui/power/SecPowerUI$7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/SecPowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/SecPowerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerUI$7;->this$0:Lcom/android/systemui/power/SecPowerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 5

    iget-object v0, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getWirelessChargingDetectionContext()Landroid/hardware/scontext/SContextWirelessChargingDetection;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/scontext/SContextWirelessChargingDetection;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const-string v2, "PowerUI"

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "SContextListener - Move"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerUI$7;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iput-boolean v3, p1, Lcom/android/systemui/power/SecPowerUI;->mIsDeviceMoving:Z

    iget-boolean v3, p1, Lcom/android/systemui/power/SecPowerUI;->mIsSContextListenerRegistered:Z

    if-eqz v3, :cond_3

    iget v3, p1, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    iget p1, p1, Lcom/android/systemui/power/SecPowerUI;->mBatteryStatus:I

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    :cond_1
    const-string p1, "Unregister SContextListener - From Listener"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerUI$7;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object v2, p1, Lcom/android/systemui/power/SecPowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object p1, p1, Lcom/android/systemui/power/SecPowerUI;->mSContextListener:Lcom/android/systemui/power/SecPowerUI$7;

    invoke-virtual {v2, p1, v1}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI$7;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iput-boolean v0, p0, Lcom/android/systemui/power/SecPowerUI;->mIsSContextListenerRegistered:Z

    goto :goto_0

    :cond_2
    const-string p1, "SContextListener - No Move"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI$7;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iput-boolean v0, p0, Lcom/android/systemui/power/SecPowerUI;->mIsDeviceMoving:Z

    :cond_3
    :goto_0
    return-void
.end method
