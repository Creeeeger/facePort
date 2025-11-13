.class public final synthetic Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "OverviewProxyService"

    const-string v0, "Failed to stop screen pinning"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    sget-object p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->sInstance:Lcom/samsung/android/systemui/multistar/MultiStarManager$1;

    invoke-virtual {p0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;->onLongPressRecents()Z

    move-result p0

    sput-boolean p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->sRecentKeyConsumed:Z

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
