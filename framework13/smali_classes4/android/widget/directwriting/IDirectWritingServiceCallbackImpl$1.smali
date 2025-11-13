.class Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl$1;
.super Landroid/os/Handler;
.source "IDirectWritingServiceCallbackImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;


# direct methods
.method constructor blacklist <init>(Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 27
    iput-object p1, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl$1;->this$0:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private blacklist setSelectionToLast()V
    .locals 3

    .line 95
    :try_start_0
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl$1;->this$0:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-static {v0}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->-$$Nest$fgetmWritingView(Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;)Landroid/widget/directwriting/WritingView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl$1;->this$0:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-static {v0}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->-$$Nest$fgetmWritingView(Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;)Landroid/widget/directwriting/WritingView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 97
    .local v0, "editable":Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 98
    iget-object v1, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl$1;->this$0:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-static {v1}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->-$$Nest$fgetmWritingView(Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;)Landroid/widget/directwriting/WritingView;

    move-result-object v1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/directwriting/WritingView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0    # "editable":Landroid/text/Editable;
    :cond_0
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSelection 2nd try failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[DWL]"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 30
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, ", msg.arg1="

    const-string v2, ",  msg.obj="

    const-string v3, "[DWL]"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 85
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/directwriting/WritingView;

    .line 86
    .local v0, "et":Landroid/widget/directwriting/WritingView;
    iget-object v1, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl$1;->this$0:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-static {v1}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->-$$Nest$fgetbinderCallback(Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;)Landroid/widget/directwriting/DirectWritingBinderCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/directwriting/DirectWritingBinderCallback;->onBoundedEditTextRectChanged(Landroid/widget/directwriting/WritingView;)V

    .line 87
    goto/16 :goto_0

    .line 81
    .end local v0    # "et":Landroid/widget/directwriting/WritingView;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    .line 82
    .local v0, "pointF":Landroid/graphics/PointF;
    iget-object v1, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl$1;->this$0:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v2, v3}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->-$$Nest$mbindEditInInner(Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;FF)V

    .line 83
    goto/16 :goto_0

    .line 72
    .end local v0    # "pointF":Landroid/graphics/PointF;
    :sswitch_2
    :try_start_0
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl$1;->this$0:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-static {v0}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->-$$Nest$fgetmWritingView(Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;)Landroid/widget/directwriting/WritingView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl$1;->this$0:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-static {v0}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->-$$Nest$fgetmWritingView(Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;)Landroid/widget/directwriting/WritingView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/widget/directwriting/WritingView;->onEditorAction(I)V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEditorAction done:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    goto/16 :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEditorAction failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_0

    .line 51
    :sswitch_3
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl$1;->this$0:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-static {v0}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->-$$Nest$fgetmWritingView(Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;)Landroid/widget/directwriting/WritingView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 52
    const-string v0, "MSG_SEND_SET_TEXT_SELECTION failed, et is null"

    invoke-static {v3, v0}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void

    .line 56
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_SEND_SET_TEXT_SELECTION editText "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl$1;->this$0:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-static {v4}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->-$$Nest$fgetmWritingView(Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;)Landroid/widget/directwriting/WritingView;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl$1;->this$0:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-static {v0}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->-$$Nest$fgetmWritingView(Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;)Landroid/widget/directwriting/WritingView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 60
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl$1;->this$0:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-static {v0}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->-$$Nest$fgetmWritingView(Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;)Landroid/widget/directwriting/WritingView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->requestFocus()Z

    .line 63
    :cond_2
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl$1;->this$0:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-static {v0}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->-$$Nest$fgetmWritingView(Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;)Landroid/widget/directwriting/WritingView;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/directwriting/WritingView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl$1;->this$0:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-static {v0}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->-$$Nest$fgetmWritingView(Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;)Landroid/widget/directwriting/WritingView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/widget/directwriting/WritingView;->setSelection(I)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    goto/16 :goto_0

    .line 65
    :catch_1
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTextSelection failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-direct {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl$1;->setSelectionToLast()V

    .line 69
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_0

    .line 40
    :sswitch_4
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_SEND_SET_SELECTION editText "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl$1;->this$0:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-static {v2}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->-$$Nest$fgetmWritingView(Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;)Landroid/widget/directwriting/WritingView;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl$1;->this$0:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-static {v0}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->-$$Nest$fgetmWritingView(Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;)Landroid/widget/directwriting/WritingView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 43
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl$1;->this$0:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-static {v0}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->-$$Nest$fgetmWritingView(Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;)Landroid/widget/directwriting/WritingView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/widget/directwriting/WritingView;->setSelection(I)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 48
    :cond_3
    goto :goto_0

    .line 45
    :catch_2
    move-exception v0

    .line 46
    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSelection failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-direct {p0}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl$1;->setSelectionToLast()V

    .line 49
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0

    .line 32
    :sswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_SEND_SET_TEXT editText "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl$1;->this$0:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-static {v1}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->-$$Nest$fgetmWritingView(Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;)Landroid/widget/directwriting/WritingView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl$1;->this$0:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-static {v0}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->-$$Nest$fgetmWritingView(Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;)Landroid/widget/directwriting/WritingView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl$1;->this$0:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-static {v0}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->-$$Nest$fgetmWritingView(Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;)Landroid/widget/directwriting/WritingView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->isCursorVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 35
    iget-object v0, p0, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl$1;->this$0:Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;

    invoke-static {v0}, Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;->-$$Nest$fgetmWritingView(Landroid/widget/directwriting/IDirectWritingServiceCallbackImpl;)Landroid/widget/directwriting/WritingView;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/directwriting/WritingView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_4
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_5
        0x66 -> :sswitch_4
        0x67 -> :sswitch_3
        0xc9 -> :sswitch_2
        0x12e -> :sswitch_1
        0x12f -> :sswitch_0
    .end sparse-switch
.end method
