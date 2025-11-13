.class final Landroid/inputmethodservice/SoftInputWindow;
.super Landroid/app/Dialog;
.source "SoftInputWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/SoftInputWindow$WindowState;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "SoftInputWindow"


# instance fields
.field private final greylist-max-o mBounds:Landroid/graphics/Rect;

.field private final greylist-max-o mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field blacklist mImm:Landroid/view/inputmethod/InputMethodManager;

.field private blacklist mMinimizeFlag:Z

.field private final blacklist mService:Landroid/content/Context;

.field private blacklist mWindowState:I


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;ILandroid/view/KeyEvent$DispatcherState;)V
    .locals 1
    .param p1, "service"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "dispatcherState"    # Landroid/view/KeyEvent$DispatcherState;

    .line 159
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mWindowState:I

    .line 94
    iput-boolean v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mMinimizeFlag:Z

    .line 160
    iput-object p1, p0, Landroid/inputmethodservice/SoftInputWindow;->mService:Landroid/content/Context;

    .line 161
    iput-object p3, p0, Landroid/inputmethodservice/SoftInputWindow;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    .line 164
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 165
    return-void
.end method

.method private static blacklist stateToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    .line 295
    packed-switch p0, :pswitch_data_0

    .line 307
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

    .line 305
    :pswitch_0
    const-string v0, "DESTROYED"

    return-object v0

    .line 303
    :pswitch_1
    const-string v0, "REJECTED_AT_LEAST_ONCE"

    return-object v0

    .line 301
    :pswitch_2
    const-string v0, "SHOWN_AT_LEAST_ONCE"

    return-object v0

    .line 299
    :pswitch_3
    const-string v0, "TOKEN_SET"

    return-object v0

    .line 297
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

.method private blacklist updateWindowState(I)V
    .locals 0
    .param p1, "newState"    # I

    .line 291
    iput p1, p0, Landroid/inputmethodservice/SoftInputWindow;->mWindowState:I

    .line 292
    return-void
.end method


# virtual methods
.method blacklist dismissForDestroyIfNecessary()V
    .locals 4

    .line 243
    iget v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mWindowState:I

    const-string v1, "SoftInputWindow"

    const/4 v2, 0x4

    packed-switch v0, :pswitch_data_0

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/SoftInputWindow;->mWindowState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dismissForDestroyIfNecessary can be called only once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :pswitch_1
    const-string v0, "Not trying to dismiss the window because it is most likely unnecessary."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-direct {p0, v2}, Landroid/inputmethodservice/SoftInputWindow;->updateWindowState(I)V

    .line 275
    return-void

    .line 254
    :pswitch_2
    :try_start_0
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 255
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->dismiss()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v3, "Probably the IME window token is already invalidated. No need to dismiss it."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v0    # "e":Landroid/view/WindowManager$BadTokenException;
    :goto_0
    invoke-direct {p0, v2}, Landroid/inputmethodservice/SoftInputWindow;->updateWindowState(I)V

    .line 268
    return-void

    .line 247
    :pswitch_3
    invoke-direct {p0, v2}, Landroid/inputmethodservice/SoftInputWindow;->updateWindowState(I)V

    .line 248
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 176
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 180
    iget-boolean v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mMinimizeFlag:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mMinimizeFlag:Z

    .line 182
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->undoMinimizeSoftInput()V

    .line 183
    return v1

    .line 187
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v2, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iget-object v4, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/view/MotionEvent;->isWithinBoundsNoHistory(FFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 191
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v2, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iget-object v4, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    int-to-float v1, v4

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/view/MotionEvent;->clampNoHistory(FFFF)Landroid/view/MotionEvent;

    move-result-object v0

    .line 193
    .local v0, "temp":Landroid/view/MotionEvent;
    invoke-super {p0, v0}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 194
    .local v1, "handled":Z
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 195
    return v1
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 312
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 313
    .local v0, "token":J
    iget-object v2, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 314
    iget v2, p0, Landroid/inputmethodservice/SoftInputWindow;->mWindowState:I

    const-wide v3, 0x10500000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 315
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 316
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .line 170
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 171
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v0}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    .line 172
    return-void
.end method

.method public blacklist setMinimizeFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 324
    iput-boolean p1, p0, Landroid/inputmethodservice/SoftInputWindow;->mMinimizeFlag:Z

    .line 325
    return-void
.end method

.method greylist-max-o setToken(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 105
    iget v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mWindowState:I

    packed-switch v0, :pswitch_data_0

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/SoftInputWindow;->mWindowState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :pswitch_0
    const-string v0, "SoftInputWindow"

    const-string v1, "Ignoring setToken() because window is already destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void

    .line 123
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setToken can be called only once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :pswitch_2
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 109
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 110
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 111
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/inputmethodservice/SoftInputWindow;->updateWindowState(I)V

    .line 117
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 118
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->show()V

    .line 119
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
    .locals 4

    .line 201
    iget v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mWindowState:I

    const-string v1, "SoftInputWindow"

    packed-switch v0, :pswitch_data_0

    .line 238
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/SoftInputWindow;->mWindowState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :pswitch_0
    const-string v0, "Ignoring show() because the window is already destroyed."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void

    .line 231
    :pswitch_1
    const-string v0, "Not trying to call show() because it was already rejected once."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void

    .line 208
    :pswitch_2
    const/4 v0, 0x3

    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 209
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/inputmethodservice/SoftInputWindow;->updateWindowState(I)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v2

    .line 223
    .local v2, "e":Landroid/view/WindowManager$InvalidDisplayException;
    const-string v3, "Probably the specified display can not be found. show() does nothing."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-direct {p0, v0}, Landroid/inputmethodservice/SoftInputWindow;->updateWindowState(I)V

    goto :goto_1

    .line 210
    .end local v2    # "e":Landroid/view/WindowManager$InvalidDisplayException;
    :catch_1
    move-exception v2

    .line 217
    .local v2, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v3, "Probably the IME window token is already invalidated. show() does nothing."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-direct {p0, v0}, Landroid/inputmethodservice/SoftInputWindow;->updateWindowState(I)V

    .line 226
    .end local v2    # "e":Landroid/view/WindowManager$BadTokenException;
    :goto_0
    nop

    .line 228
    :goto_1
    return-void

    .line 203
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Window token is not set yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
