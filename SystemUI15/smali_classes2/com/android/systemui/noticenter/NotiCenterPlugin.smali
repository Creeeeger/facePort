.class public final Lcom/android/systemui/noticenter/NotiCenterPlugin;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

.field public static final TAG:Ljava/lang/String;

.field public static centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public static clearableNotifications:Z

.field public static final handler:Landroid/os/Handler;

.field public static isNotiCenterConnected:Z

.field public static mListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotilusCoordinator;

.field public static noclearAppList:Ljava/util/HashSet;

.field public static noclearEnabled:Z

.field public static final notiCenterCallback:Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1;

.field public static final notiCenterPluginListener:Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;

.field public static packageManager:Landroid/content/pm/PackageManager;

.field public static plugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

.field public static showNotilusOnKeyguard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-direct {v0}, Lcom/android/systemui/noticenter/NotiCenterPlugin;-><init>()V

    sput-object v0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    const-string v1, "NotiStar"

    sput-object v1, Lcom/android/systemui/noticenter/NotiCenterPlugin;->TAG:Ljava/lang/String;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    sput-object v2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1;

    invoke-direct {v2}, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1;-><init>()V

    sput-object v2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->notiCenterCallback:Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1;

    new-instance v2, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;

    invoke-direct {v2, v0}, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;-><init>(Lcom/android/systemui/noticenter/NotiCenterPlugin;)V

    sput-object v2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->notiCenterPluginListener:Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    const-string v0, "NotiCenterPlugin init"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNotiCenterPluginConnected()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->isNotiCenterConnected:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->plugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p0, " NotiCenterPlugin: "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->showNotilusOnKeyguard:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  showNotilusOnKeyguard : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->isNotiCenterConnected:Z

    const-string v0, " isNotiCenterConnected : "

    invoke-static {v0, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->plugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;->getVersion()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_NOTISTAR:I

    if-lt p0, v0, :cond_1

    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->plugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method
