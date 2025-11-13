.class public final synthetic Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;I)V
    .locals 0

    iput p6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda7;->f$1:Landroid/view/View;

    iput p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda7;->f$2:I

    iput p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda7;->f$3:I

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda7;->f$4:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda7;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda7;->f$1:Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda7;->f$2:I

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda7;->f$3:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda7;->f$4:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mIsGoingGutOpenedFromLock:Z

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mBlurController:Lcom/android/systemui/blur/SecQpBlurController;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v5, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    if-eqz v5, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    sget-object v6, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;->QUICK_PANEL:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/blur/SecQpBlurController;->doCaptureContainerAlpha(FLcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;)V

    goto :goto_0

    :cond_0
    const/16 v5, 0xfa

    invoke-virtual {v4, v5}, Lcom/android/systemui/blur/SecQpBlurController;->doWindowBlur(I)V

    :cond_1
    :goto_0
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->openGutsInternal(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda7;->f$1:Landroid/view/View;

    iget v9, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda7;->f$2:I

    iget v10, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda7;->f$3:I

    iget-object v11, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda7;->f$4:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda7;

    const/4 v12, 0x1

    move-object v6, p0

    move-object v7, v0

    invoke-direct/range {v6 .. v12}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;I)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
