.class public final Lcom/android/systemui/power/SecPowerNotificationWarnings$16;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$16;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "PowerUI.Notification"

    const-string v0, "mWaterProtectionAlertDialog onDismiss"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$16;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

    const/16 p1, 0x640

    invoke-virtual {p0, p1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->stopPowerSound(I)V

    return-void
.end method
