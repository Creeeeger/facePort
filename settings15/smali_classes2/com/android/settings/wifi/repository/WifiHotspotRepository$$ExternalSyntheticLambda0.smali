.class public final synthetic Lcom/android/settings/wifi/repository/WifiHotspotRepository$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SoftApCallback;

    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SoftApCallback;->this$0:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mStartTetheringCallback:Lcom/android/settings/wifi/repository/WifiHotspotRepository$StartTetheringCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$StartTetheringCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository$StartTetheringCallback;-><init>(Lcom/android/settings/wifi/repository/WifiHotspotRepository;)V

    iput-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mStartTetheringCallback:Lcom/android/settings/wifi/repository/WifiHotspotRepository$StartTetheringCallback;

    :cond_0
    const-string v0, "startTethering()"

    invoke-static {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mTetheringManager:Landroid/net/TetheringManager;

    iget-object v1, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mStartTetheringCallback:Lcom/android/settings/wifi/repository/WifiHotspotRepository$StartTetheringCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/net/TetheringManager;->startTethering(ILjava/util/concurrent/Executor;Landroid/net/TetheringManager$StartTetheringCallback;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->setRestarting(Z)V

    const-string v0, "startTethering()"

    invoke-static {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mTetheringManager:Landroid/net/TetheringManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/TetheringManager;->stopTethering(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
