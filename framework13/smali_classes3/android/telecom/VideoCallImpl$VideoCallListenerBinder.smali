.class final Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;
.super Lcom/android/internal/telecom/IVideoCallback$Stub;
.source "VideoCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoCallListenerBinder"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/VideoCallImpl;


# direct methods
.method private constructor blacklist <init>(Landroid/telecom/VideoCallImpl;)V
    .locals 0

    .line 75
    iput-object p1, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-direct {p0}, Lcom/android/internal/telecom/IVideoCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/VideoCallImpl;Landroid/telecom/VideoCallImpl$VideoCallListenerBinder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;-><init>(Landroid/telecom/VideoCallImpl;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o changeCallDataUsage(J)V
    .locals 3
    .param p1, "dataUsage"    # J

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeCallDataUsage - dataUsage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Telecom-VideoCallImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 145
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 149
    return-void
.end method

.method public greylist-max-o changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 2
    .param p1, "cameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeCameraCapabilities - capabilities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Telecom-VideoCallImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 157
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 161
    return-void
.end method

.method public greylist-max-o changePeerDimensions(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 121
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 122
    return-void

    .line 124
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 125
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 126
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v1}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 128
    return-void
.end method

.method public greylist-max-o changeVideoQuality(I)V
    .locals 3
    .param p1, "videoQuality"    # I

    .line 132
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 133
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 137
    return-void
.end method

.method public greylist-max-o handleCallSessionEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleCallSessionEvent - event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Telecom-VideoCallImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 113
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 117
    return-void
.end method

.method public greylist-max-o receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "receiveSessionModifyRequest - videoProfile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Telecom-VideoCallImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 87
    return-void
.end method

.method public greylist-max-o receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "requestProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "receiveSessionModifyRequest - status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Telecom-VideoCallImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 100
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 101
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 102
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v1}, Landroid/telecom/VideoCallImpl;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 105
    return-void
.end method
