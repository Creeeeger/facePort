.class public final Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# instance fields
.field public final notiCenterPlugin:Lcom/android/systemui/noticenter/NotiCenterPlugin;


# direct methods
.method public constructor <init>(Lcom/android/systemui/noticenter/NotiCenterPlugin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->notiCenterPlugin:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    return-void
.end method


# virtual methods
.method public final onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 2

    check-cast p1, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    sget-object p2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPluginConnected : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->notiCenterPlugin:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p1, Lcom/android/systemui/noticenter/NotiCenterPlugin;->plugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->isNotiCenterConnected:Z

    sget-object p2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->notiCenterCallback:Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1;

    invoke-interface {p1, p2}, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;->setCallback(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;)V

    new-instance p1, Landroid/content/ComponentName;

    const-string p2, "com.samsung.systemui.notilus"

    const-string v0, "com.samsung.systemui.notilus.service.NotificationListener"

    invoke-direct {p1, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->packageManager:Landroid/content/pm/PackageManager;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1, p0, p0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_0
    return-void
.end method

.method public final onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V
    .locals 2

    check-cast p1, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    sget-object p2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPluginDisconnected : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->notiCenterPlugin:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    sput-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->plugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->isNotiCenterConnected:Z

    sget-object p1, Lcom/android/systemui/noticenter/NotiCenterPlugin;->notiCenterCallback:Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1;

    invoke-virtual {p1, p0}, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1;->onChangedVisibilityOnKeyguard(Z)V

    invoke-virtual {p1, p0}, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1;->onNotiStarPanelShowOnKeyguard(Z)V

    invoke-virtual {p1, p0}, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1;->onNoclearUpdate(Z)V

    return-void
.end method
