.class public final Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getConnectionListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# instance fields
.field public final synthetic $slotId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;


# direct methods
.method public constructor <init>(ILcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getConnectionListener$1;->$slotId:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getConnectionListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImsManager onConnected, slotId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getConnectionListener$1;->$slotId:I

    const-string v2, "ImsRegStateUtil"

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getConnectionListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsManagers:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/ImsManager;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;

    invoke-direct {v2, v1, p0}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;-><init>(ILcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;)V

    invoke-virtual {v0, v2, v1}, Lcom/sec/ims/ImsManager;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    :cond_0
    return-void
.end method

.method public final onDisconnected()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImsManager onDisconnected, slotId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getConnectionListener$1;->$slotId:I

    const-string v2, "ImsRegStateUtil"

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getConnectionListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsManagers:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/ImsManager;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;

    invoke-direct {v2, v1, p0}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;-><init>(ILcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;)V

    invoke-virtual {v0, v2, v1}, Lcom/sec/ims/ImsManager;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegState:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voWifiRegState:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voLTERegState:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->ePDGRegState:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->ePDGConnected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->_ePDGConnected:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
