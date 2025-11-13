.class public Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;
.super Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;
.source "AccessibilityService.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IAccessibilityServiceClientWrapper"
.end annotation


# static fields
.field private static final greylist-max-o DO_ACCESSIBILITY_BUTTON_AVAILABILITY_CHANGED:I = 0xd

.field private static final greylist-max-o DO_ACCESSIBILITY_BUTTON_CLICKED:I = 0xc

.field private static final greylist-max-o DO_CLEAR_ACCESSIBILITY_CACHE:I = 0x5

.field private static final blacklist DO_CREATE_IME_SESSION:I = 0xf

.field private static final greylist-max-o DO_GESTURE_COMPLETE:I = 0x9

.field private static final greylist-max-o DO_INIT:I = 0x1

.field private static final greylist-max-o DO_ON_ACCESSIBILITY_EVENT:I = 0x3

.field private static final greylist-max-o DO_ON_FINGERPRINT_ACTIVE_CHANGED:I = 0xa

.field private static final greylist-max-o DO_ON_FINGERPRINT_GESTURE:I = 0xb

.field private static final greylist-max-o DO_ON_GESTURE:I = 0x4

.field private static final greylist-max-o DO_ON_INTERRUPT:I = 0x2

.field private static final greylist-max-o DO_ON_KEY_EVENT:I = 0x6

.field private static final greylist-max-o DO_ON_MAGNIFICATION_CHANGED:I = 0x7

.field private static final greylist-max-o DO_ON_SOFT_KEYBOARD_SHOW_MODE_CHANGED:I = 0x8

.field private static final blacklist DO_ON_SYSTEM_ACTIONS_CHANGED:I = 0xe

.field private static final blacklist DO_SET_IME_SESSION_ENABLED:I = 0x10

.field private static final blacklist DO_START_INPUT:I = 0x13


# instance fields
.field private final greylist-max-o mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

.field private final greylist-max-o mCaller:Lcom/android/internal/os/HandlerCaller;

.field blacklist mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

.field private greylist-max-o mConnectionId:I

.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/accessibilityservice/AccessibilityService$Callbacks;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Landroid/accessibilityservice/AccessibilityService$Callbacks;

    .line 2802
    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;-><init>()V

    .line 2784
    const/4 v0, -0x1

    iput v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    .line 2798
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 2803
    iput-object p3, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    .line 2804
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    .line 2805
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2806
    return-void
.end method


# virtual methods
.method public blacklist bindInput()V
    .locals 2

    .line 2922
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    if-eqz v0, :cond_0

    .line 2923
    const-string v0, "AccessibilityService"

    const-string v1, "bindInput must be paired with unbindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    :cond_0
    new-instance v0, Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/CancellationGroup;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 2926
    return-void
.end method

.method public greylist-max-o clearAccessibilityCache()V
    .locals 2

    .line 2833
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2834
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2835
    return-void
.end method

.method public blacklist createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;

    .line 2896
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2897
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2898
    return-void
.end method

