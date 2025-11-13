.class final Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$W;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$W;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$W;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$IVolumeControllerCallback;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$IVolumeControllerCallback;->volumeControllerCallback(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string/jumbo v2, "volume_star_enabled"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$W;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$IVolumeControllerCallback;

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$IVolumeControllerCallback;->volumeControllerCallback(ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    return-void
.end method
