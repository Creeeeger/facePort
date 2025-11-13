.class public final synthetic Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/Dumpable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/Dumpable;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/Dumpable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda8;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/Dumpable;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->resetTranslation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateContentAccessibilityImportanceForGuts(Z)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mBlurController:Lcom/android/systemui/blur/SecQpBlurController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sget-object v1, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;->QUICK_PANEL:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/blur/SecQpBlurController;->doCaptureContainerAlpha(FLcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/blur/SecQpBlurController;->doWindowBlur(I)V

    :goto_0
    return-void

    :pswitch_1
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda8;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/Dumpable;I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