.method public greylist-max-o executeMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .line 2969
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "AccessibilityService"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    packed-switch v0, :pswitch_data_0

    .line 3151
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3153
    return-void

    .line 3134
    :pswitch_1
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_2

    .line 3135
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3136
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 3138
    .local v2, "connection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/view/inputmethod/EditorInfo;

    .line 3139
    .local v5, "info":Landroid/view/inputmethod/EditorInfo;
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/inputmethod/CancellationGroup;

    .line 3140
    .local v6, "cancellationGroup":Lcom/android/internal/inputmethod/CancellationGroup;
    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi5:I

    if-ne v7, v4, :cond_0

    move v3, v4

    .line 3141
    .local v3, "restarting":Z
    :cond_0
    if-nez v2, :cond_1

    goto :goto_0

    .line 3142
    :cond_1
    new-instance v1, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    invoke-direct {v1, v2, v6}, Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;-><init>(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Lcom/android/internal/inputmethod/CancellationGroup;)V

    :goto_0
    nop

    .line 3144
    .local v1, "ic":Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;
    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v5, v4}, Landroid/view/inputmethod/EditorInfo;->makeCompatible(I)V

    .line 3145
    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v4, v1, v5, v3}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->startInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 3146
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3148
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "ic":Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;
    .end local v2    # "connection":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .end local v3    # "restarting":Z
    .end local v5    # "info":Landroid/view/inputmethod/EditorInfo;
    .end local v6    # "cancellationGroup":Lcom/android/internal/inputmethod/CancellationGroup;
    :cond_2
    return-void

    .line 3126
    :pswitch_2
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_4

    .line 3127
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/accessibilityservice/AccessibilityInputMethodSession;

    .line 3129
    .local v0, "session":Landroid/accessibilityservice/AccessibilityInputMethodSession;
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_3

    move v3, v4

    :cond_3
    invoke-interface {v0, v3}, Landroid/accessibilityservice/AccessibilityInputMethodSession;->setEnabled(Z)V

    .line 3131
    .end local v0    # "session":Landroid/accessibilityservice/AccessibilityInputMethodSession;
    :cond_4
    return-void

    .line 3118
    :pswitch_3
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_5

    .line 3119
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;

    .line 3121
    .local v0, "callback":Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v1, v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V

    .line 3123
    .end local v0    # "callback":Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;
    :cond_5
    return-void

    .line 3112
    :pswitch_4
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_6

    .line 3113
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onSystemActionsChanged()V

    .line 3115
    :cond_6
    return-void

    .line 3105
    :pswitch_5
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_8

    .line 3106
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_7

    move v3, v4

    :cond_7
    move v0, v3

    .line 3107
    .local v0, "available":Z
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v1, v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onAccessibilityButtonAvailabilityChanged(Z)V

    .line 3109
    .end local v0    # "available":Z
    :cond_8
    return-void

    .line 3099
    :pswitch_6
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_9

    .line 3100
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onAccessibilityButtonClicked(I)V

    .line 3102
    :cond_9
    return-void

    .line 3093
    :pswitch_7
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_a

    .line 3094
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onFingerprintGesture(I)V

    .line 3096
    :cond_a
    return-void

    .line 3087
    :pswitch_8
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_c

    .line 3088
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_b

    move v3, v4

    :cond_b
    invoke-interface {v0, v3}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onFingerprintCapturingGesturesChanged(Z)V

    .line 3090
    :cond_c
    return-void

    .line 3080
    :pswitch_9
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_e

    .line 3081
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v4, :cond_d

    move v3, v4

    :cond_d
    move v0, v3

    .line 3082
    .local v0, "successfully":Z
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2, v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onPerformGestureResult(IZ)V

    .line 3084
    .end local v0    # "successfully":Z
    :cond_e
    return-void

    .line 3073
    :pswitch_a
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_f

    .line 3074
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3075
    .local v0, "showMode":I
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v1, v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onSoftKeyboardShowModeChanged(I)V

    .line 3077
    .end local v0    # "showMode":I
    :cond_f
    return-void

    .line 3062
    :pswitch_b
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_10

    .line 3063
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3064
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Region;

    .line 3065
    .local v1, "region":Landroid/graphics/Region;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/accessibilityservice/MagnificationConfig;

    .line 3066
    .local v2, "config":Landroid/accessibilityservice/MagnificationConfig;
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3067
    .local v3, "displayId":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3068
    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v4, v3, v1, v2}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 3070
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "region":Landroid/graphics/Region;
    .end local v2    # "config":Landroid/accessibilityservice/MagnificationConfig;
    .end local v3    # "displayId":I
    :cond_10
    return-void

    .line 3038
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 3040
    .local v0, "event":Landroid/view/KeyEvent;
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    .line 3041
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    .line 3042
    .local v1, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v1, :cond_11

    .line 3043
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v2, v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 3044
    .local v2, "result":Z
    iget v3, p1, Landroid/os/Message;->arg1:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3046
    .local v3, "sequence":I
    :try_start_1
    invoke-interface {v1, v2, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setOnKeyEventResult(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3049
    goto :goto_1

    .line 3047
    :catch_0
    move-exception v4

    .line 3054
    .end local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v2    # "result":Z
    .end local v3    # "sequence":I
    :cond_11
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3057
    goto :goto_2

    .line 3055
    :catch_1
    move-exception v1

    .line 3058
    nop

    .line 3059
    :goto_2
    return-void

    .line 3053
    :catchall_0
    move-exception v1

    .line 3054
    :try_start_3
    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 3057
    goto :goto_3

    .line 3055
    :catch_2
    move-exception v2

    .line 3058
    :goto_3
    throw v1

    .line 3034
    .end local v0    # "event":Landroid/view/KeyEvent;
    :pswitch_d
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache(I)V

    .line 3035
    return-void

    .line 3028
    :pswitch_e
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_12

    .line 3029
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/accessibilityservice/AccessibilityGestureEvent;

    invoke-interface {v0, v1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z

    .line 3031
    :cond_12
    return-void

    .line 2971
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 2972
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_13

    move v3, v4

    :cond_13
    move v1, v3

    .line 2973
    .local v1, "serviceWantsEvent":Z
    if-eqz v0, :cond_15

    .line 2975
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iget v3, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-virtual {v2, v0, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 2977
    if-eqz v1, :cond_14

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v2, v5, :cond_14

    .line 2980
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v2, v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2984
    :cond_14
    :try_start_4
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2987
    goto :goto_4

    .line 2985
    :catch_3
    move-exception v2

    .line 2989
    :cond_15
    :goto_4
    return-void

    .line 2992
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "serviceWantsEvent":Z
    :pswitch_10
    iget v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    if-eq v0, v5, :cond_16

    .line 2993
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v0}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onInterrupt()V

    .line 2995
    :cond_16
    return-void

    .line 2998
    :pswitch_11
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    .line 2999
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3000
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .line 3002
    .local v3, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    .line 3003
    .local v6, "windowToken":Landroid/os/IBinder;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3004
    if-eqz v3, :cond_18

    .line 3005
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-static {v1, v3, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;Z)V

    .line 3007
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_17

    .line 3009
    :try_start_5
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setAttributionTag(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 3013
    goto :goto_5

    .line 3010
    :catch_4
    move-exception v1

    .line 3011
    .local v1, "re":Landroid/os/RemoteException;
    const-string v4, "Error while setting attributionTag"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3012
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3015
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_17
    :goto_5
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-interface {v1, v2, v6}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->init(ILandroid/os/IBinder;)V

    .line 3016
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onServiceConnected()V

    goto :goto_6

    .line 3018
    :cond_18
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iget v4, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    .line 3019
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache(I)V

    .line 3020
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->removeConnection(I)V

    .line 3022
    iput v5, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    .line 3023
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v2, v5, v1}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->init(ILandroid/os/IBinder;)V

    .line 3025
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public greylist-max-o init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    .locals 2
    .param p1, "connection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .param p2, "connectionId"    # I
    .param p3, "windowToken"    # Landroid/os/IBinder;

    .line 2810
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p1, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2812
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2813
    return-void
.end method

.method public greylist-max-o onAccessibilityButtonAvailabilityChanged(Z)V
    .locals 2
    .param p1, "available"    # Z

    .line 2884
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2885
    nop

    .line 2884
    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 2886
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2887
    return-void
.end method

.method public blacklist onAccessibilityButtonClicked(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 2878
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 2880
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2881
    return-void
.end method

.method public greylist-max-o onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "serviceWantsEvent"    # Z

    .line 2821
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageBO(IZLjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2823
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2824
    return-void
.end method

.method public greylist-max-o onFingerprintCapturingGesturesChanged(Z)V
    .locals 2
    .param p1, "active"    # Z

    .line 2868
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2869
    nop

    .line 2868
    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2870
    return-void
.end method

.method public greylist-max-o onFingerprintGesture(I)V
    .locals 2
    .param p1, "gesture"    # I

    .line 2873
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2874
    return-void
.end method

.method public blacklist onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .locals 2
    .param p1, "gestureInfo"    # Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 2828
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2829
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2830
    return-void
.end method

.method public greylist-max-o onInterrupt()V
    .locals 2

    .line 2816
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2817
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2818
    return-void
.end method

.method public greylist-max-o onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "sequence"    # I

    .line 2839
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2840
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2841
    return-void
.end method

.method public blacklist onMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "config"    # Landroid/accessibilityservice/MagnificationConfig;

    .line 2846
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2847
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2848
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2849
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2851
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2852
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2853
    return-void
.end method

.method public blacklist onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2954
    new-instance v0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda0;-><init>()V

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2956
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2957
    return-void
.end method

.method public greylist-max-o onPerformGestureResult(IZ)V
    .locals 2
    .param p1, "sequence"    # I
    .param p2, "successfully"    # Z

    .line 2862
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2863
    nop

    .line 2862
    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    .line 2864
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2865
    return-void
.end method

.method public greylist-max-o onSoftKeyboardShowModeChanged(I)V
    .locals 2
    .param p1, "showMode"    # I

    .line 2856
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2857
    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 2858
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2859
    return-void
.end method

.method public blacklist onSystemActionsChanged()V
    .locals 2

    .line 2891
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2892
    return-void
.end method

.method public blacklist onTouchStateChanged(II)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "state"    # I

    .line 2961
    new-instance v0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper$$ExternalSyntheticLambda1;-><init>()V

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    .line 2963
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2961
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2964
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2965
    return-void
.end method

.method public blacklist setImeSessionEnabled(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Z)V
    .locals 5
    .param p1, "session"    # Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
    .param p2, "enabled"    # Z

    .line 2907
    const-string v0, "AccessibilityService"

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;

    .line 2908
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->getSession()Landroid/accessibilityservice/AccessibilityInputMethodSession;

    move-result-object v1

    .line 2909
    .local v1, "ls":Landroid/accessibilityservice/AccessibilityInputMethodSession;
    if-nez v1, :cond_0

    .line 2910
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session is already finished: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    return-void

    .line 2913
    :cond_0
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x10

    .line 2914
    if-eqz p2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 2913
    :goto_0
    invoke-virtual {v2, v3, v4, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2917
    .end local v1    # "ls":Landroid/accessibilityservice/AccessibilityInputMethodSession;
    goto :goto_1

    .line 2915
    :catch_0
    move-exception v1

    .line 2916
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incoming session not of correct type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2918
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :goto_1
    return-void
.end method

.method public blacklist startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 9
    .param p1, "connection"    # Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "restarting"    # Z

    .line 2942
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    if-nez v0, :cond_0

    .line 2943
    const-string v0, "AccessibilityService"

    const-string/jumbo v1, "startInput must be called after bindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    new-instance v0, Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/CancellationGroup;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 2946
    :cond_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x13

    const/4 v3, 0x0

    iget-object v6, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 2947
    const/4 v8, 0x0

    .line 2946
    move-object v4, p1

    move-object v5, p2

    move v7, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOOOII(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Landroid/os/Message;

    move-result-object v0

    .line 2949
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 2950
    return-void
.end method

.method public blacklist unbindInput()V
    .locals 2

    .line 2930
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    if-eqz v0, :cond_0

    .line 2932
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->cancelAll()V

    .line 2933
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    goto :goto_0

    .line 2935
    :cond_0
    const-string v0, "AccessibilityService"

    const-string/jumbo v1, "unbindInput must be paired with bindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2937
    :goto_0
    return-void
.end method
