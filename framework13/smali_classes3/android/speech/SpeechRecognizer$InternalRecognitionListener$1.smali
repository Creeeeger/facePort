.class Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;
.super Landroid/os/Handler;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizer$InternalRecognitionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;


# direct methods
.method constructor blacklist <init>(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/SpeechRecognizer$InternalRecognitionListener;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 820
    iput-object p1, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 823
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 824
    return-void

    .line 826
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 858
    :pswitch_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/RecognitionListener;->onEndOfSegmentedSession()V

    goto/16 :goto_0

    .line 855
    :pswitch_1
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v0, v1}, Landroid/speech/RecognitionListener;->onSegmentResults(Landroid/os/Bundle;)V

    .line 856
    goto/16 :goto_0

    .line 852
    :pswitch_2
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/speech/RecognitionListener;->onEvent(ILandroid/os/Bundle;)V

    .line 853
    goto/16 :goto_0

    .line 849
    :pswitch_3
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, v1}, Landroid/speech/RecognitionListener;->onRmsChanged(F)V

    .line 850
    goto :goto_0

    .line 846
    :pswitch_4
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v0, v1}, Landroid/speech/RecognitionListener;->onPartialResults(Landroid/os/Bundle;)V

    .line 847
    goto :goto_0

    .line 843
    :pswitch_5
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v0, v1}, Landroid/speech/RecognitionListener;->onResults(Landroid/os/Bundle;)V

    .line 844
    goto :goto_0

    .line 840
    :pswitch_6
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v0, v1}, Landroid/speech/RecognitionListener;->onReadyForSpeech(Landroid/os/Bundle;)V

    .line 841
    goto :goto_0

    .line 837
    :pswitch_7
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/speech/RecognitionListener;->onError(I)V

    .line 838
    goto :goto_0

    .line 834
    :pswitch_8
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/RecognitionListener;->onEndOfSpeech()V

    .line 835
    goto :goto_0

    .line 831
    :pswitch_9
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-interface {v0, v1}, Landroid/speech/RecognitionListener;->onBufferReceived([B)V

    .line 832
    goto :goto_0

    .line 828
    :pswitch_a
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/RecognitionListener;->onBeginningOfSpeech()V

    .line 829
    nop

    .line 861
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
