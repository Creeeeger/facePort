.class public final Lcom/android/systemui/power/SecPowerNotificationWarnings$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$3;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$3;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroidx/appcompat/app/AlertDialog;

    iget p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryStatus:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$4;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
