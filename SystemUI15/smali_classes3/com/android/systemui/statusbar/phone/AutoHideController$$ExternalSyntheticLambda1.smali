.class public final synthetic Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/systemui/statusbar/AutoHideUiElement;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->synchronizeState()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/systemui/statusbar/phone/AutoHideController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->synchronizeState()V

    return-void

    :pswitch_1
    check-cast p0, Lcom/android/systemui/statusbar/phone/AutoHideController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->synchronizeState()V

    return-void

    :pswitch_2
    check-cast p0, Lcom/android/systemui/statusbar/phone/AutoHideController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->synchronizeState()V

    return-void

    :pswitch_3
    check-cast p0, Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->isAnyTransientBarShown()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mGameToolsShown:Z

    if-nez v0, :cond_4

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mWindowManagerService:Landroid/view/IWindowManager;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->hideTransientBars(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "AutoHideController"

    const-string v1, "Cannot get WindowManager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->hide()V

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mFlexPanel:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->hide()V

    :cond_2
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_POLICY_VISIBILITY:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mObserver:Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;->notify(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->hide()V

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
