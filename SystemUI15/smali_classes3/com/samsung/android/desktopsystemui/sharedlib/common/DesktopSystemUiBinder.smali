.class public Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final SYSTEMUI_DESKTOP_PACKAGE:Ljava/lang/String; = "com.sec.android.dexsystemui"

.field private static final SYSTEMUI_DESKTOP_SERVICE:Ljava/lang/String; = "com.sec.android.dexsystemui.services.desktopbar.DesktopBarService"

.field private static final TAG:Ljava/lang/String; = "DesktopSystemUIBinder"


# instance fields
.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

.field private mIDesktopCallback:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private final mWallpaperService:Landroid/app/IWallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)V

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "wallpaper"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mWallpaperService:Landroid/app/IWallpaperManager;

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$KeyguardWallpaperController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$KeyguardWallpaperController;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;)V

    invoke-interface {p1, v0}, Landroid/app/IWallpaperManager;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mIDesktopCallback:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->isDesktopMode()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->start()V

    return-void
.end method

.method private isDesktopMode()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mContext:Landroid/content/Context;

    const-class v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private start()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mIDesktopCallback:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;

    invoke-virtual {p0, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->start(Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;)V

    return-void
.end method


# virtual methods
.method public isDesktopBarConnected()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyPrivacyItemsChanged(Z)V
    .locals 3

    const-string v0, "notifyPrivacyItemsChanged - visible = "

    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "DesktopSystemUIBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->notifyPrivacyItemsChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopSystemUIBinder"

    const-string v1, "onDismiss() keyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    invoke-interface {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->onDismiss()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onKeyguardWallpaperChanged()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopSystemUIBinder"

    const-string v1, "onKeyguardWallpaperChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    invoke-interface {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->onKeyguardWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onLockout(ZLandroid/os/Bundle;)V
    .locals 3

    const-string v0, "onLockout() lockout="

    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "DesktopSystemUIBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setLockout(ZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onShow(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopSystemUIBinder"

    const-string v1, "onShow() keyguard."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->onShow(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onUpdate(ILandroid/os/Bundle;)V
    .locals 3

    const-string v0, "onUpdate() type="

    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "DesktopSystemUIBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->onUpdate(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public registerCallback(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAirplaneMode(ZI)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setAirplaneMode(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setBtTetherIcon(ZI)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setBtTetherIcon(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setConnectedDeviceListForGroup(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopSystemUIBinder"

    const-string/jumbo v1, "setConnectedDeviceListForGroup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setConnectedDeviceListForGroup(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setMPTCPIcon(ZIII)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setMPTCPIcon(ZIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setMobileIcon(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setMobileIcon(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setOccluded(Z)V
    .locals 3

    const-string/jumbo v0, "setOccluded() occluded="

    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "DesktopSystemUIBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setOccluded(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setSubs()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopSystemUIBinder"

    const-string/jumbo v1, "setSubs"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    invoke-interface {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setSubs()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setWifiIcon(ZII)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setWifiIcon(ZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public start(Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;)V
    .locals 5

    const-string v0, "DesktopSystemUIBinder"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.dexsystemui"

    const-string v3, "com.sec.android.dexsystemui.services.desktopbar.DesktopBarService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    const v3, 0x2000001

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mIDesktopCallback:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;

    return-void
.end method

.method public stop()V
    .locals 3

    const-string/jumbo v0, "stop"

    const-string v1, "DesktopSystemUIBinder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "mDesktopBar is stopped"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    invoke-interface {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SystemUIDesktop unbindService Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public unregisterCallback(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
