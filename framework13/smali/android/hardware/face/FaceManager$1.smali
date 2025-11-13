.class Landroid/hardware/face/FaceManager$1;
.super Landroid/hardware/face/IFaceServiceReceiver$Stub;
.source "FaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/FaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/face/FaceManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/face/FaceManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/face/FaceManager;

    .line 103
    iput-object p1, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-direct {p0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onSemStatusUpdate$1()V
    .locals 0

    .line 193
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onSemImageProcessed$0$android-hardware-face-FaceManager$1([BIIIILandroid/os/Bundle;)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "orientation"    # I
    .param p5, "imageFormat"    # I
    .param p6, "b"    # Landroid/os/Bundle;

    .line 183
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmEnrollmentCallback(Landroid/hardware/face/FaceManager;)Landroid/hardware/face/FaceManager$EnrollmentCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmEnrollmentCallback(Landroid/hardware/face/FaceManager;)Landroid/hardware/face/FaceManager$EnrollmentCallback;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onImageProcessed([BIIIILandroid/os/Bundle;)V

    .line 186
    :cond_0
    return-void
.end method

.method public blacklist onAcquired(II)V
    .locals 2
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 112
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    return-void
.end method

.method public blacklist onAuthenticationFailed()V
    .locals 2

    .line 129
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 130
    return-void
.end method

.method public blacklist onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V
    .locals 2
    .param p1, "frame"    # Landroid/hardware/face/FaceAuthenticationFrame;

    .line 164
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x70

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 165
    return-void
.end method

.method public blacklist onAuthenticationSucceeded(Landroid/hardware/face/Face;IZ)V
    .locals 2
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 117
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    .line 118
    nop

    .line 117
    const/16 v1, 0x66

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 119
    return-void
.end method

.method public blacklist onChallengeGenerated(IIJ)V
    .locals 3
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "challenge"    # J

    .line 158
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x6c

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 160
    return-void
.end method

.method public blacklist onEnrollResult(Landroid/hardware/face/Face;I)V
    .locals 3
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "remaining"    # I

    .line 107
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 108
    return-void
.end method

.method public blacklist onEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V
    .locals 2
    .param p1, "frame"    # Landroid/hardware/face/FaceEnrollFrame;

    .line 169
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x71

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 170
    return-void
.end method

.method public blacklist onError(II)V
    .locals 2
    .param p1, "error"    # I
    .param p2, "vendorCode"    # I

    .line 134
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    return-void
.end method

.method public blacklist onFaceDetected(IIZ)V
    .locals 3
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 123
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x6d

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 125
    return-void
.end method

.method public blacklist onFeatureGet(Z[I[Z)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "features"    # [I
    .param p3, "featureState"    # [Z

    .line 149
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 150
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 151
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 152
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 153
    iget-object v1, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v1}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6a

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 154
    return-void
.end method

.method public blacklist onFeatureSet(ZI)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "feature"    # I

    .line 144
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x6b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 145
    return-void
.end method

.method public blacklist onRemoved(Landroid/hardware/face/Face;I)V
    .locals 3
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "remaining"    # I

    .line 139
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x69

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 140
    return-void
.end method

.method public blacklist onSemAuthenticationSucceeded(Landroid/hardware/face/Face;IZ[B)V
    .locals 2
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z
    .param p4, "fidoResultData"    # [B

    .line 175
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 177
    return-void
.end method

.method public blacklist onSemImageProcessed([BIIIILandroid/os/Bundle;)V
    .locals 11
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "orientation"    # I
    .param p5, "imageFormat"    # I
    .param p6, "b"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    move-object v8, p0

    iget-object v0, v8, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Landroid/hardware/face/FaceManager$1$$ExternalSyntheticLambda0;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/hardware/face/FaceManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/face/FaceManager$1;[BIIIILandroid/os/Bundle;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    return-void
.end method

.method public blacklist onSemStatusUpdate(ILjava/lang/String;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 191
    iget-object v0, p0, Landroid/hardware/face/FaceManager$1;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/hardware/face/FaceManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/hardware/face/FaceManager$1$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 194
    return-void
.end method
