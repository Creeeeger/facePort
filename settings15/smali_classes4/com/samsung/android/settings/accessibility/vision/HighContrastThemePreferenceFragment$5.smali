.class public final Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string/jumbo p1, "theme manager service connected"

    const-string v0, "HighContrastThemePreferenceFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;

    sget v1, Lcom/samsung/android/thememanager/IThemeManager$Stub;->$r8$clinit:I

    const-string v1, "com.samsung.android.thememanager.IThemeManager"

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/samsung/android/thememanager/IThemeManager;

    if-eqz v3, :cond_1

    move-object p2, v2

    check-cast p2, Lcom/samsung/android/thememanager/IThemeManager;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/samsung/android/thememanager/IThemeManager$Stub$Proxy;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p2, v2, Lcom/samsung/android/thememanager/IThemeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    move-object p2, v2

    :goto_0
    iput-object p2, p1, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mThemePlatformManager:Lcom/samsung/android/thememanager/IThemeManager;

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mThemePlatformManager:Lcom/samsung/android/thememanager/IThemeManager;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->applyThemeObserver:Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$6;

    check-cast p1, Lcom/samsung/android/thememanager/IThemeManager$Stub$Proxy;

    iget-object p2, p1, Lcom/samsung/android/thememanager/IThemeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {p2}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object p2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-object p0, p1, Lcom/samsung/android/thememanager/IThemeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x16

    const/4 v1, 0x0

    invoke-interface {p0, p1, p2, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "ServiceConnection exception"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "HighContrastThemePreferenceFragment"

    const-string/jumbo v0, "themeManager service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mThemePlatformManager:Lcom/samsung/android/thememanager/IThemeManager;

    return-void
.end method
