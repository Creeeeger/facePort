.class public Lcom/android/internal/notification/SystemNotificationChannels;
.super Ljava/lang/Object;
.source "SystemNotificationChannels.java"


# static fields
.field public static blacklist ABUSIVE_BACKGROUND_APPS:Ljava/lang/String;

.field public static blacklist ACCESSIBILITY_MAGNIFICATION:Ljava/lang/String;

.field public static blacklist ACCESSIBILITY_SECURITY_POLICY:Ljava/lang/String;

.field public static blacklist ACCOUNT:Ljava/lang/String;

.field public static blacklist ALERTS:Ljava/lang/String;

.field public static blacklist CAR_MODE:Ljava/lang/String;

.field public static blacklist DEVELOPER:Ljava/lang/String;

.field public static blacklist DEVELOPER_IMPORTANT:Ljava/lang/String;

.field public static blacklist DEVICE_ADMIN:Ljava/lang/String;

.field public static blacklist DEVICE_ADMIN_DEPRECATED:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static blacklist DO_NOT_DISTURB:Ljava/lang/String;

.field public static blacklist ETHERNET:Ljava/lang/String;

.field public static blacklist FOREGROUND_SERVICE:Ljava/lang/String;

.field public static blacklist HEAVY_WEIGHT_APP:Ljava/lang/String;

.field public static blacklist MDM_DEXPOLICY:Ljava/lang/String;

.field public static blacklist NETWORK_ALERTS:Ljava/lang/String;

.field public static blacklist NETWORK_AVAILABLE:Ljava/lang/String;

.field public static blacklist NETWORK_STATUS:Ljava/lang/String;

.field public static blacklist PHYSICAL_KEYBOARD:Ljava/lang/String;

.field public static blacklist RETAIL_MODE:Ljava/lang/String;

.field public static blacklist SECURITY:Ljava/lang/String;

.field public static blacklist SYSTEM_CHANGES:Ljava/lang/String;

.field public static blacklist SYSTEM_CHANGES_DEPRECATED:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static blacklist UPDATES:Ljava/lang/String;

.field public static blacklist USB:Ljava/lang/String;

