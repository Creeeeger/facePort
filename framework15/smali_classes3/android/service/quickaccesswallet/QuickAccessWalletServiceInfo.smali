.class Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;
.super Ljava/lang/Object;
.source "QuickAccessWalletServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;,
        Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "QAWalletSInfo"

.field private static final blacklist TAG_WALLET_SERVICE:Ljava/lang/String; = "quickaccesswallet-service"


# instance fields
.field private final blacklist mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private final blacklist mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

.field private final blacklist mTileServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;


# direct methods
.method private constructor blacklist <init>(Landroid/content/pm/ServiceInfo;Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iput-object p2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    iput-object p3, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mTileServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;

    return-void
.end method

.method private static blacklist getDefaultPaymentApp(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nfc_payment_default_component"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method private static blacklist getDefaultWalletApp(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-class v2, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/role/RoleManager;

    const-string v3, "android.app.role.WALLET"

    invoke-virtual {v2, v3}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private static blacklist getWalletServiceInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ServiceInfo;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.quickaccesswallet.QuickAccessWalletService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const v2, 0xd0080

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    :goto_0
    return-object v2
.end method

.method private static blacklist isWalletRoleAvailable(Landroid/content/Context;)Z
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-class v2, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/role/RoleManager;

    const-string v3, "android.app.role.WALLET"

    invoke-virtual {v2, v3}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method static blacklist parseServiceMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;
    .locals 17

    move-object/from16 v1, p1

    const-string v2, "QAWalletSInfo"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    nop

    const-string v0, "android.quickaccesswallet"

    invoke-virtual {v1, v3, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$smempty()Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    move-object v5, v0

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    const/4 v0, 0x2

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    if-eq v6, v0, :cond_1

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v6, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v8, "quickaccesswallet-service"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x0

    :try_start_1
    sget-object v10, Lcom/android/internal/R$styleable;->QuickAccessWalletService:[I

    invoke-virtual {v5, v8, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    move-object v9, v10

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    const/4 v0, 0x3

    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    const/16 v16, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata-IA;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_2

    :try_start_2
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    nop

    throw v0

    :cond_4
    const-string v0, "Meta-data does not start with quickaccesswallet-service tag"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    nop

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v5, "Error parsing quickaccesswallet service meta-data"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-static {}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$smempty()Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseTileServiceMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "android.quickaccesswallet.tile"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v3

    const-string v4, "QAWalletSInfo"

    const-string v5, "Error parsing quickaccesswallet tile service meta-data"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v2
.end method

.method static blacklist tryCreate(Landroid/content/Context;)Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->isWalletRoleAvailable(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getDefaultWalletApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getDefaultPaymentApp(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getWalletServiceInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v2

    :cond_2
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v4, "android.permission.BIND_QUICK_ACCESS_WALLET_SERVICE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    filled-new-array {v3, v5, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%s.%s does not require permission %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "QAWalletSInfo"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    invoke-static {p0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->parseServiceMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    move-result-object v3

    new-instance v4, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;

    invoke-static {p0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->parseTileServiceMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;-><init>(Landroid/graphics/drawable/Drawable;Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata-IA;)V

    move-object v2, v4

    new-instance v4, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    invoke-direct {v4, v1, v3, v2}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;)V

    return-object v4
.end method


# virtual methods
.method blacklist getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method blacklist getServiceLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method blacklist getSettingsActivity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$fgetmSettingsActivity(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getShortcutLongLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$fgetmShortcutLongLabel(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$fgetmShortcutLongLabel(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method blacklist getShortcutShortLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$fgetmShortcutShortLabel(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$fgetmShortcutShortLabel(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method blacklist getTileIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mTileServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;->-$$Nest$fgetmTileIcon(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method blacklist getWalletActivity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$fgetmTargetActivity(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getWalletLogo(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ServiceInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method
