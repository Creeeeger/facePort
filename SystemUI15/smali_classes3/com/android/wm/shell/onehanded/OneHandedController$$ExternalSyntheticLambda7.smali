.class public final synthetic Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda7;
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

    iput p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda7;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->onShortcutEnabledChanged()V

    return-void

    :pswitch_1
    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->onSwipeToNotificationEnabledChanged()V

    return-void

    :pswitch_2
    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->onEnabledSettingChanged()V

    return-void

    :pswitch_3
    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->onActivatedActionChanged()V

    return-void

    :pswitch_4
    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedController;

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mEventCallback:Lcom/android/systemui/wmshell/WMShell$11;

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell$11;->this$0:Lcom/android/systemui/wmshell/WMShell;

    iget-object v0, v0, Lcom/android/systemui/wmshell/WMShell;->mSysUiMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/wmshell/WMShell$10$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wmshell/WMShell$10$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_5
    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded()V

    return-void

    :pswitch_6
    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->startOneHanded()V

    return-void

    :pswitch_7
    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    invoke-virtual {v1, v0, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplaysChangedListener:Lcom/android/wm/shell/onehanded/OneHandedController$1;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayController;->mChangeController:Lcom/android/wm/shell/common/DisplayChangeController;

    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayChangeController;->mDisplayChangeListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda11;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTouchHandler:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    iput-object v0, v1, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;->mTouchEventCallback:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler$OneHandedTouchEventCallback;

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iget-object v2, v0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mTransitionCallbacks:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mTransitionCallbacks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mTransitionCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTransitionCallBack:Lcom/android/wm/shell/onehanded/OneHandedController$3;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskChangeToExit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListenerCallback:Lcom/android/wm/shell/onehanded/OneHandedController$4;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->addListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    :cond_0
    iget v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->registerSettingObservers(I)V

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda10;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    iget-object v1, v1, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->mListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->updateSettings()V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->updateDisplayLayout(I)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mAccessibilityStateChangeListener:Lcom/android/wm/shell/onehanded/OneHandedController$2;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    iget-object v0, v0, Lcom/android/wm/shell/onehanded/OneHandedState;->mStateChangeListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addConfigurationChangeListener(Lcom/android/wm/shell/sysui/ConfigurationChangeListener;)V

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addKeyguardChangeListener(Lcom/android/wm/shell/sysui/KeyguardChangeListener;)V

    iget-object v1, v0, Lcom/android/wm/shell/sysui/ShellController;->mUserChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/wm/shell/sysui/ShellController;->mUserChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda9;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    const-string v2, "extra_shell_one_handed"

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/wm/shell/sysui/ShellController;->addExternalInterface(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