.field public static blacklist VIRTUAL_KEYBOARD:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static blacklist VPN:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "VIRTUAL_KEYBOARD"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->VIRTUAL_KEYBOARD:Ljava/lang/String;

    const-string v0, "PHYSICAL_KEYBOARD"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->PHYSICAL_KEYBOARD:Ljava/lang/String;

    const-string v0, "SECURITY"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->SECURITY:Ljava/lang/String;

    const-string v0, "CAR_MODE"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->CAR_MODE:Ljava/lang/String;

    const-string v0, "ACCOUNT"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->ACCOUNT:Ljava/lang/String;

    const-string v0, "DEVELOPER"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER:Ljava/lang/String;

    const-string v0, "DEVELOPER_IMPORTANT"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER_IMPORTANT:Ljava/lang/String;

    const-string v0, "UPDATES"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->UPDATES:Ljava/lang/String;

    const-string v0, "NETWORK_STATUS"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    const-string v0, "NETWORK_ALERTS"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    const-string v0, "NETWORK_AVAILABLE"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_AVAILABLE:Ljava/lang/String;

    const-string v0, "VPN"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->VPN:Ljava/lang/String;

    const-string v0, "DEVICE_ADMIN"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN_DEPRECATED:Ljava/lang/String;

    const-string v0, "DEVICE_ADMIN_ALERTS"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    const-string v0, "ALERTS"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    const-string v0, "RETAIL_MODE"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->RETAIL_MODE:Ljava/lang/String;

    const-string v0, "USB"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->USB:Ljava/lang/String;

    const-string v0, "FOREGROUND_SERVICE"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->FOREGROUND_SERVICE:Ljava/lang/String;

    const-string v0, "HEAVY_WEIGHT_APP"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->HEAVY_WEIGHT_APP:Ljava/lang/String;

    const-string v0, "SYSTEM_CHANGES"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->SYSTEM_CHANGES_DEPRECATED:Ljava/lang/String;

    const-string v0, "SYSTEM_CHANGES_ALERTS"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->SYSTEM_CHANGES:Ljava/lang/String;

    const-string v0, "DO_NOT_DISTURB"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->DO_NOT_DISTURB:Ljava/lang/String;

    const-string v0, "MDM_DEXPOLICY"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->MDM_DEXPOLICY:Ljava/lang/String;

    const-string v0, "ACCESSIBILITY_MAGNIFICATION"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->ACCESSIBILITY_MAGNIFICATION:Ljava/lang/String;

    const-string v0, "ACCESSIBILITY_SECURITY_POLICY"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->ACCESSIBILITY_SECURITY_POLICY:Ljava/lang/String;

    const-string v0, "ABUSIVE_BACKGROUND_APPS"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->ABUSIVE_BACKGROUND_APPS:Ljava/lang/String;

    const-string v0, "ETHERNET"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->ETHERNET:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createAccountChannelForPackage(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 5

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_0
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/app/NotificationChannel;

    invoke-static {p2}, Lcom/android/internal/notification/SystemNotificationChannels;->newAccountChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, p0, p1, v1}, Landroid/app/INotificationManager;->createNotificationChannelsForPackage(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static blacklist createAll(Landroid/content/Context;)V
    .locals 27

    move-object/from16 v0, p0

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/app/NotificationChannel;

    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->PHYSICAL_KEYBOARD:Ljava/lang/String;

    const v5, 0x1040919

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v3, v4, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroid/app/NotificationChannel;

    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->SECURITY:Ljava/lang/String;

    const v8, 0x104091b

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/app/NotificationChannel;

    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->CAR_MODE:Ljava/lang/String;

    const v9, 0x1040909

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v7, v4}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p0 .. p0}, Lcom/android/internal/notification/SystemNotificationChannels;->newAccountChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroid/app/NotificationChannel;

    sget-object v9, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER:Ljava/lang/String;

    const v10, 0x104090a

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v8, v4}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Landroid/app/NotificationChannel;

    sget-object v10, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER_IMPORTANT:Ljava/lang/String;

    const v11, 0x104090b

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    invoke-direct {v9, v10, v11, v12}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v8, v4}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Landroid/app/NotificationChannel;

    sget-object v11, Lcom/android/internal/notification/SystemNotificationChannels;->UPDATES:Ljava/lang/String;

    const v13, 0x1040920

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v11, v13, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v11, Landroid/app/NotificationChannel;

    sget-object v13, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    const v14, 0x1040918

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v13, v14, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v11, v4}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    const v15, 0x1040916

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15, v12}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v13, v4}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Landroid/app/NotificationChannel;

    sget-object v15, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_AVAILABLE:Ljava/lang/String;

    const v12, 0x1040917

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v14, v15, v12, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v12, v14

    invoke-virtual {v12, v4}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Landroid/app/NotificationChannel;

    sget-object v15, Lcom/android/internal/notification/SystemNotificationChannels;->VPN:Ljava/lang/String;

    const v4, 0x1040923

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v14, v15, v4, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v4, v14

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Landroid/app/NotificationChannel;

    sget-object v15, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Lcom/android/internal/notification/SystemNotificationChannels;->getDeviceAdminNotificationChannelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v18, v3

    const/4 v3, 0x4

    invoke-direct {v14, v15, v6, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v3, v14

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    const v15, 0x1040907

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v3

    const/4 v3, 0x3

    invoke-direct {v6, v14, v15, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Landroid/app/NotificationChannel;

    sget-object v15, Lcom/android/internal/notification/SystemNotificationChannels;->USB:Ljava/lang/String;

    const v3, 0x1040921

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v4

    const/4 v4, 0x1

    invoke-direct {v14, v15, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v3, v14

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->FOREGROUND_SERVICE:Ljava/lang/String;

    const v15, 0x1040912

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v22, v3

    const/4 v3, 0x2

    invoke-direct {v4, v14, v15, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->HEAVY_WEIGHT_APP:Ljava/lang/String;

    const v15, 0x1040913

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v23, v3

    const/4 v3, 0x3

    invoke-direct {v4, v14, v15, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v3, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v14, 0x4

    invoke-virtual {v4, v14}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    const/16 v14, 0xa

    invoke-virtual {v4, v14}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    const/4 v14, 0x0

    invoke-virtual {v3, v14, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/app/NotificationChannel;

    sget-object v15, Lcom/android/internal/notification/SystemNotificationChannels;->SYSTEM_CHANGES:Ljava/lang/String;

    const v14, 0x104091f

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v25, v3

    const/4 v3, 0x3

    invoke-direct {v4, v15, v14, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v3, v4

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v14, 0x4

    invoke-virtual {v4, v14}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    const/4 v14, 0x5

    invoke-virtual {v4, v14}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    const/4 v14, 0x0

    invoke-virtual {v3, v14, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->DO_NOT_DISTURB:Ljava/lang/String;

    const v15, 0x104090f

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v20, v3

    const/4 v3, 0x2

    invoke-direct {v4, v14, v15, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->ACCESSIBILITY_MAGNIFICATION:Ljava/lang/String;

    const v15, 0x1040904

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v24, v3

    const/4 v3, 0x4

    invoke-direct {v4, v14, v15, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->ACCESSIBILITY_SECURITY_POLICY:Ljava/lang/String;

    const v15, 0x1040905

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v3

    const/4 v3, 0x2

    invoke-direct {v4, v14, v15, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->MDM_DEXPOLICY:Ljava/lang/String;

    const v15, 0x104090d

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v26, v3

    const/4 v3, 0x4

    invoke-direct {v4, v14, v15, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/app/NotificationChannel;

    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->ABUSIVE_BACKGROUND_APPS:Ljava/lang/String;

    const v14, 0x1040903

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    invoke-direct {v3, v4, v14, v15}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->ETHERNET:Ljava/lang/String;

    move-object/from16 v16, v3

    const v3, 0x10404d7

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v14, v3, v15}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    return-void
.end method

.method private static blacklist getDeviceAdminNotificationChannelName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Lcom/android/internal/notification/SystemNotificationChannels$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/notification/SystemNotificationChannels$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const-string v3, "Core.NOTIFICATION_CHANNEL_DEVICE_ADMIN"

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$getDeviceAdminNotificationChannelName$0(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x104090c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist newAccountChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;
    .locals 4

    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->ACCOUNT:Ljava/lang/String;

    const v2, 0x1040906

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public static blacklist removeDeprecated(Landroid/content/Context;)V
    .locals 2

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->VIRTUAL_KEYBOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN_DEPRECATED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->SYSTEM_CHANGES_DEPRECATED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->RETAIL_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    return-void
.end method
