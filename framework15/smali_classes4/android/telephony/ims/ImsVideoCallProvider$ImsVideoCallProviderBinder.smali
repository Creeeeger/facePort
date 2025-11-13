.class final Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;
.super Lcom/android/ims/internal/IImsVideoCallProvider$Stub;
.source "ImsVideoCallProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImsVideoCallProviderBinder"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/ImsVideoCallProvider;


# direct methods
.method private constructor blacklist <init>(Landroid/telephony/ims/ImsVideoCallProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/ims/ImsVideoCallProvider;Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;-><init>(Landroid/telephony/ims/ImsVideoCallProvider;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o requestCallDataUsage()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {v0}, Landroid/telephony/ims/ImsVideoCallProvider;->-$$Nest$fgetmProviderHandler(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o requestCameraCapabilities()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {v0}, Landroid/telephony/ims/ImsVideoCallProvider;->-$$Nest$fgetmProviderHandler(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {v1}, Landroid/telephony/ims/ImsVideoCallProvider;->-$$Nest$fgetmProviderHandler(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {v0}, Landroid/telephony/ims/ImsVideoCallProvider;->-$$Nest$fgetmProviderHandler(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {v0}, Landroid/telephony/ims/ImsVideoCallProvider;->-$$Nest$fgetmProviderHandler(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o setCamera(Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v1, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {v1}, Landroid/telephony/ims/ImsVideoCallProvider;->-$$Nest$fgetmProviderHandler(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o setDeviceOrientation(I)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {v0}, Landroid/telephony/ims/ImsVideoCallProvider;->-$$Nest$fgetmProviderHandler(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o setDisplaySurface(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {v0}, Landroid/telephony/ims/ImsVideoCallProvider;->-$$Nest$fgetmProviderHandler(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o setPauseImage(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {v0}, Landroid/telephony/ims/ImsVideoCallProvider;->-$$Nest$fgetmProviderHandler(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o setPreviewSurface(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {v0}, Landroid/telephony/ims/ImsVideoCallProvider;->-$$Nest$fgetmProviderHandler(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o setZoom(F)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {v0}, Landroid/telephony/ims/ImsVideoCallProvider;->-$$Nest$fgetmProviderHandler(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
