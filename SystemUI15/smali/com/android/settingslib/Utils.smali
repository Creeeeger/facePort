.class public final Lcom/android/settingslib/Utils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field static final STORAGE_MANAGER_ENABLED_PROPERTY:Ljava/lang/String; = "ro.storage_manager.enabled"

.field public static final WIFI_PIE:[I

.field public static sDefaultWebViewPackageName:Ljava/lang/String;

.field public static sPermissionControllerPackageName:Ljava/lang/String;

.field public static sServicesSystemSharedLibPackageName:Ljava/lang/String;

.field public static sSharedSystemSharedLibPackageName:Ljava/lang/String;

.field public static sSystemSignature:[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0x7f081047

    const v1, 0x7f081048

    const v2, 0x7f081046

    const v3, 0x7f081049

    const v4, 0x7f08104a

    filled-new-array {v2, v0, v1, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/Utils;->WIFI_PIE:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Lcom/android/launcher3/icons/FastBitmapDrawable;
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    goto :goto_0

    :catch_0
    :cond_2
    move v2, v1

    :goto_0
    invoke-static {p0}, Lcom/android/launcher3/icons/IconFactory;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/IconFactory;

    move-result-object v3

    :try_start_1
    new-instance v4, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    invoke-direct {v4}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;-><init>()V

    new-instance v5, Lcom/android/launcher3/util/UserIconInfo;

    invoke-direct {v5, p1, v2}, Lcom/android/launcher3/util/UserIconInfo;-><init>(Landroid/os/UserHandle;I)V

    iput-object v5, v4, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserIconInfo:Lcom/android/launcher3/util/UserIconInfo;

    invoke-virtual {v3, v0, v4}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    invoke-virtual {p1, v1, p0}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(ILandroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Lcom/android/launcher3/icons/IconFactory;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v3}, Lcom/android/launcher3/icons/IconFactory;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public static getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 0

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public static getColorAttrDefaultColor(Landroid/content/Context;II)I
    .locals 0

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static getColorStateListDefaultColor(ILandroid/content/Context;)I
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method public static getThemeAttr(ILandroid/content/Context;)I
    .locals 0

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static isInService(Landroid/telephony/ServiceState;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_3

    :cond_1
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-nez p0, :cond_2

    move p0, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_3

    move v1, v0

    :cond_3
    const/4 p0, 0x3

    if-eq v1, p0, :cond_5

    if-eq v1, v3, :cond_5

    if-ne v1, v2, :cond_4

    goto :goto_1

    :cond_4
    return v3

    :cond_5
    :goto_1
    return v0
.end method

.method public static isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 6

    sget-object v0, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    new-array v0, v2, [Landroid/content/pm/Signature;

    :try_start_0
    const-string v4, "android"

    const/16 v5, 0x40

    invoke-virtual {p1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    aget-object v4, v4, v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v4, v1

    :goto_0
    aput-object v4, v0, v3

    sput-object v0, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    :cond_1
    sget-object v0, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v0, v0, v3

    if-eqz v0, :cond_3

    iget-object v4, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_2

    array-length v5, v4

    if-lez v5, :cond_2

    aget-object v4, v4, v3

    goto :goto_1

    :cond_2
    move-object v4, v1

    :goto_1
    invoke-virtual {v0, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_3
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/android/settingslib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    :cond_4
    sget-object v0, Lcom/android/settingslib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    :cond_5
    sget-object v0, Lcom/android/settingslib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getSharedSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settingslib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    :cond_6
    sget-object p1, Lcom/android/settingslib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    sget-object p1, Lcom/android/settingslib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    sget-object p1, Lcom/android/settingslib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, "com.android.printspooler"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    invoke-static {}, Landroid/webkit/Flags;->updateServiceV2()Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lcom/android/settingslib/Utils;->sDefaultWebViewPackageName:Ljava/lang/String;

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {}, Landroid/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Landroid/webkit/WebViewUpdateManager;->getInstance()Landroid/webkit/WebViewUpdateManager;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/webkit/WebViewUpdateManager;->getDefaultWebViewPackage()Landroid/webkit/WebViewProviderInfo;

    move-result-object v1

    goto :goto_2

    :cond_8
    :try_start_1
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1}, Landroid/webkit/IWebViewUpdateService;->getDefaultWebViewPackage()Landroid/webkit/WebViewProviderInfo;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    const-string v0, "Utils"

    const-string v4, "RemoteException when trying to fetch default WebView package Name"

    invoke-static {v0, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_2
    if-eqz v1, :cond_a

    iget-object p1, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    sput-object p1, Lcom/android/settingslib/Utils;->sDefaultWebViewPackageName:Ljava/lang/String;

    :cond_a
    sget-object p1, Lcom/android/settingslib/Utils;->sDefaultWebViewPackageName:Ljava/lang/String;

    :goto_3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    :cond_b
    const p1, 0x104033f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_4

    :cond_c
    move v2, v3

    :cond_d
    :goto_4
    return v2
.end method
