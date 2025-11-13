.class public final Lcom/android/keyguard/KeyguardBouncerContainer;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAttachStateListener:Lcom/android/keyguard/KeyguardBouncerContainer$1;

.field public mIsBackCallbackRegistered:Z

.field public final mKeyguardSysDumpTrigger:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

.field public final mOnBackInvokedCallback:Lcom/android/keyguard/KeyguardBouncerContainer$2;

.field public final mSysUIKeyEventHandler:Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/keyguard/KeyguardBouncerContainer$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardBouncerContainer$1;-><init>(Lcom/android/keyguard/KeyguardBouncerContainer;)V

    new-instance v0, Lcom/android/keyguard/KeyguardBouncerContainer$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardBouncerContainer$2;-><init>(Lcom/android/keyguard/KeyguardBouncerContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mOnBackInvokedCallback:Lcom/android/keyguard/KeyguardBouncerContainer$2;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mIsBackCallbackRegistered:Z

    iput-object p2, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mSysUIKeyEventHandler:Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mKeyguardSysDumpTrigger:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public static getBackCallbackInstanceName(Landroid/window/OnBackInvokedCallback;)Ljava/lang/String;
    .locals 2

    const-string v0, "null"

    if-eqz p0, :cond_3

    instance-of v1, p0, Landroid/window/OnBackAnimationCallback;

    if-eqz v1, :cond_0

    const-string v0, "OnBackAnimationCallback"

    :cond_0
    instance-of v1, p0, Landroid/view/ImeBackAnimationController;

    if-eqz v1, :cond_1

    const-string v0, "ImeBackAnimationController"

    :cond_1
    instance-of v1, p0, Landroid/window/ImeOnBackInvokedDispatcher;

    if-eqz v1, :cond_2

    const-string v0, "ImeOnBackInvokedDispatcher"

    :cond_2
    instance-of p0, p0, Landroid/window/CompatOnBackInvokedCallback;

    if-eqz p0, :cond_3

    const-string v0, "CompatOnBackInvokedCallback"

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final checkBackInvokedCallback(Z)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    const-string v1, "KeyguardBouncerContainer"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardBouncerContainer;->getBackCallbackInstanceName(Landroid/window/OnBackInvokedCallback;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkBackInvokedCallback isOnBackInvokedCallbackEnabled= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", instanceOf ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")= "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    instance-of p1, v2, Landroid/window/CompatOnBackInvokedCallback;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mIsBackCallbackRegistered:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardBouncerContainer;->registerBackInvokedCallback()V

    invoke-virtual {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardBouncerContainer;->getBackCallbackInstanceName(Landroid/window/OnBackInvokedCallback;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "registerBackInvokedCallback restored!! isOnBackInvokedCallbackEnabled= "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "checkBackInvokedCallback get failed"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mSysUIKeyEventHandler:Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mSysUIKeyEventHandler:Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final registerBackInvokedCallback()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerBackInvokedCallback :  registered="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mIsBackCallbackRegistered:Z

    const-string v2, "KeyguardBouncerContainer"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mIsBackCallbackRegistered:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mOnBackInvokedCallback:Lcom/android/keyguard/KeyguardBouncerContainer$2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mIsBackCallbackRegistered:Z

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "view root was null, could not register back callback"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "prevented registering back callback twice"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
