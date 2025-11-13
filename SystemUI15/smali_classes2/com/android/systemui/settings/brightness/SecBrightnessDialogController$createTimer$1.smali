.class public final Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$createTimer$1;
.super Landroid/os/CountDownTimer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$createTimer$1;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;

    const-wide/16 v0, 0x1388

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController$createTimer$1;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessDialogController;->dialog:Lcom/android/systemui/settings/brightness/BrightnessDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onTick(J)V
    .locals 0

    return-void
.end method
