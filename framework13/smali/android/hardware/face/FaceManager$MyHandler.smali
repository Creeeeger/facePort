.class Landroid/hardware/face/FaceManager$MyHandler;
.super Landroid/os/Handler;
.source "FaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/FaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/face/FaceManager;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/face/FaceManager;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 1294
    iput-object p1, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    .line 1295
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1296
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/face/FaceManager;Landroid/content/Context;Landroid/hardware/face/FaceManager$MyHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager$MyHandler;-><init>(Landroid/hardware/face/FaceManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/face/FaceManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1298
    iput-object p1, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    .line 1299
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1300
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/face/FaceManager;Landroid/os/Looper;Landroid/hardware/face/FaceManager$MyHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager$MyHandler;-><init>(Landroid/hardware/face/FaceManager;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaceManager#handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1305
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1351
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1348
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/face/FaceEnrollFrame;

    invoke-static {v0, v1}, Landroid/hardware/face/FaceManager;->-$$Nest$msendEnrollmentFrame(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceEnrollFrame;)V

    .line 1349
    goto/16 :goto_1

    .line 1345
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/face/FaceAuthenticationFrame;

    invoke-static {v0, v1}, Landroid/hardware/face/FaceManager;->-$$Nest$msendAuthenticationFrame(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceAuthenticationFrame;)V

    .line 1346
    goto/16 :goto_1

    .line 1341
    :pswitch_3
    iget-object v0, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    .line 1342
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1341
    invoke-static {v0, v1, v2, v3}, Landroid/hardware/face/FaceManager;->-$$Nest$msendFaceDetected(Landroid/hardware/face/FaceManager;IIZ)V

    .line 1343
    goto/16 :goto_1

    .line 1337
    :pswitch_4
    iget-object v0, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 1338
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1337
    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/face/FaceManager;->-$$Nest$msendChallengeGenerated(Landroid/hardware/face/FaceManager;IIJ)V

    .line 1339
    goto/16 :goto_1

    .line 1326
    :pswitch_5
    iget-object v0, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Landroid/hardware/face/FaceManager;->-$$Nest$msendSetFeatureCompleted(Landroid/hardware/face/FaceManager;ZI)V

    .line 1328
    goto :goto_1

    .line 1330
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1331
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, [I

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, [Z

    invoke-static {v1, v2, v3, v4}, Landroid/hardware/face/FaceManager;->-$$Nest$msendGetFeatureCompleted(Landroid/hardware/face/FaceManager;Z[I[Z)V

    .line 1334
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1335
    goto :goto_1

    .line 1323
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_7
    iget-object v0, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/face/Face;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Landroid/hardware/face/FaceManager;->-$$Nest$msendRemovedResult(Landroid/hardware/face/FaceManager;Landroid/hardware/face/Face;I)V

    .line 1324
    goto :goto_1

    .line 1320
    :pswitch_8
    iget-object v0, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Landroid/hardware/face/FaceManager;->-$$Nest$msendErrorResult(Landroid/hardware/face/FaceManager;II)V

    .line 1321
    goto :goto_1

    .line 1317
    :pswitch_9
    iget-object v0, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$msendAuthenticatedFailed(Landroid/hardware/face/FaceManager;)V

    .line 1318
    goto :goto_1

    .line 1313
    :pswitch_a
    iget-object v0, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/face/Face;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v4}, Landroid/hardware/face/FaceManager;->-$$Nest$msendAuthenticatedSucceeded(Landroid/hardware/face/FaceManager;Landroid/hardware/face/Face;IZ)V

    .line 1315
    goto :goto_1

    .line 1310
    :pswitch_b
    iget-object v0, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Landroid/hardware/face/FaceManager;->-$$Nest$msendAcquiredResult(Landroid/hardware/face/FaceManager;II)V

    .line 1311
    goto :goto_1

    .line 1307
    :pswitch_c
    iget-object v0, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/face/Face;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Landroid/hardware/face/FaceManager;->-$$Nest$msendEnrollResult(Landroid/hardware/face/FaceManager;Landroid/hardware/face/Face;I)V

    .line 1308
    nop

    .line 1353
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1354
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
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
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
