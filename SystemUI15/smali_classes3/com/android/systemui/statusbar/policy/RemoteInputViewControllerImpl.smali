.class public final Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/RemoteInputViewController;


# instance fields
.field public final bouncerChecker:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda1;

.field public final entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public isBound:Z

.field public final notifManager:Landroid/app/INotificationManager;

.field public final onFocusChangeListener:Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onFocusChangeListener$1;

.field public final onSendListeners:Landroid/util/ArraySet;

.field public final onSendRemoteInputListener:Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onSendRemoteInputListener$1;

.field public pendingIntent:Landroid/app/PendingIntent;

.field public remoteInput:Landroid/app/RemoteInput;

.field public final remoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

.field public final remoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

.field public remoteInputs:[Landroid/app/RemoteInput;

.field public final shortcutManager:Landroid/content/pm/ShortcutManager;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final view:Lcom/android/systemui/statusbar/policy/RemoteInputView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/content/pm/ShortcutManager;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->view:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->remoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->remoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->shortcutManager:Landroid/content/pm/ShortcutManager;

    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->onSendListeners:Landroid/util/ArraySet;

    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_NOTIFICATION_HISTORY:Z

    if-eqz p1, :cond_0

    const-string p1, "notification"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->notifManager:Landroid/app/INotificationManager;

    new-instance p1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onFocusChangeListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onFocusChangeListener$1;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->onFocusChangeListener:Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onFocusChangeListener$1;

    new-instance p1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onSendRemoteInputListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onSendRemoteInputListener$1;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->onSendRemoteInputListener:Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onSendRemoteInputListener$1;

    return-void
.end method


# virtual methods
.method public final bind()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->isBound:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->isBound:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->remoteInput:Landroid/app/RemoteInput;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->view:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, v1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setSupportedMimeTypes(Ljava/util/Collection;)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->updateRemoteInputLimitToastResources(Landroid/app/RemoteInput;)V

    :cond_1
    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditTextFocusChangeListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->onFocusChangeListener:Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onFocusChangeListener$1;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mOnSendListeners:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->onSendRemoteInputListener:Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onSendRemoteInputListener$1;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setRemoteInput(Landroid/app/RemoteInput;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->remoteInput:Landroid/app/RemoteInput;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->isBound:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->view:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setSupportedMimeTypes(Ljava/util/Collection;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->updateRemoteInputLimitToastResources(Landroid/app/RemoteInput;)V

    :cond_1
    return-void
.end method

.method public final unbind()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->isBound:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->isBound:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->view:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditTextFocusChangeListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->onFocusChangeListener:Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onFocusChangeListener$1;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mOnSendListeners:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->onSendRemoteInputListener:Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onSendRemoteInputListener$1;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
