.class Lcom/android/server/DrmMediaResourceHelper$2;
.super Ljava/lang/Object;
.source "DrmEventService.java"

# interfaces
.implements Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DrmMediaResourceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/DrmMediaResourceHelper;


# direct methods
.method constructor blacklist <init>(Lcom/android/server/DrmMediaResourceHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAdd(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v0}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetTAG(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdd size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->getPid()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;

    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->isSecured()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;

    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->isEncoder()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v2, v1}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$misResourcePresent(Lcom/android/server/DrmMediaResourceHelper;I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v2}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetTAG(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAdd secure = true, pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, v1, v3}, Landroid/drm/DrmManagerClient;->toggleCPUBoost(IZ)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v3, v1}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$maddPIDToBoostedList(Lcom/android/server/DrmMediaResourceHelper;I)Z

    iget-object v3, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v3}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetTAG(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAdd ret of toggle CPU boost to ON =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public whitelist onError(Lcom/samsung/android/media/SemMediaResourceHelper;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v0}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetTAG(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Onerror "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onRemove(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v1}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetBoostedPIDs(Lcom/android/server/DrmMediaResourceHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v1}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetTAG(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onRemove size = 0 (All resources removed)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v1}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetBoostedPIDs(Lcom/android/server/DrmMediaResourceHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, v3, v0}, Landroid/drm/DrmManagerClient;->toggleCPUBoost(IZ)Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v5, v3}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$mremovePID(Lcom/android/server/DrmMediaResourceHelper;I)V

    iget-object v5, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v5}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetTAG(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onRemove toggle CPU boost to OFF for pid =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v2}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetTAG(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onRemove making Dpdrm to 0  at first point "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient;->dpDRM(I)V

    goto/16 :goto_5

    :cond_1
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v1}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetTAG(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRemove size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v3}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetBoostedPIDs(Lcom/android/server/DrmMediaResourceHelper;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v4}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetBoostedPIDs(Lcom/android/server/DrmMediaResourceHelper;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;

    invoke-virtual {v6}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;->getPid()I

    move-result v7

    if-ne v7, v4, :cond_2

    const/4 v5, 0x1

    goto :goto_3

    :cond_2
    goto :goto_2

    :cond_3
    :goto_3
    if-nez v5, :cond_4

    sget-object v6, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v6, v4, v0}, Landroid/drm/DrmManagerClient;->toggleCPUBoost(IZ)Z

    move-result v6

    iget-object v7, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v7}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetTAG(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onRemove toggle CPU boost to OFF for pid for multiple objs =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v4, v3}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$mremovePID(Lcom/android/server/DrmMediaResourceHelper;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v2}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetBoostedPIDs(Lcom/android/server/DrmMediaResourceHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/server/DrmMediaResourceHelper$2;->this$0:Lcom/android/server/DrmMediaResourceHelper;

    invoke-static {v2}, Lcom/android/server/DrmMediaResourceHelper;->-$$Nest$fgetTAG(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onRemove making Dpdrm to 0 second point "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient;->dpDRM(I)V

    goto :goto_6

    :cond_7
    :goto_5
    nop

    :cond_8
    :goto_6
    return-void
.end method
