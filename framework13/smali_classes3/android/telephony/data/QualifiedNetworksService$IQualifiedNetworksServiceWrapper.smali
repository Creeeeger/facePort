.class Landroid/telephony/data/QualifiedNetworksService$IQualifiedNetworksServiceWrapper;
.super Landroid/telephony/data/IQualifiedNetworksService$Stub;
.source "QualifiedNetworksService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/QualifiedNetworksService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IQualifiedNetworksServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/data/QualifiedNetworksService;


# direct methods
.method private constructor blacklist <init>(Landroid/telephony/data/QualifiedNetworksService;)V
    .locals 0

    .line 342
    iput-object p1, p0, Landroid/telephony/data/QualifiedNetworksService$IQualifiedNetworksServiceWrapper;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-direct {p0}, Landroid/telephony/data/IQualifiedNetworksService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/data/QualifiedNetworksService;Landroid/telephony/data/QualifiedNetworksService$IQualifiedNetworksServiceWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/data/QualifiedNetworksService$IQualifiedNetworksServiceWrapper;-><init>(Landroid/telephony/data/QualifiedNetworksService;)V

    return-void
.end method


# virtual methods
.method public blacklist createNetworkAvailabilityProvider(ILandroid/telephony/data/IQualifiedNetworksServiceCallback;)V
    .locals 3
    .param p1, "slotIndex"    # I
    .param p2, "callback"    # Landroid/telephony/data/IQualifiedNetworksServiceCallback;

    .line 346
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$IQualifiedNetworksServiceWrapper;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v0}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmHandler(Landroid/telephony/data/QualifiedNetworksService;)Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 348
    return-void
.end method

.method public blacklist removeNetworkAvailabilityProvider(I)V
    .locals 3
    .param p1, "slotIndex"    # I

    .line 352
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$IQualifiedNetworksServiceWrapper;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v0}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmHandler(Landroid/telephony/data/QualifiedNetworksService;)Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 354
    return-void
.end method

.method public blacklist reportThrottleStatusChanged(ILjava/util/List;)V
    .locals 3
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/data/ThrottleStatus;",
            ">;)V"
        }
    .end annotation

    .line 359
    .local p2, "statuses":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ThrottleStatus;>;"
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$IQualifiedNetworksServiceWrapper;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v0}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmHandler(Landroid/telephony/data/QualifiedNetworksService;)Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 361
    return-void
.end method
