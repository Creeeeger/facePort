.class public final Lcom/android/settings/applications/appcompat/UserAspectRatioManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final KEY_ENABLE_USER_ASPECT_RATIO_SETTINGS:Ljava/lang/String; = "enable_app_compat_aspect_ratio_user_settings"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIPm:Landroid/content/pm/IPackageManager;

.field public final mIsUserMinAspectRatioAppDefaultFlagEnabled:Z

.field public final mUserAspectRatioA11yMap:Ljava/util/Map;

.field public final mUserAspectRatioMap:Ljava/util/Map;

.field public final mUserAspectRatioOrder:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/window/flags/Flags;->userMinAspectRatioAppDefault()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mIsUserMinAspectRatioAppDefaultFlagEnabled:Z

    iput-object p1, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mIPm:Landroid/content/pm/IPackageManager;

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mUserAspectRatioA11yMap:Ljava/util/Map;

    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mUserAspectRatioOrder:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0300b5

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0300b6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    array-length v0, p2

    array-length v1, p1

    if-ne v0, v1, :cond_4

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    aget v3, p1, v2

    aget-object v4, p2, v2

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->getAspectRatioStringOrDefault(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-eqz v6, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v1

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget-object v7, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mContext:Landroid/content/Context;

    const v8, 0x7f1430e4

    filled-new-array {v6, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/settings/Utils;->createAccessibleSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mUserAspectRatioA11yMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mUserAspectRatioOrder:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mIsUserMinAspectRatioAppDefaultFlagEnabled:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mUserAspectRatioOrder:Landroid/util/SparseIntArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {p2, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object p2, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mUserAspectRatioA11yMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mUserAspectRatioA11yMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mUserAspectRatioA11yMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iput-object v0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mUserAspectRatioMap:Ljava/util/Map;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "config_userAspectRatioOverrideValues options must have USER_MIN_ASPECT_RATIO_UNSET value"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "config_userAspectRatioOverride options cannot be different length"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isFeatureEnabled(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110037

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    const-string v0, "window_manager"

    const-string v1, "enable_app_compat_aspect_ratio_user_settings"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static readComponentProperty(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final canDisplayAspectRatioUi(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "android.window.PROPERTY_COMPAT_ALLOW_USER_ASPECT_RATIO_OVERRIDE"

    invoke-static {v0, v1, v2}, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->readComponentProperty(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 p1, 0x1

    xor-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getAccessibleEntry(ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-nez p1, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->isOverrideToFullscreenEnabled(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x6

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->getAccessibleEntry(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mUserAspectRatioA11yMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->getUserMinAspectRatioEntry(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    :goto_0
    return-object p0
.end method

.method public final getAspectRatioStringOrDefault(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mContext:Landroid/content/Context;

    const p1, 0x7f1430df

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mContext:Landroid/content/Context;

    const p1, 0x7f1430e2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mContext:Landroid/content/Context;

    const p1, 0x7f1430dd

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mContext:Landroid/content/Context;

    const p1, 0x7f1430dc

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mContext:Landroid/content/Context;

    const p1, 0x7f1430de

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mContext:Landroid/content/Context;

    const p1, 0x7f1430e1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    iget-object p0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mContext:Landroid/content/Context;

    const p1, 0x7f1430e3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getUserMinAspectRatioEntry(IILjava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mUserAspectRatioMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->getAspectRatioStringOrDefault(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p3}, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->hasAspectRatioOption(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->isOverrideToFullscreenEnabled(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x6

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->getUserMinAspectRatioEntry(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mUserAspectRatioMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public final hasAspectRatioOption(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->isFullscreenOptionEnabled(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mUserAspectRatioMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isFullscreenOptionEnabled(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.window.PROPERTY_COMPAT_ALLOW_USER_ASPECT_RATIO_FULLSCREEN_OVERRIDE"

    invoke-static {v0, p1, v1}, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->readComponentProperty(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110036

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p0, :cond_0

    const-string p0, "window_manager"

    const-string p1, "enable_app_compat_user_aspect_ratio_fullscreen"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isOverrideToFullscreenEnabled(ILjava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.window.PROPERTY_COMPAT_ALLOW_ORIENTATION_OVERRIDE"

    invoke-static {v0, p2, v1}, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->readComponentProperty(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->mIsUserMinAspectRatioAppDefaultFlagEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    invoke-virtual {p0, v1, p2}, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->hasAspectRatioOption(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-wide/32 v0, 0x1286aeb5

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-static {v0, v1, p2, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
