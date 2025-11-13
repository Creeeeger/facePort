.class public final Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$showSwitchDoneToast$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$showSwitchDoneToast$1;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$showSwitchDoneToast$1;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->context:Landroid/content/Context;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->isBModeUser:Z

    if-eqz v0, :cond_0

    const v0, 0x7f13132e

    goto :goto_0

    :cond_0
    const v0, 0x7f13132d

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController$showSwitchDoneToast$1;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->context:Landroid/content/Context;

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const-string p0, "Two phone mode switched toast "

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "TwoPhoneModeIconController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
