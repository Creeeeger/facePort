.class public final Lcom/android/systemui/power/SecPowerUI$13;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/SecPowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/SecPowerUI;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerUI$13;->this$0:Lcom/android/systemui/power/SecPowerUI;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerUI$13;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object p1, p1, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "user_setup_complete"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "PowerUI"

    const-string v0, "Setup wizard is completed"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI$13;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget p1, p0, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryStatus:I

    iget v1, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealth:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/power/SecPowerUI;->checkChargingNotification(III)V

    :cond_0
    return-void
.end method
