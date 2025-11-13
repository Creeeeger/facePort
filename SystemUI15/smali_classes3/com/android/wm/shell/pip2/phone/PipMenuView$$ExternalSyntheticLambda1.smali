.class public final synthetic Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/pip2/phone/PipMenuView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip2/phone/PipMenuView;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMenuContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/android/wm/shell/pip2/phone/PipMenuView;->hideMenu(Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;ZZI)V

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

    sget-object p1, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_EXPAND_TO_FULLSCREEN:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;)V

    :cond_0
    return-void

    :pswitch_0
    iget p1, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMenuState:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    iget-object p1, p1, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

    sget-object p1, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_TAP_TO_REMOVE:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;)V

    :cond_1
    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lcom/android/wm/shell/pip2/phone/PipMenuView;->$r8$lambda$QT_3vOdga2lVOrrarWRUb9TjiJ0(Lcom/android/wm/shell/pip2/phone/PipMenuView;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
