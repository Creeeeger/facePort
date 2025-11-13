.class public final Lcom/android/systemui/doze/PluginAODManager$9;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/PluginAODManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/PluginAODManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$9;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MSG_EXPAND_NOTI_PANEL: mDozing="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$9;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-boolean v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozing:Z

    const-string v2, "PluginAODManager"

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozing:Z

    if-nez v0, :cond_3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/service/notification/StatusBarNotification;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    const-string v1, "DozeServiceHost"

    if-nez v0, :cond_1

    const-string p0, "animateExpandNotificationsPanel() called before initialize(), return"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "animateExpandNotificationsPanel sbn="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-nez p1, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0, v3, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->animateExpandNotificationsPanel(Landroid/service/notification/StatusBarNotification;Z)V

    :cond_3
    :goto_1
    return-void
.end method
