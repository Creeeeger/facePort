.class public final synthetic Lcom/android/systemui/cover/CoverScreenManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/cover/CoverScreenManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/cover/CoverScreenManager;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/cover/CoverScreenManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/cover/CoverScreenManager$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/cover/CoverScreenManager;

    monitor-enter v0

    :try_start_0
    iget-object p0, v0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/cover/CoverScreenManager;->startCoverHomeActivity(Landroid/view/Display;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "CoverScreenManager"

    const-string v1, "addPluginListener() PluginFaceWidget is connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsAttached:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/cover/CoverScreenManager;->requestPluginConnection(Lcom/samsung/android/cover/CoverState;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
