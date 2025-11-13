.class public final Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$userTrackerCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$userTrackerCallback$1;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$userTrackerCallback$1;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

    iput p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->currentUserId:I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "User switched to "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TwoPhoneModeIconController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->updateTwoPhoneMode()V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->isBModeCreated:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->isOwner:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->isBModeUser:Z

    if-eqz p1, :cond_1

    :cond_0
    new-instance p1, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$showSwitchDoneToast$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$showSwitchDoneToast$1;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;)V

    const-wide/16 v0, 0x1388

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, p1, v0, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    :cond_1
    return-void
.end method
