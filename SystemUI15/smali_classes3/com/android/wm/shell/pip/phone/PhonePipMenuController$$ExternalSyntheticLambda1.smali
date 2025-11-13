.class public final synthetic Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda1;->f$0:I

    check-cast p1, Lcom/android/wm/shell/pip/phone/PipTouchHandler$PipMenuListener;

    iget-object p1, p1, Lcom/android/wm/shell/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iput p0, p1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuState:I

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->updateMovementBounds()V

    const/4 v0, 0x1

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->onRegistrationChanged(Z)V

    iget-object p1, p1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_HIDE_MENU:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;)V

    goto :goto_1

    :cond_1
    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_SHOW_MENU:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;)V

    :cond_2
    :goto_1
    return-void
.end method
