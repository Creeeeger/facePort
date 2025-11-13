.class final Lcom/android/systemui/globalactions/GlobalActionsDialogLite$RestartAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LongPressAction;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    const v0, 0x10805b3

    const v1, 0x10405de

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;II)V

    return-void
.end method


# virtual methods
.method public final onLongPress()Z
    .locals 3

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_REBOOT_LONG_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    invoke-interface {v0, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_safe_boot"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->reboot(Z)V

    return v0

    :cond_1
    return v1
.end method

.method public final onPress()V
    .locals 2

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_REBOOT_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->reboot(Z)V

    return-void
.end method

.method public final showBeforeProvisioning()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
