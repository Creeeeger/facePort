.class public final synthetic Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/android/systemui/statusbar/phone/AutoHideController;

    check-cast p1, Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mShouldHide:Z

    invoke-interface {p1}, Lcom/android/systemui/statusbar/AutoHideUiElement;->shouldHideOnTouch()Z

    move-result p1

    and-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mShouldHide:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void

    :pswitch_1
    check-cast p0, Lcom/android/systemui/statusbar/phone/AutoHideController;

    check-cast p1, Lcom/android/systemui/statusbar/AutoHideUiElement;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getCheckBarModesRunnable(Lcom/android/systemui/statusbar/AutoHideUiElement;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :pswitch_2
    check-cast p0, Lcom/android/systemui/statusbar/phone/AutoHideController;

    check-cast p1, Lcom/android/systemui/statusbar/AutoHideUiElement;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getCheckBarModesRunnable(Lcom/android/systemui/statusbar/AutoHideUiElement;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void

    :pswitch_3
    check-cast p0, Lcom/android/systemui/statusbar/phone/AutoHideController;

    check-cast p1, Lcom/android/systemui/statusbar/AutoHideUiElement;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getCheckBarModesRunnable(Lcom/android/systemui/statusbar/AutoHideUiElement;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    :pswitch_4
    check-cast p0, Lcom/android/systemui/statusbar/phone/AutoHideController;

    check-cast p1, Lcom/android/systemui/statusbar/AutoHideUiElement;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/android/systemui/statusbar/AutoHideUiElement;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mIsVisible:Z

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
