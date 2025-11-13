.class final Landroid/service/voice/VoiceInteractionWindow;
.super Landroid/app/Dialog;
.source "VoiceInteractionWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/VoiceInteractionWindow$WindowState;,
        Landroid/service/voice/VoiceInteractionWindow$Callback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "VoiceInteractionWindow"


# instance fields
.field private final blacklist mBounds:Landroid/graphics/Rect;

.field private final blacklist mCallback:Landroid/service/voice/VoiceInteractionWindow$Callback;

.field private final blacklist mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field private final blacklist mGravity:I

.field private final blacklist mKeyEventCallback:Landroid/view/KeyEvent$Callback;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mTakesFocus:Z

.field private blacklist mWindowState:I

.field private final blacklist mWindowType:I


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/service/voice/VoiceInteractionWindow$Callback;Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;IIZ)V
    .locals 1

    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mWindowState:I

    iput-object p2, p0, Landroid/service/voice/VoiceInteractionWindow;->mName:Ljava/lang/String;

    iput-object p4, p0, Landroid/service/voice/VoiceInteractionWindow;->mCallback:Landroid/service/voice/VoiceInteractionWindow$Callback;

    iput-object p5, p0, Landroid/service/voice/VoiceInteractionWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    iput-object p6, p0, Landroid/service/voice/VoiceInteractionWindow;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    iput p7, p0, Landroid/service/voice/VoiceInteractionWindow;->mWindowType:I

    iput p8, p0, Landroid/service/voice/VoiceInteractionWindow;->mGravity:I

    iput-boolean p9, p0, Landroid/service/voice/VoiceInteractionWindow;->mTakesFocus:Z

    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionWindow;->initDockWindow()V

    return-void
.end method

.method private blacklist initDockWindow()V
    .locals 4

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/VoiceInteractionWindow;->mWindowType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionWindow;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v1, p0, Landroid/service/voice/VoiceInteractionWindow;->mGravity:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-direct {p0, v0}, Landroid/service/voice/VoiceInteractionWindow;->updateWidthHeight(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v1, 0x100

    const/16 v2, 0x10a

    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionWindow;->mTakesFocus:Z

    if-nez v3, :cond_0

    or-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_0
    or-int/lit8 v1, v1, 0x20

    or-int/lit8 v2, v2, 0x20

    :goto_0
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method private static blacklist stateToString(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "DESTROYED"

    return-object v0

    :pswitch_1
    const-string v0, "REJECTED_AT_LEAST_ONCE"

    return-object v0

    :pswitch_2
    const-string v0, "SHOWN_AT_LEAST_ONCE"

    return-object v0

    :pswitch_3
    const-string v0, "TOKEN_SET"

    return-object v0

    :pswitch_4
    const-string v0, "TOKEN_PENDING"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist updateWidthHeight(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x30

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x50

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    :cond_1
    :goto_0
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_1
    return-void
.end method

.method private blacklist updateWindowState(I)V
    .locals 0

    iput p1, p0, Landroid/service/voice/VoiceInteractionWindow;->mWindowState:I

    return-void
.end method


# virtual methods
.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/MotionEvent;->isWithinBoundsNoHistory(FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionWindow;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/MotionEvent;->clampNoHistory(FFFF)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return v1
.end method

.method public whitelist onBackPressed()V
    .locals 1

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mCallback:Landroid/service/voice/VoiceInteractionWindow$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mCallback:Landroid/service/voice/VoiceInteractionWindow$Callback;

    invoke-interface {v0}, Landroid/service/voice/VoiceInteractionWindow$Callback;->onBackPressed()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/KeyEvent$Callback;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Dialog;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v0}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    return-void
.end method

.method blacklist setToken(Landroid/os/IBinder;)V
    .locals 3

    iget v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mWindowState:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/voice/VoiceInteractionWindow;->mWindowState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "VoiceInteractionWindow"

    const-string v1, "Ignoring setToken() because window is already destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setToken can be called only once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/service/voice/VoiceInteractionWindow;->updateWindowState(I)V

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionWindow;->show()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist show()V
    .locals 3

    iget v0, p0, Landroid/service/voice/VoiceInteractionWindow;->mWindowState:I

    const-string v1, "VoiceInteractionWindow"

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/voice/VoiceInteractionWindow;->mWindowState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "Ignoring show() because the window is already destroyed."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const-string v0, "Not trying to call show() because it was already rejected once."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_2
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/service/voice/VoiceInteractionWindow;->updateWindowState(I)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Probably the IME window token is already invalidated. show() does nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroid/service/voice/VoiceInteractionWindow;->updateWindowState(I)V

    :goto_0
    return-void

    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Window token is not set yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
