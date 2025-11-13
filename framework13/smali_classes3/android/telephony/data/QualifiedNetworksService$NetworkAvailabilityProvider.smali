.class public abstract Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;
.super Ljava/lang/Object;
.source "QualifiedNetworksService.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/QualifiedNetworksService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "NetworkAvailabilityProvider"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/telephony/data/IQualifiedNetworksServiceCallback;

.field private blacklist mQualifiedNetworkTypesList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private final blacklist mSlotIndex:I

.field final synthetic blacklist this$0:Landroid/telephony/data/QualifiedNetworksService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$monUpdateHandoverEnabled(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->onUpdateHandoverEnabled(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monUpdateQualifiedNetworkTypes(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;I[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->onUpdateQualifiedNetworkTypes(I[I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterForQualifiedNetworkTypesChanged(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;Landroid/telephony/data/IQualifiedNetworksServiceCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->registerForQualifiedNetworkTypesChanged(Landroid/telephony/data/IQualifiedNetworksServiceCallback;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/telephony/data/QualifiedNetworksService;I)V
    .locals 1
    .param p1, "this$0"    # Landroid/telephony/data/QualifiedNetworksService;
    .param p2, "slotIndex"    # I

    .line 106
    iput-object p1, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mQualifiedNetworkTypesList:Landroid/util/SparseArray;

    .line 107
    iput p2, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mSlotIndex:I

    .line 108
    return-void
.end method

.method static synthetic blacklist lambda$updateQualifiedNetworkTypes$0(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 170
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private blacklist onUpdateHandoverEnabled(I)V
    .locals 4
    .param p1, "supportedApnTypes"    # I

    .line 204
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mCallback:Landroid/telephony/data/IQualifiedNetworksServiceCallback;

    if-eqz v0, :cond_0

    .line 206
    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/data/IQualifiedNetworksServiceCallback;->onHandoverEnabledChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call onHandoverEnabledChanged. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$mloge(Landroid/telephony/data/QualifiedNetworksService;Ljava/lang/String;)V

    .line 211
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist onUpdateQualifiedNetworkTypes(I[I)V
    .locals 4
    .param p1, "apnTypes"    # I
    .param p2, "qualifiedNetworkTypes"    # [I

    .line 177
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mQualifiedNetworkTypesList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mCallback:Landroid/telephony/data/IQualifiedNetworksServiceCallback;

    if-eqz v0, :cond_0

    .line 180
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/telephony/data/IQualifiedNetworksServiceCallback;->onQualifiedNetworkTypesChanged(I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call onQualifiedNetworksChanged. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$mloge(Landroid/telephony/data/QualifiedNetworksService;Ljava/lang/String;)V

    .line 185
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist registerForQualifiedNetworkTypesChanged(Landroid/telephony/data/IQualifiedNetworksServiceCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/telephony/data/IQualifiedNetworksServiceCallback;

    .line 119
    iput-object p1, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mCallback:Landroid/telephony/data/IQualifiedNetworksServiceCallback;

    .line 122
    if-eqz p1, :cond_0

    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mQualifiedNetworkTypesList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 125
    :try_start_0
    iget-object v1, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mCallback:Landroid/telephony/data/IQualifiedNetworksServiceCallback;

    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mQualifiedNetworkTypesList:Landroid/util/SparseArray;

    .line 126
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mQualifiedNetworkTypesList:Landroid/util/SparseArray;

    .line 127
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 125
    invoke-interface {v1, v2, v3}, Landroid/telephony/data/IQualifiedNetworksServiceCallback;->onQualifiedNetworkTypesChanged(I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_1

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to call onQualifiedNetworksChanged. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$mloge(Landroid/telephony/data/QualifiedNetworksService;Ljava/lang/String;)V

    .line 123
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract whitelist test-api close()V
.end method

.method public final whitelist getSlotIndex()I
    .locals 1

    .line 114
    iget v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mSlotIndex:I

    return v0
.end method

.method public whitelist reportThrottleStatusChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/ThrottleStatus;",
            ">;)V"
        }
    .end annotation

    .line 195
    .local p1, "statuses":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ThrottleStatus;>;"
    invoke-static {}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportThrottleStatusChanged: statuses size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method public final whitelist updateHandoverEnabled(I)V
    .locals 3
    .param p1, "supportedApnTypes"    # I

    .line 200
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v0}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmHandler(Landroid/telephony/data/QualifiedNetworksService;)Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mSlotIndex:I

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1, p1}, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 201
    return-void
.end method

.method public final whitelist updateQualifiedNetworkTypes(ILjava/util/List;)V
    .locals 4
    .param p1, "apnTypes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 169
    .local p2, "qualifiedNetworkTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    nop

    .line 170
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 171
    .local v0, "qualifiedNetworkTypesArray":[I
    iget-object v1, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v1}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmHandler(Landroid/telephony/data/QualifiedNetworksService;)Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->mSlotIndex:I

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2, p1, v0}, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 173
    return-void
.end method
