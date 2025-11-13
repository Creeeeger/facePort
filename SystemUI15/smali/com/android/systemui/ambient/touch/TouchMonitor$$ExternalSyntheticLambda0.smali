.class public final synthetic Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/ambient/touch/TouchMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ambient/touch/TouchMonitor;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ambient/touch/TouchMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ambient/touch/TouchMonitor;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v0, Lcom/android/systemui/ambient/touch/TouchMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/ambient/touch/TouchMonitor$2;-><init>(Lcom/android/systemui/ambient/touch/TouchMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mGestureExclusionListener:Lcom/android/systemui/ambient/touch/TouchMonitor$2;

    iget-object v1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mWindowManagerService:Landroid/view/IWindowManager;

    iget v2, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mDisplayId:I

    invoke-interface {v1, v0, v2}, Landroid/view/IWindowManager;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->TAG:Ljava/lang/String;

    const-string v1, "Failed to register gesture exclusion listener"

    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mActiveTouchSessions:Ljava/util/HashSet;

    new-instance v0, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mGestureExclusionListener:Lcom/android/systemui/ambient/touch/TouchMonitor$2;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mWindowManagerService:Landroid/view/IWindowManager;

    iget v2, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mDisplayId:I

    invoke-interface {v1, v0, v2}, Landroid/view/IWindowManager;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mGestureExclusionListener:Lcom/android/systemui/ambient/touch/TouchMonitor$2;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterSystemGestureExclusionListener: failed"

    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
