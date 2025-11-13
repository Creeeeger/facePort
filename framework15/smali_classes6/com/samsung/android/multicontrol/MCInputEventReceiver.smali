.class public Lcom/samsung/android/multicontrol/MCInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "MCInputEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;
    }
.end annotation


# instance fields
.field private final blacklist ACTION_TRIGGERED:Ljava/lang/String;

.field private final blacklist DEFAULT_TRIGGER_THRESHOLD:I

.field private final blacklist EXTRA_TRIGGER_DIRECTION:Ljava/lang/String;

.field private final blacklist EXTRA_TRIGGER_DISPLAY_ID:Ljava/lang/String;

.field private final blacklist EXTRA_TRIGGER_X:Ljava/lang/String;

.field private final blacklist EXTRA_TRIGGER_Y:Ljava/lang/String;

.field private final blacklist RECEIVER_PERMISSION:Ljava/lang/String;

.field private final blacklist TAG:Ljava/lang/String;

.field public final blacklist TAG_PREFIX:Ljava/lang/String;

.field private blacklist countX:F

.field private blacklist countY:F

.field private blacklist directionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist firstInput:Z

.field blacklist mContext:Landroid/content/Context;

.field private blacklist mDisplayId:I

.field blacklist mInputMonitor:Landroid/view/InputMonitor;

.field private blacklist mWindowManager:Landroid/view/WindowManager;

.field private blacklist triggerThreshold:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/view/InputMonitor;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0, p4, p5}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    const-string v0, "MultiControl@"

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->TAG_PREFIX:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->TAG:Ljava/lang/String;

    const-string v0, "com.samsung.android.inputshare.action.ACTION_TRIGGERED"

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->ACTION_TRIGGERED:Ljava/lang/String;

    const-string v0, "x"

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->EXTRA_TRIGGER_X:Ljava/lang/String;

    const-string v0, "y"

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->EXTRA_TRIGGER_Y:Ljava/lang/String;

    const-string v0, "displayId"

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->EXTRA_TRIGGER_DISPLAY_ID:Ljava/lang/String;

    const-string v0, "direction"

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->EXTRA_TRIGGER_DIRECTION:Ljava/lang/String;

    const-string v0, "com.samsung.android.permission.MULTI_CONTROL_RECEIVER_PERMISSION"

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->RECEIVER_PERMISSION:Ljava/lang/String;

    const/16 v0, 0x96

    iput v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->DEFAULT_TRIGGER_THRESHOLD:I

    iput v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->triggerThreshold:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->mDisplayId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->directionList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->countX:F

    iput v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->countY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->firstInput:Z

    iput-object p1, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->mInputMonitor:Landroid/view/InputMonitor;

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->directionList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;->RIGHT:Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->directionList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;->LEFT:Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->directionList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;->TOP:Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->directionList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;->BOTTOM:Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput p2, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->mDisplayId:I

    return-void
.end method

.method private blacklist handleInput(Landroid/view/MotionEvent;)V
    .locals 10

    const-string v0, "sendBroadcast - ACTION_TRIGGERED"

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/16 v3, 0x1b

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    const/16 v4, 0x1c

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->directionList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;

    invoke-direct {p0, v1, v2, v6}, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->isValidMove(FFLcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0, v3, v4, v6}, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->isValidTrigger(FFLcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;)Z

    move-result v5

    if-eqz v5, :cond_0

    iput v7, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->countX:F

    iput v7, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->countY:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.samsung.android.inputshare.action.ACTION_TRIGGERED"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "displayId"

    iget v8, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->mDisplayId:I

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "direction"

    invoke-virtual {v6}, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "y"

    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v7, "x"

    invoke-virtual {v5, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v7, "com.samsung.android.inputshare"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    const-string v9, "com.samsung.android.permission.MULTI_CONTROL_RECEIVER_PERMISSION"

    invoke-virtual {v7, v5, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_2
    iget-object v7, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->TAG:Ljava/lang/String;

    invoke-static {v7, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    goto :goto_0

    :cond_2
    iput v7, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->countX:F

    iput v7, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->countY:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->TAG:Ljava/lang/String;

    const-string v2, "[handleInput]"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private blacklist isValidMove(FFLcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p3}, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    return v2

    :pswitch_1
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    return v2

    :pswitch_2
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    return v2

    :pswitch_3
    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    return v2

    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist isValidTrigger(FFLcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;)Z
    .locals 3

    invoke-virtual {p3}, Lcom/samsung/android/multicontrol/MCInputEventReceiver$Direction;->ordinal()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    cmpl-float v0, p2, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->countY:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->countY:F

    goto :goto_0

    :pswitch_1
    cmpg-float v0, p2, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->countY:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->countY:F

    goto :goto_0

    :pswitch_2
    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->countX:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->countX:F

    goto :goto_0

    :pswitch_3
    cmpl-float v0, p1, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->countX:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->countX:F

    :cond_0
    :goto_0
    iget v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->countX:F

    iget v1, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->triggerThreshold:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->countY:F

    iget v1, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->triggerThreshold:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist onInputEvent(Landroid/view/InputEvent;)V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->firstInput:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onInputEvent] displayRect : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->firstInput:Z

    :cond_0
    const-class v0, Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-direct {p0, v0}, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->handleInput(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method

.method public blacklist setTriggerThreshold(I)V
    .locals 3

    :try_start_0
    iput p1, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->triggerThreshold:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->TAG:Ljava/lang/String;

    const-string v2, "[setTriggerThreshold]"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
