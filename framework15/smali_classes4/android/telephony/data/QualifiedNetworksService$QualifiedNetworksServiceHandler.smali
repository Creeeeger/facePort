.class Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;
.super Landroid/os/Handler;
.source "QualifiedNetworksService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/QualifiedNetworksService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QualifiedNetworksServiceHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/data/QualifiedNetworksService;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/data/QualifiedNetworksService;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v1}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->-$$Nest$monUpdateHandoverEnabled(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;I)V

    goto/16 :goto_1

    :pswitch_1
    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->-$$Nest$monReconnectQualifiedNetworkType(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;II)V

    goto/16 :goto_1

    :pswitch_2
    if-nez v1, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;

    invoke-static {v1, v2}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->-$$Nest$monRequestNetworkValidation(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;)V

    goto/16 :goto_1

    :pswitch_3
    if-eqz v1, :cond_8

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->reportEmergencyDataNetworkPreferredTransportChanged(I)V

    goto/16 :goto_1

    :pswitch_4
    if-eqz v1, :cond_8

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->reportThrottleStatusChanged(Ljava/util/List;)V

    goto/16 :goto_1

    :pswitch_5
    if-nez v1, :cond_3

    goto/16 :goto_1

    :cond_3
    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [I

    invoke-static {v1, v2, v3}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->-$$Nest$monUpdateQualifiedNetworkTypes(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;I[I)V

    goto/16 :goto_1

    :pswitch_6
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v3}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v3}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->close()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v2}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    goto :goto_1

    :pswitch_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->close()V

    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v2}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    :pswitch_8
    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v2}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network availability provider for slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already existed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$mloge(Landroid/telephony/data/QualifiedNetworksService;Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-virtual {v2, v0}, Landroid/telephony/data/QualifiedNetworksService;->onCreateNetworkAvailabilityProvider(I)Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    invoke-static {v2}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/data/IQualifiedNetworksServiceCallback;

    invoke-static {v1, v2}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->-$$Nest$mregisterForQualifiedNetworkTypesChanged(Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;Landroid/telephony/data/IQualifiedNetworksServiceCallback;)V

    goto :goto_1

    :cond_7
    iget-object v2, p0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->this$0:Landroid/telephony/data/QualifiedNetworksService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create network availability provider. slot index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/data/QualifiedNetworksService;->-$$Nest$mloge(Landroid/telephony/data/QualifiedNetworksService;Ljava/lang/String;)V

    nop

    :cond_8
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
