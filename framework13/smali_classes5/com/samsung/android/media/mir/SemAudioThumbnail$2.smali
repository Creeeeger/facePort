.class Lcom/samsung/android/media/mir/SemAudioThumbnail$2;
.super Ljava/lang/Thread;
.source "SemAudioThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/mir/SemAudioThumbnail;->extract(Ljava/lang/String;Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/media/mir/SemAudioThumbnail;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/media/mir/SemAudioThumbnail;
    .param p2, "name"    # Ljava/lang/String;

    .line 248
    iput-object p1, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$2;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 7

    .line 251
    const/4 v0, -0x1

    .local v0, "oldState":I
    const/4 v1, -0x1

    .line 252
    .local v1, "newState":I
    const/4 v2, 0x0

    .line 253
    .local v2, "isDone":Z
    :goto_0
    if-nez v2, :cond_3

    .line 255
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Lcom/samsung/android/media/mir/SemAudioThumbnail$2;->sleep(J)V

    .line 256
    iget-object v3, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$2;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v3}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetmHandle(Lcom/samsung/android/media/mir/SemAudioThumbnail;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$mgetStat(Lcom/samsung/android/media/mir/SemAudioThumbnail;I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move v1, v3

    .line 263
    nop

    .line 266
    if-eq v0, v1, :cond_2

    .line 267
    move v0, v1

    .line 268
    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 278
    :sswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$2;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v3}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetmHandle(Lcom/samsung/android/media/mir/SemAudioThumbnail;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$mdeinit(Lcom/samsung/android/media/mir/SemAudioThumbnail;I)I

    .line 279
    iget-object v3, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$2;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v3}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetmListener(Lcom/samsung/android/media/mir/SemAudioThumbnail;)Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 280
    iget-object v3, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$2;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v3}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetmListener(Lcom/samsung/android/media/mir/SemAudioThumbnail;)Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;->onDone(J)V

    .line 282
    :cond_0
    const/4 v2, 0x1

    .line 283
    goto :goto_1

    .line 270
    :sswitch_1
    iget-object v3, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$2;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v3}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetmHandle(Lcom/samsung/android/media/mir/SemAudioThumbnail;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$mgetInfo(Lcom/samsung/android/media/mir/SemAudioThumbnail;I)J

    move-result-wide v3

    .line 271
    .local v3, "resultms":J
    iget-object v5, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$2;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v5}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetmHandle(Lcom/samsung/android/media/mir/SemAudioThumbnail;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$mdeinit(Lcom/samsung/android/media/mir/SemAudioThumbnail;I)I

    .line 272
    iget-object v5, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$2;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v5}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetmListener(Lcom/samsung/android/media/mir/SemAudioThumbnail;)Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 273
    iget-object v5, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$2;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v5}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetmListener(Lcom/samsung/android/media/mir/SemAudioThumbnail;)Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;->onDone(J)V

    .line 275
    :cond_1
    const/4 v2, 0x1

    .line 276
    goto :goto_1

    .line 286
    .end local v3    # "resultms":J
    :sswitch_2
    const/4 v2, 0x1

    .line 287
    iget-object v3, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$2;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v3}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetmListener(Lcom/samsung/android/media/mir/SemAudioThumbnail;)Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 288
    iget-object v3, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$2;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v3}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetmListener(Lcom/samsung/android/media/mir/SemAudioThumbnail;)Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;->onDone(J)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 297
    :catch_0
    move-exception v3

    .line 298
    .local v3, "e":Ljava/lang/Exception;
    goto :goto_2

    .line 295
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 296
    .local v3, "e":Ljava/lang/NullPointerException;
    goto :goto_2

    .line 299
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :cond_2
    :goto_1
    goto :goto_0

    .line 261
    :catch_2
    move-exception v3

    .line 262
    .local v3, "e":Ljava/lang/Exception;
    goto :goto_2

    .line 257
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 258
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 259
    iget-object v4, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail$2;->this$0:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-static {v4}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$fgetmHandle(Lcom/samsung/android/media/mir/SemAudioThumbnail;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->-$$Nest$mdeinit(Lcom/samsung/android/media/mir/SemAudioThumbnail;I)I

    .line 301
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_2
        -0x1 -> :sswitch_2
        0x5 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
