.class public final synthetic Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/util/Collection;

.field public final synthetic f$3:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Collection;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils$$ExternalSyntheticLambda2;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils$$ExternalSyntheticLambda2;->f$2:Ljava/util/Collection;

    iput-object p4, p0, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils$$ExternalSyntheticLambda2;->f$3:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils$$ExternalSyntheticLambda2;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils$$ExternalSyntheticLambda2;->f$2:Ljava/util/Collection;

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils$$ExternalSyntheticLambda2;->f$3:Landroid/os/Handler;

    const-string v3, "ScspUtils"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "saveAllResources: uri = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v4}, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils;->makeAllResourceData(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v4

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils$$ExternalSyntheticLambda1;-><init>(Ljava/util/Collection;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    const-string p0, "saveAllResources: uri is null"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method
