.class public final Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$updateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$updateMonitorCallback$1;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStartedGoingToSleep(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$updateMonitorCallback$1;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;->dialog:Lcom/android/systemui/settings/brightness/BrightnessDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
