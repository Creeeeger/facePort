.class Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;
.super Landroid/os/Handler;
.source "SemBioFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 2047
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 2048
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2049
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/samsung/android/bio/face/SemBioFaceManager$1;

    .line 2046
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2051
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 2052
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2053
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;Lcom/samsung/android/bio/face/SemBioFaceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/samsung/android/bio/face/SemBioFaceManager$1;

    .line 2046
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;)V

    return-void
.end method

.method private blacklist sendEnrollResult(Lcom/samsung/android/bio/face/SemBioFace;I)V
    .locals 1
    .param p1, "face"    # Lcom/samsung/android/bio/face/SemBioFace;
    .param p2, "progress"    # I

    .line 2112
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2000(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2113
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 2114
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1900(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->unlink()V

    .line 2116
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2000(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    .line 2119
    :cond_1
    return-void
.end method

.method private blacklist sendRemovedResult(JII)V
    .locals 6
    .param p1, "deviceId"    # J
    .param p3, "faceId"    # I
    .param p4, "groupId"    # I

    .line 2094
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1700(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2095
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1800(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFace;->getFaceId()I

    move-result v0

    .line 2096
    .local v0, "reqFaceId":I
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1800(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFace;->getGroupId()I

    move-result v1

    .line 2097
    .local v1, "reqGroupId":I
    const-string v2, " != "

    const-string v3, "SemBioFaceManager"

    if-eq p3, v0, :cond_0

    .line 2098
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Face id didn\'t match: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    :cond_0
    if-eq p4, v1, :cond_1

    .line 2101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Group id didn\'t match: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1700(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1800(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFace;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;->onRemovalSucceeded(Lcom/samsung/android/bio/face/SemBioFace;)V

    .line 2104
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1702(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    .line 2106
    .end local v0    # "reqFaceId":I
    .end local v1    # "reqGroupId":I
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1900(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2107
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1900(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->unlink()V

    .line 2109
    :cond_3
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 2057
    invoke-static {}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$700()Z

    move-result v0

    const-string v1, "handleMessage = "

    const-string v2, "SemBioFaceManager"

    if-eqz v0, :cond_0

    .line 2058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2060
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2088
    :pswitch_0
    const-string v0, "handleMessage : Unknown msg"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2085
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1600(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1500(Lcom/samsung/android/bio/face/SemBioFaceManager;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;->onPreEnroll(J)V

    .line 2086
    goto :goto_1

    .line 2082
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1400(Lcom/samsung/android/bio/face/SemBioFaceManager;ILjava/lang/String;)V

    .line 2083
    goto :goto_1

    .line 2079
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->sendRemovedResult(JII)V

    .line 2080
    goto :goto_1

    .line 2076
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1300(Lcom/samsung/android/bio/face/SemBioFaceManager;ILjava/lang/String;)V

    .line 2077
    goto :goto_1

    .line 2073
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1200(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    .line 2074
    goto :goto_1

    .line 2070
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;

    invoke-static {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1100(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V

    .line 2071
    goto :goto_1

    .line 2067
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1000(Lcom/samsung/android/bio/face/SemBioFaceManager;ILjava/lang/String;)V

    .line 2068
    goto :goto_1

    .line 2064
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/bio/face/SemBioFace;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;->sendEnrollResult(Lcom/samsung/android/bio/face/SemBioFace;I)V

    .line 2065
    nop

    .line 2091
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
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
