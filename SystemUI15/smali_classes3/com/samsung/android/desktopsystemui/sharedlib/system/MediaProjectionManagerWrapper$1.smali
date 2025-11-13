.class Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper$1;
.super Landroid/media/projection/MediaProjectionManager$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;

    invoke-direct {p0}, Landroid/media/projection/MediaProjectionManager$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 3

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "disable_screen_share_protections_for_apps_and_notifications"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    :cond_0
    const-string p1, "disableScreenShareProtections "

    const-string v2, "[DS]MediaProjectionManagerWrapper"

    invoke-static {p1, v2, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;->access$000(Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper$MediaProjectionCallbacks;

    invoke-interface {p1, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper$MediaProjectionCallbacks;->updateMediaProjection(Z)V

    goto :goto_0

    :cond_2
    const-string p0, "Screen Recording Service Started"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;

    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;->access$000(Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper$MediaProjectionCallbacks;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/MediaProjectionManagerWrapper$MediaProjectionCallbacks;->updateMediaProjection(Z)V

    goto :goto_0

    :cond_0
    const-string p0, "[DS]MediaProjectionManagerWrapper"

    const-string p1, "Screen Recording Service Stoped"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
