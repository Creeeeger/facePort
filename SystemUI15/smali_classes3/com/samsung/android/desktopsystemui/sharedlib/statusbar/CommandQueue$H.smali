.class final Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;


# direct methods
.method private constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;Landroid/os/Looper;Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_15

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->toggleKeyboardShortcutsMenu(I)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->animateExpandSettingsPanel(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    invoke-interface {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->animateExpandNotificationsPanel()V

    goto :goto_2

    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_4

    :cond_0
    move v4, v1

    :goto_4
    invoke-interface {v0, v3, v4}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->animateCollapsePanels(IZ)V

    goto :goto_3

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    iget v1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->setWindowState(III)V

    goto :goto_5

    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    invoke-interface {v1, v0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->abortTransient(II)V

    goto :goto_6

    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-ne p1, v2, :cond_1

    move v1, v2

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v0, v3, v2}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->showTransient(IILjava/lang/Boolean;)V

    goto :goto_7

    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    invoke-interface {v0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->onFocusedDisplayChanged(I)V

    goto :goto_8

    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    iget v1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->disable(III)V

    goto :goto_9

    :pswitch_9
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    invoke-interface {v0, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->sendKeyEventToDesktopTaskbar(Landroid/view/KeyEvent;)V

    goto :goto_a

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v11, v3

    check-cast v11, [Lcom/android/internal/view/AppearanceRegion;

    array-length v12, v11

    move v13, v1

    :goto_b
    if-ge v13, v12, :cond_2

    aget-object v3, v11, v13

    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-virtual {v3}, Lcom/android/internal/view/AppearanceRegion;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-ne v3, v2, :cond_3

    move v3, v2

    goto :goto_c

    :cond_3
    move v3, v1

    :goto_c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget v8, p1, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi5:I

    if-ne v3, v2, :cond_4

    move v3, v2

    goto :goto_d

    :cond_4
    move v3, v1

    :goto_d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v10, v3

    check-cast v10, Ljava/lang/String;

    move-object v3, v0

    invoke-interface/range {v3 .. v10}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->onSystemBarAttributesChanged(IILandroid/graphics/Rect;Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :pswitch_b
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    invoke-interface {v0, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->handleSystemKey(Landroid/view/KeyEvent;)V

    goto :goto_e

    :pswitch_c
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    invoke-interface {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->toggleRecentApps()V

    goto :goto_f

    :pswitch_d
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_11

    :cond_5
    move v3, v1

    :goto_11
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_6

    move v4, v2

    goto :goto_12

    :cond_6
    move v4, v1

    :goto_12
    invoke-interface {v0, v3, v4}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->hideRecentApps(ZZ)V

    goto :goto_10

    :pswitch_e
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_7

    move v3, v2

    goto :goto_14

    :cond_7
    move v3, v1

    :goto_14
    invoke-interface {v0, v3}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;->showRecentApps(Z)V

    goto :goto_13

    :cond_8
    :goto_15
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
