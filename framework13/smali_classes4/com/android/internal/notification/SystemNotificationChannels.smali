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

.field public static blacklist MDO:Ljava/lang/String;

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

.field public static blacklist VPN:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 38
    const-string v0, "VIRTUAL_KEYBOARD"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->VIRTUAL_KEYBOARD:Ljava/lang/String;

    .line 39
    const-string v0, "PHYSICAL_KEYBOARD"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->PHYSICAL_KEYBOARD:Ljava/lang/String;

    .line 40
    const-string v0, "SECURITY"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->SECURITY:Ljava/lang/String;

    .line 41
    const-string v0, "CAR_MODE"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->CAR_MODE:Ljava/lang/String;

    .line 42
    const-string v0, "ACCOUNT"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->ACCOUNT:Ljava/lang/String;

    .line 43
    const-string v0, "DEVELOPER"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER:Ljava/lang/String;

    .line 44
    const-string v0, "DEVELOPER_IMPORTANT"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER_IMPORTANT:Ljava/lang/String;

    .line 45
    const-string v0, "UPDATES"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->UPDATES:Ljava/lang/String;

    .line 46
    const-string v0, "NETWORK_STATUS"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    .line 47
    const-string v0, "NETWORK_ALERTS"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    .line 48
    const-string v0, "NETWORK_AVAILABLE"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_AVAILABLE:Ljava/lang/String;

    .line 49
    const-string v0, "VPN"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->VPN:Ljava/lang/String;

    .line 54
    const-string v0, "DEVICE_ADMIN"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN_DEPRECATED:Ljava/lang/String;

    .line 55
    const-string v0, "DEVICE_ADMIN_ALERTS"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    .line 56
    const-string v0, "ALERTS"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    .line 57
    const-string v0, "RETAIL_MODE"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->RETAIL_MODE:Ljava/lang/String;

    .line 58
    const-string v0, "USB"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->USB:Ljava/lang/String;

    .line 59
    const-string v0, "FOREGROUND_SERVICE"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->FOREGROUND_SERVICE:Ljava/lang/String;

    .line 60
    const-string v0, "HEAVY_WEIGHT_APP"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->HEAVY_WEIGHT_APP:Ljava/lang/String;

    .line 65
    const-string v0, "SYSTEM_CHANGES"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->SYSTEM_CHANGES_DEPRECATED:Ljava/lang/String;

    .line 66
    const-string v0, "SYSTEM_CHANGES_ALERTS"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->SYSTEM_CHANGES:Ljava/lang/String;

    .line 67
    const-string v0, "DO_NOT_DISTURB"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->DO_NOT_DISTURB:Ljava/lang/String;

    .line 69
    const-string v0, "MDM_DEXPOLICY"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->MDM_DEXPOLICY:Ljava/lang/String;

    .line 71
    const-string v0, "ACCESSIBILITY_MAGNIFICATION"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->ACCESSIBILITY_MAGNIFICATION:Ljava/lang/String;

    .line 72
    const-string v0, "ACCESSIBILITY_SECURITY_POLICY"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->ACCESSIBILITY_SECURITY_POLICY:Ljava/lang/String;

    .line 73
    const-string v0, "ABUSIVE_BACKGROUND_APPS"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->ABUSIVE_BACKGROUND_APPS:Ljava/lang/String;

    .line 75
    const-string v0, "MDO"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->MDO:Ljava/lang/String;

    .line 79
    const-string v0, "ETHERNET"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->ETHERNET:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createAccountChannelForPackage(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 280
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 282
    .local v0, "iNotificationManager":Landroid/app/INotificationManager;
    :try_start_0
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/app/NotificationChannel;

    const/4 v3, 0x0

    .line 283
    invoke-static {p2}, Lcom/android/internal/notification/SystemNotificationChannels;->newAccountChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 282
    invoke-interface {v0, p0, p1, v1}, Landroid/app/INotificationManager;->createNotificationChannelsForPackage(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    nop

    .line 287
    return-void

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static blacklist createAll(Landroid/content/Context;)V
    .locals 28
    .param p0, "context"    # Landroid/content/Context;

    .line 83
    move-object/from16 v0, p0

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 84
    .local v1, "nm":Landroid/app/NotificationManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v2, "channelsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    new-instance v3, Landroid/app/NotificationChannel;

    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->VIRTUAL_KEYBOARD:Ljava/lang/String;

    .line 87
    const v5, 0x1040870

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v3, v4, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 89
    .local v3, "keyboard":Landroid/app/NotificationChannel;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 90
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v5, Landroid/app/NotificationChannel;

    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->PHYSICAL_KEYBOARD:Ljava/lang/String;

    .line 94
    const v8, 0x1040867

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-direct {v5, v7, v8, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 96
    .local v5, "physicalKeyboardChannel":Landroid/app/NotificationChannel;
    sget-object v7, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    sget-object v8, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    invoke-virtual {v5, v7, v8}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 98
    invoke-virtual {v5, v4}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 99
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v7, Landroid/app/NotificationChannel;

    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->SECURITY:Ljava/lang/String;

    .line 103
    const v10, 0x1040869

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v10, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 105
    .local v7, "security":Landroid/app/NotificationChannel;
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v8, Landroid/app/NotificationChannel;

    sget-object v10, Lcom/android/internal/notification/SystemNotificationChannels;->CAR_MODE:Ljava/lang/String;

    .line 109
    const v11, 0x1040858

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v10, v11, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 111
    .local v8, "car":Landroid/app/NotificationChannel;
    invoke-virtual {v8, v4}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 112
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-static/range {p0 .. p0}, Lcom/android/internal/notification/SystemNotificationChannels;->newAccountChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v10, Landroid/app/NotificationChannel;

    sget-object v11, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER:Ljava/lang/String;

    .line 118
    const v12, 0x1040859

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 120
    .local v10, "developer":Landroid/app/NotificationChannel;
    invoke-virtual {v10, v4}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 121
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v11, Landroid/app/NotificationChannel;

    sget-object v12, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER_IMPORTANT:Ljava/lang/String;

    .line 125
    const v13, 0x104085a

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x4

    invoke-direct {v11, v12, v13, v14}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 127
    .local v11, "developerImportant":Landroid/app/NotificationChannel;
    invoke-virtual {v10, v4}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 128
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v12, Landroid/app/NotificationChannel;

    sget-object v13, Lcom/android/internal/notification/SystemNotificationChannels;->UPDATES:Ljava/lang/String;

    .line 132
    const v15, 0x104086e

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v13, v15, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 134
    .local v12, "updates":Landroid/app/NotificationChannel;
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v13, Landroid/app/NotificationChannel;

    sget-object v15, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    .line 138
    const v9, 0x1040866

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v13, v15, v9, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v9, v13

    .line 140
    .local v9, "network":Landroid/app/NotificationChannel;
    invoke-virtual {v9, v4}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 141
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v13, Landroid/app/NotificationChannel;

    sget-object v15, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    .line 145
    const v6, 0x1040864

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v13, v15, v6, v14}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v6, v13

    .line 147
    .local v6, "networkAlertsChannel":Landroid/app/NotificationChannel;
    invoke-virtual {v6, v4}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 148
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v13, Landroid/app/NotificationChannel;

    sget-object v15, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_AVAILABLE:Ljava/lang/String;

    .line 152
    const v14, 0x1040865

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v4, 0x2

    invoke-direct {v13, v15, v14, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v4, v13

    .line 154
    .local v4, "networkAvailable":Landroid/app/NotificationChannel;
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 155
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v13, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->VPN:Ljava/lang/String;

    .line 159
    const v15, 0x1040872

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v3

    const/4 v3, 0x2

    .end local v3    # "keyboard":Landroid/app/NotificationChannel;
    .local v18, "keyboard":Landroid/app/NotificationChannel;
    invoke-direct {v13, v14, v15, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v3, v13

    .line 161
    .local v3, "vpn":Landroid/app/NotificationChannel;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v13, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    .line 165
    invoke-static/range {p0 .. p0}, Lcom/android/internal/notification/SystemNotificationChannels;->getDeviceAdminNotificationChannelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v3

    const/4 v3, 0x4

    .end local v3    # "vpn":Landroid/app/NotificationChannel;
    .local v19, "vpn":Landroid/app/NotificationChannel;
    invoke-direct {v13, v14, v15, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v3, v13

    .line 167
    .local v3, "deviceAdmin":Landroid/app/NotificationChannel;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v13, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    .line 171
    const v15, 0x1040856

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v20, v3

    const/4 v3, 0x3

    .end local v3    # "deviceAdmin":Landroid/app/NotificationChannel;
    .local v20, "deviceAdmin":Landroid/app/NotificationChannel;
    invoke-direct {v13, v14, v15, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v3, v13

    .line 173
    .local v3, "alertsChannel":Landroid/app/NotificationChannel;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v13, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->USB:Ljava/lang/String;

    .line 185
    const v15, 0x104086f

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v21, v3

    const/4 v3, 0x1

    .end local v3    # "alertsChannel":Landroid/app/NotificationChannel;
    .local v21, "alertsChannel":Landroid/app/NotificationChannel;
    invoke-direct {v13, v14, v15, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v3, v13

    .line 187
    .local v3, "usb":Landroid/app/NotificationChannel;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v13, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->FOREGROUND_SERVICE:Ljava/lang/String;

    .line 191
    const v15, 0x1040860

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v22, v3

    const/4 v3, 0x2

    .end local v3    # "usb":Landroid/app/NotificationChannel;
    .local v22, "usb":Landroid/app/NotificationChannel;
    invoke-direct {v13, v14, v15, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v3, v13

    .line 193
    .local v3, "foregroundChannel":Landroid/app/NotificationChannel;
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 194
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v13, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->HEAVY_WEIGHT_APP:Ljava/lang/String;

    .line 198
    const v15, 0x1040861

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v23, v3

    const/4 v3, 0x3

    .end local v3    # "foregroundChannel":Landroid/app/NotificationChannel;
    .local v23, "foregroundChannel":Landroid/app/NotificationChannel;
    invoke-direct {v13, v14, v15, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v3, v13

    .line 200
    .local v3, "heavyWeightChannel":Landroid/app/NotificationChannel;
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 201
    new-instance v13, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v13}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 202
    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v13

    .line 203
    const/16 v14, 0xa

    invoke-virtual {v13, v14}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v13

    .line 204
    invoke-virtual {v13}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v13

    .line 201
    const/4 v14, 0x0

    invoke-virtual {v3, v14, v13}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 205
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v13, Landroid/app/NotificationChannel;

    sget-object v15, Lcom/android/internal/notification/SystemNotificationChannels;->SYSTEM_CHANGES:Ljava/lang/String;

    .line 208
    const v14, 0x104086d

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v25, v3

    const/4 v3, 0x3

    .end local v3    # "heavyWeightChannel":Landroid/app/NotificationChannel;
    .local v25, "heavyWeightChannel":Landroid/app/NotificationChannel;
    invoke-direct {v13, v15, v14, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v3, v13

    .line 210
    .local v3, "systemChanges":Landroid/app/NotificationChannel;
    new-instance v13, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v13}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 211
    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v13

    .line 212
    const/4 v14, 0x5

    invoke-virtual {v13, v14}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v13

    .line 213
    invoke-virtual {v13}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v13

    .line 210
    const/4 v14, 0x0

    invoke-virtual {v3, v14, v13}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 214
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v13, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->DO_NOT_DISTURB:Ljava/lang/String;

    .line 217
    const v15, 0x104085d

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v3

    const/4 v3, 0x2

    .end local v3    # "systemChanges":Landroid/app/NotificationChannel;
    .local v16, "systemChanges":Landroid/app/NotificationChannel;
    invoke-direct {v13, v14, v15, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v3, v13

    .line 219
    .local v3, "dndChanges":Landroid/app/NotificationChannel;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v13, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->ACCESSIBILITY_MAGNIFICATION:Ljava/lang/String;

    .line 223
    const v15, 0x1040853

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v24, v3

    const/4 v3, 0x4

    .end local v3    # "dndChanges":Landroid/app/NotificationChannel;
    .local v24, "dndChanges":Landroid/app/NotificationChannel;
    invoke-direct {v13, v14, v15, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v3, v13

    .line 225
    .local v3, "newFeaturePrompt":Landroid/app/NotificationChannel;
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 226
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v13, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->ACCESSIBILITY_SECURITY_POLICY:Ljava/lang/String;

    .line 230
    const v15, 0x1040854

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v26, v3

    const/4 v3, 0x2

    .end local v3    # "newFeaturePrompt":Landroid/app/NotificationChannel;
    .local v26, "newFeaturePrompt":Landroid/app/NotificationChannel;
    invoke-direct {v13, v14, v15, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v3, v13

    .line 232
    .local v3, "accessibilitySecurityPolicyChannel":Landroid/app/NotificationChannel;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance v13, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->MDM_DEXPOLICY:Ljava/lang/String;

    .line 236
    const v15, 0x104085c

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v27, v3

    const/4 v3, 0x4

    .end local v3    # "accessibilitySecurityPolicyChannel":Landroid/app/NotificationChannel;
    .local v27, "accessibilitySecurityPolicyChannel":Landroid/app/NotificationChannel;
    invoke-direct {v13, v14, v15, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 234
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v3, Landroid/app/NotificationChannel;

    sget-object v13, Lcom/android/internal/notification/SystemNotificationChannels;->ABUSIVE_BACKGROUND_APPS:Ljava/lang/String;

    .line 242
    const v14, 0x1040852

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    invoke-direct {v3, v13, v14, v15}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 244
    .local v3, "abusiveBackgroundAppsChannel":Landroid/app/NotificationChannel;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v13, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->MDO:Ljava/lang/String;

    .line 249
    move-object/from16 v17, v3

    .end local v3    # "abusiveBackgroundAppsChannel":Landroid/app/NotificationChannel;
    .local v17, "abusiveBackgroundAppsChannel":Landroid/app/NotificationChannel;
    const v3, 0x1040736

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v14, v3, v15}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v3, v13

    .line 251
    .local v3, "mdoChannel":Landroid/app/NotificationChannel;
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 252
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v13, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->ETHERNET:Ljava/lang/String;

    .line 258
    const v15, 0x104049c

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v0, 0x2

    invoke-direct {v13, v14, v15, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 256
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    .line 263
    return-void
.end method

.method private static blacklist getDeviceAdminNotificationChannelName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 266
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 267
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
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
    .param p0, "context"    # Landroid/content/Context;

    .line 268
    const v0, 0x104085b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist newAccountChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 290
    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->ACCOUNT:Ljava/lang/String;

    .line 292
    const v2, 0x1040855

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 290
    return-object v0
.end method

.method public static blacklist removeDeprecated(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 273
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 274
    .local v0, "nm":Landroid/app/NotificationManager;
    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN_DEPRECATED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 275
    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->SYSTEM_CHANGES_DEPRECATED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 276
    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->RETAIL_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 277
    return-void
.end method
