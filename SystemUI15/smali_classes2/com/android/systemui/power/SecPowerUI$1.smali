.class public final Lcom/android/systemui/power/SecPowerUI$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/SecPowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/SecPowerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerUI$1;->this$0:Lcom/android/systemui/power/SecPowerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "PowerUI"

    const-string v1, "mLowBatteryWarningTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI$1;->this$0:Lcom/android/systemui/power/SecPowerUI;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/SecPowerUI;->mIsRunningLowBatteryTask:Z

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    const/4 v0, 0x1

    check-cast p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showLowBatteryWarning(Z)V

    return-void
.end method
