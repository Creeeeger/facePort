.class public final Lcom/android/systemui/statusbar/CommandQueue$H;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/CommandQueue;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/CommandQueue$H;-><init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 18

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const/high16 v2, -0x10000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v4, p0

    iget-object v4, v4, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_69

    :sswitch_0
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move v1, v2

    :goto_0
    iget-object v5, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_24

    iget-object v5, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-eqz v6, :cond_0

    move v6, v3

    goto :goto_1

    :cond_0
    move v6, v2

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v7, :cond_1

    move v7, v3

    goto :goto_2

    :cond_1
    move v7, v2

    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->startSearcleByHomeKey(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_3
    :sswitch_1
    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_24

    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/KeyEvent;

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :sswitch_2
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :goto_4
    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    invoke-interface {v1, v3, v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->notifySamsungPayInfo(IZLandroid/graphics/Rect;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_69

    :sswitch_3
    move v1, v2

    :goto_5
    iget-object v5, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_24

    iget-object v5, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v6, v0, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_3

    move v6, v3

    goto :goto_6

    :cond_3
    move v6, v2

    :goto_6
    iget v7, v0, Landroid/os/Message;->arg2:I

    if-eqz v7, :cond_4

    move v7, v3

    goto :goto_7

    :cond_4
    move v7, v2

    :goto_7
    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->notifyRequestedSystemKey(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :goto_8
    :sswitch_4
    iget-object v0, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_24

    iget-object v0, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->resetScheduleAutoHide()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :goto_9
    :sswitch_5
    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_24

    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->notifyRequestedGameToolsWin(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :sswitch_6
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :goto_a
    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Landroid/widget/RemoteViews;

    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-interface {v1, v3, v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_69

    :goto_b
    :sswitch_7
    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_24

    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onFlashlightKeyPressed(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :goto_c
    :sswitch_8
    iget-object v0, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_24

    iget-object v0, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :goto_d
    :sswitch_9
    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_24

    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/KeyEvent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :goto_e
    :sswitch_a
    iget-object v0, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_24

    iget-object v0, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleQuickSettingsPanel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :goto_f
    :sswitch_b
    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_24

    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setSplitscreenFocus(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :sswitch_c
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    :goto_10
    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_24

    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->moveFocusedTaskToDesktop(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :goto_11
    :sswitch_d
    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_24

    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setQsTiles([Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :sswitch_e
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v0, :cond_6

    goto :goto_12

    :cond_6
    move v3, v2

    :goto_12
    iget-object v0, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_24

    iget-object v0, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v0, v1, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->immersiveModeChanged(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :goto_13
    :sswitch_f
    iget-object v0, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_24

    iget-object v0, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->confirmImmersivePrompt()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :goto_14
    :sswitch_10
    iget-object v0, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_24

    iget-object v0, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleTaskbar()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :sswitch_11
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/os/UserHandle;

    :goto_15
    iget-object v3, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    iget-object v3, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v3, v1, v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showMediaOutputSwitcher(Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :sswitch_12
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v0, :cond_7

    goto :goto_16

    :cond_7
    move v3, v2

    :goto_16
    iget-object v0, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_24

    iget-object v0, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v0, v1, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->moveFocusedTaskToStageSplit(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :sswitch_13
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    :goto_17
    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_24

    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->moveFocusedTaskToFullscreen(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :goto_18
    :sswitch_14
    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_24

    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showRearDisplayDialog(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :sswitch_15
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    :goto_19
    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_24

    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->requestTileServiceListeningState(Landroid/content/ComponentName;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :sswitch_16
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/INearbyMediaDevicesProvider;

    :goto_1a
    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_24

    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :sswitch_17
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/INearbyMediaDevicesProvider;

    :goto_1b
    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_24

    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :sswitch_18
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/media/MediaRoute2Info;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/drawable/Icon;

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v6, Ljava/lang/CharSequence;

    :goto_1c
    iget-object v7, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_8

    iget-object v7, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v7, v1, v3, v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_69

    :sswitch_19
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/media/MediaRoute2Info;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    :goto_1d
    iget-object v6, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_9

    iget-object v6, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v6, v1, v3, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_69

    :goto_1e
    :sswitch_1a
    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_24

    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/biometrics/IBiometricContextListener;

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setBiometricContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :sswitch_1b
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :goto_1f
    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_24

    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->cancelRequestAddTile(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :sswitch_1c
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v12, v5

    check-cast v12, Ljava/lang/CharSequence;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v13, v5

    check-cast v13, Landroid/graphics/drawable/Icon;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    move-object v14, v5

    check-cast v14, Lcom/android/internal/statusbar/IAddTileResultCallback;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    :goto_20
    iget-object v5, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_a

    iget-object v5, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move v6, v15

    move-object v7, v1

    move-object v8, v3

    move-object v9, v12

    move-object v10, v13

    move-object v11, v14

    invoke-interface/range {v5 .. v11}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->requestAddTile(ILandroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Lcom/android/internal/statusbar/IAddTileResultCallback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_a
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_69

    :goto_21
    :sswitch_1d
    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_24

    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :sswitch_1e
    move v1, v2

    :goto_22
    iget-object v5, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_24

    iget-object v5, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v6, v0, Landroid/os/Message;->arg1:I

    iget v7, v0, Landroid/os/Message;->arg2:I

    if-eqz v7, :cond_b

    move v7, v3

    goto :goto_23

    :cond_b
    move v7, v2

    :goto_23
    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setNavigationBarLumaSamplingEnabled(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :goto_24
    :sswitch_1f
    iget-object v0, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_24

    iget-object v0, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onEmergencyActionLaunchGestureDetected()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :goto_25
    :sswitch_20
    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_24

    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->requestMagnificationConnection(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :sswitch_21
    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->suppressAmbientDisplay(Z)V

    goto :goto_26

    :goto_27
    :sswitch_22
    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_24

    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :sswitch_23
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget-object v2, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v3, v1, v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideToast(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_28

    :sswitch_24
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v14, v5

    check-cast v14, Landroid/os/IBinder;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    move-object v15, v5

    check-cast v15, Landroid/app/ITransientNotificationCallback;

    iget v13, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v12, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object v4, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move v6, v13

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v14

    move v11, v12

    move/from16 v16, v12

    move-object v12, v15

    move/from16 v17, v13

    move v13, v0

    invoke-interface/range {v5 .. v13}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V

    move/from16 v12, v16

    move/from16 v13, v17

    goto :goto_29

    :goto_2a
    :sswitch_25
    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_24

    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->dismissInattentiveSleepWarning(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :goto_2b
    :sswitch_26
    iget-object v0, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_24

    iget-object v0, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showInattentiveSleepWarning()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :sswitch_27
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :goto_2c
    iget-object v0, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_24

    iget-object v0, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v0, v1, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->abortTransient(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :sswitch_28
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-eqz v6, :cond_c

    goto :goto_2d

    :cond_c
    move v3, v2

    :goto_2d
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :goto_2e
    iget-object v0, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_24

    iget-object v0, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v0, v1, v5, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showTransient(IIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :sswitch_29
    move v1, v2

    :goto_2f
    iget-object v5, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_24

    iget-object v5, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v6, v0, Landroid/os/Message;->arg1:I

    if-lez v6, :cond_d

    move v6, v3

    goto :goto_30

    :cond_d
    move v6, v2

    :goto_30
    invoke-interface {v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onRecentsAnimationStateChanged(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :goto_31
    :sswitch_2a
    iget-object v0, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_24

    iget-object v0, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showPinningEscapeToast()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :goto_32
    :sswitch_2b
    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_24

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showPinningEnterExitToast(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :goto_33
    :sswitch_2c
    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_24

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showWirelessChargingAnimation(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :sswitch_2d
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :goto_34
    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_e

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-wide v5, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    invoke-interface {v1, v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideAuthenticationDialog(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_e
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_69

    :sswitch_2e
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :goto_35
    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_f

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-interface {v1, v3, v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onBiometricError(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_f
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_69

    :sswitch_2f
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :goto_36
    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_10

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v3, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onBiometricHelp(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_10
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_69

    :sswitch_30
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :goto_37
    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_11

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onBiometricAuthenticated(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_11
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_69

    :sswitch_31
    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Lcom/android/systemui/statusbar/CommandQueue$H;

    const/high16 v3, 0x2a0000

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Lcom/android/systemui/statusbar/CommandQueue$H;

    const/high16 v3, 0x290000

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v4, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Lcom/android/systemui/statusbar/CommandQueue$H;

    const/high16 v3, 0x280000

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :goto_38
    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_12

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/hardware/biometrics/PromptInfo;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, [I

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iget v11, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-wide v12, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    move-object v1, v4

    iget-wide v3, v0, Lcom/android/internal/os/SomeArgs;->argl2:J

    move-wide v15, v3

    invoke-interface/range {v5 .. v16}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V

    add-int/lit8 v2, v2, 0x1

    move-object v4, v1

    goto :goto_38

    :cond_12
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_69

    :sswitch_32
    move-object v1, v4

    move v4, v2

    :goto_39
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v6, v0, Landroid/os/Message;->arg1:I

    iget v7, v0, Landroid/os/Message;->arg2:I

    if-eqz v7, :cond_13

    move v7, v3

    goto :goto_3a

    :cond_13
    move v7, v2

    :goto_3a
    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onRotationProposal(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :sswitch_33
    move-object v1, v4

    move v4, v2

    :goto_3b
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v6, v0, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_14

    move v6, v3

    goto :goto_3c

    :cond_14
    move v6, v2

    :goto_3c
    invoke-interface {v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setTopAppHidesStatusBar(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    :sswitch_34
    move-object v1, v4

    move v4, v2

    :goto_3d
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v6, v0, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_15

    move v6, v3

    goto :goto_3e

    :cond_15
    move v6, v2

    :goto_3e
    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5, v7, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleShowShutdownUi(Ljava/lang/String;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    :sswitch_35
    move-object v1, v4

    :goto_3f
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleNotificationsPanel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :sswitch_36
    move-object v1, v4

    :goto_40
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleShowGlobalActionsMenu(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :sswitch_37
    move-object v1, v4

    :goto_41
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/KeyEvent;

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleSystemKey(Landroid/view/KeyEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :sswitch_38
    move-object v1, v4

    :goto_42
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->dismissKeyboardShortcutsMenu()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :sswitch_39
    move-object v1, v4

    :goto_43
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionFinished(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :sswitch_3a
    move-object v1, v4

    :goto_44
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleSplitScreen()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :sswitch_3b
    move-object v1, v4

    :goto_45
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->clickTile(Landroid/content/ComponentName;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    :sswitch_3c
    move-object v1, v4

    :goto_46
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->remQsTile(Landroid/content/ComponentName;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :sswitch_3d
    move-object v1, v4

    invoke-static {}, Landroid/view/accessibility/Flags;->a11yQsShortcut()Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :goto_47
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_16

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->addQsTileToFrontOrEnd(Landroid/content/ComponentName;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_16
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_69

    :cond_17
    :goto_48
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->addQsTile(Landroid/content/ComponentName;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    :sswitch_3e
    move-object v1, v4

    :goto_49
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showPictureInPictureMenu()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    :sswitch_3f
    move-object v1, v4

    :goto_4a
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleKeyboardShortcutsMenu(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    :sswitch_40
    move-object v1, v4

    :goto_4b
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onCameraLaunchGestureDetected(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    :sswitch_41
    move-object v1, v4

    :goto_4c
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->startAssist(Landroid/os/Bundle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :sswitch_42
    move-object v1, v4

    :goto_4d
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showAssistDisclosure()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    :sswitch_43
    move-object v1, v4

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move v4, v2

    :goto_4e
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v12, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v5, :cond_18

    move v11, v3

    goto :goto_4f

    :cond_18
    move v11, v2

    :goto_4f
    invoke-interface/range {v6 .. v12}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionStarting(JJZI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    :sswitch_44
    move-object v1, v4

    :goto_50
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionCancelled(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    :sswitch_45
    move-object v1, v4

    move v4, v2

    :goto_51
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v6, v0, Landroid/os/Message;->arg1:I

    iget v7, v0, Landroid/os/Message;->arg2:I

    if-eqz v7, :cond_19

    move v7, v3

    goto :goto_52

    :cond_19
    move v7, v2

    :goto_52
    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionPending(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    :sswitch_46
    move-object v1, v4

    :goto_53
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showScreenPinningRequest(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    :sswitch_47
    move-object v1, v4

    move v4, v2

    :goto_54
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v6, v0, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_1a

    move v6, v3

    goto :goto_55

    :cond_1a
    move v6, v2

    :goto_55
    iget v7, v0, Landroid/os/Message;->arg2:I

    if-eqz v7, :cond_1b

    move v7, v3

    goto :goto_56

    :cond_1b
    move v7, v2

    :goto_56
    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideRecentApps(ZZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    :sswitch_48
    move-object v1, v4

    move v4, v2

    :goto_57
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v6, v0, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_1c

    move v6, v3

    goto :goto_58

    :cond_1c
    move v6, v2

    :goto_58
    invoke-interface {v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showRecentApps(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    :sswitch_49
    move-object v1, v4

    :goto_59
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, v0, Landroid/os/Message;->arg1:I

    iget v5, v0, Landroid/os/Message;->arg2:I

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setWindowState(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    :sswitch_4a
    move-object v1, v4

    :goto_5a
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->cancelPreloadRecentApps()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    :sswitch_4b
    move-object v1, v4

    :goto_5b
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->preloadRecentApps()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    :sswitch_4c
    move-object v1, v4

    :goto_5c
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleRecentApps()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    :sswitch_4d
    move-object v1, v4

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v6, v4

    check-cast v6, Landroid/os/IBinder;

    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v8, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    if-eqz v0, :cond_1d

    move v9, v3

    goto :goto_5d

    :cond_1d
    move v9, v2

    :goto_5d
    move-object v4, v1

    invoke-static/range {v4 .. v9}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$mhandleShowImeButton(Lcom/android/systemui/statusbar/CommandQueue;ILandroid/os/IBinder;IIZ)V

    goto/16 :goto_69

    :sswitch_4e
    move-object v1, v4

    :goto_5e
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onDisplayReady(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    :sswitch_4f
    move-object v1, v4

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move v4, v2

    :goto_5f
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1f

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v8, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v9, v5

    check-cast v9, [Lcom/android/internal/view/AppearanceRegion;

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-ne v5, v3, :cond_1e

    move v10, v3

    goto :goto_60

    :cond_1e
    move v10, v2

    :goto_60
    iget v11, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget v12, v0, Lcom/android/internal/os/SomeArgs;->argi5:I

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v13, v5

    check-cast v13, Ljava/lang/String;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v14, v5

    check-cast v14, [Lcom/android/internal/statusbar/LetterboxDetails;

    invoke-interface/range {v6 .. v14}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5f

    :cond_1f
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_69

    :sswitch_50
    move-object v1, v4

    :goto_61
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateExpandSettingsPanel(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    :sswitch_51
    move-object v1, v4

    move v4, v2

    :goto_62
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v6, v0, Landroid/os/Message;->arg1:I

    iget v7, v0, Landroid/os/Message;->arg2:I

    if-eqz v7, :cond_20

    move v7, v3

    goto :goto_63

    :cond_20
    move v7, v2

    :goto_63
    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateCollapsePanels(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    :sswitch_52
    move-object v1, v4

    :goto_64
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateExpandNotificationsPanel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    :sswitch_53
    move-object v1, v4

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move v4, v2

    :goto_65
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v8, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v9, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    if-eqz v9, :cond_21

    move v9, v3

    goto :goto_66

    :cond_21
    move v9, v2

    :goto_66
    invoke-interface {v5, v6, v7, v8, v9}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->disable(IIIZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    :sswitch_54
    move-object v1, v4

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eq v4, v3, :cond_23

    const/4 v3, 0x2

    if-eq v4, v3, :cond_22

    goto :goto_69

    :cond_22
    :goto_67
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->removeIcon(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    :cond_23
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    :goto_68
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-$$Nest$fgetmCallbacks(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    :cond_24
    :goto_69
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_54
        0x20000 -> :sswitch_53
        0x30000 -> :sswitch_52
        0x40000 -> :sswitch_51
        0x50000 -> :sswitch_50
        0x60000 -> :sswitch_4f
        0x70000 -> :sswitch_4e
        0x80000 -> :sswitch_4d
        0x90000 -> :sswitch_4c
        0xa0000 -> :sswitch_4b
        0xb0000 -> :sswitch_4a
        0xc0000 -> :sswitch_49
        0xd0000 -> :sswitch_48
        0xe0000 -> :sswitch_47
        0x120000 -> :sswitch_46
        0x130000 -> :sswitch_45
        0x140000 -> :sswitch_44
        0x150000 -> :sswitch_43
        0x160000 -> :sswitch_42
        0x170000 -> :sswitch_41
        0x180000 -> :sswitch_40
        0x190000 -> :sswitch_3f
        0x1a0000 -> :sswitch_3e
        0x1b0000 -> :sswitch_3d
        0x1c0000 -> :sswitch_3c
        0x1d0000 -> :sswitch_3b
        0x1e0000 -> :sswitch_3a
        0x1f0000 -> :sswitch_39
        0x200000 -> :sswitch_38
        0x210000 -> :sswitch_37
        0x220000 -> :sswitch_36
        0x230000 -> :sswitch_35
        0x240000 -> :sswitch_34
        0x250000 -> :sswitch_33
        0x260000 -> :sswitch_32
        0x270000 -> :sswitch_31
        0x280000 -> :sswitch_30
        0x290000 -> :sswitch_2f
        0x2a0000 -> :sswitch_2e
        0x2b0000 -> :sswitch_2d
        0x2c0000 -> :sswitch_2c
        0x2d0000 -> :sswitch_2b
        0x2e0000 -> :sswitch_2a
        0x2f0000 -> :sswitch_29
        0x300000 -> :sswitch_28
        0x310000 -> :sswitch_27
        0x320000 -> :sswitch_26
        0x330000 -> :sswitch_25
        0x340000 -> :sswitch_24
        0x350000 -> :sswitch_23
        0x360000 -> :sswitch_22
        0x370000 -> :sswitch_21
        0x380000 -> :sswitch_20
        0x3a0000 -> :sswitch_1f
        0x3b0000 -> :sswitch_1e
        0x3c0000 -> :sswitch_1d
        0x3d0000 -> :sswitch_1c
        0x3e0000 -> :sswitch_1b
        0x3f0000 -> :sswitch_1a
        0x400000 -> :sswitch_19
        0x410000 -> :sswitch_18
        0x420000 -> :sswitch_17
        0x430000 -> :sswitch_16
        0x440000 -> :sswitch_15
        0x450000 -> :sswitch_14
        0x460000 -> :sswitch_13
        0x470000 -> :sswitch_12
        0x480000 -> :sswitch_11
        0x490000 -> :sswitch_10
        0x4d0000 -> :sswitch_f
        0x4e0000 -> :sswitch_e
        0x4f0000 -> :sswitch_d
        0x500000 -> :sswitch_c
        0x510000 -> :sswitch_b
        0x520000 -> :sswitch_a
        0x650000 -> :sswitch_9
        0x670000 -> :sswitch_8
        0x680000 -> :sswitch_7
        0x790000 -> :sswitch_6
        0x7a0000 -> :sswitch_5
        0x7b0000 -> :sswitch_4
        0x7c0000 -> :sswitch_3
        0x7d0000 -> :sswitch_2
        0x7e0000 -> :sswitch_53
        0x850000 -> :sswitch_1
        0x8c0000 -> :sswitch_0
    .end sparse-switch
.end method
