.class public Lcom/android/settings/notification/NotificationBackend;
.super Ljava/lang/Object;
.source "NotificationBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationBackend$AppRow;,
        Lcom/android/settings/notification/NotificationBackend$Row;,
        Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;
    }
.end annotation


# static fields
.field public static sINM:Landroid/app/INotificationManager;

.field static sUsageStatsManager:Landroid/app/usage/IUsageStatsManager;


# instance fields
.field private final IS_ALL_APPS_AVAILABLE:Ljava/lang/String;

.field private final mAppNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$S5I37wkc6ygQbdBDYMZSPJzxulU(Landroid/companion/AssociationInfo;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/notification/NotificationBackend;->lambda$getDeviceList$1(Landroid/companion/AssociationInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "usagestats"

    .line 93
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 92
    invoke-static {v0}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationBackend;->sUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    const-string/jumbo v0, "notification"

    .line 96
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 95
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AllAppsAvailable"

    .line 100
    iput-object v0, p0, Lcom/android/settings/notification/NotificationBackend;->IS_ALL_APPS_AVAILABLE:Ljava/lang/String;

    .line 961
    new-instance v0, Lcom/android/settings/notification/NotificationBackend$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationBackend$1;-><init>(Lcom/android/settings/notification/NotificationBackend;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationBackend;->mAppNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method private calculateAvgSentCounts(Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 688
    iget p0, p1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->sentCount:I

    int-to-float p0, p0

    const/high16 v0, 0x40e00000    # 7.0f

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->avgSentDaily:I

    .line 689
    iget p0, p1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->sentCount:I

    const/4 v0, 0x7

    if-ge p0, v0, :cond_0

    .line 690
    iput p0, p1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->avgSentWeekly:I

    :cond_0
    return-void
.end method

.method public static getDeviceList(Landroid/companion/ICompanionDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 4

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    :try_start_0
    invoke-interface {p0, p2, p3}, Landroid/companion/ICompanionDeviceManager;->getAssociations(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    new-instance p2, Lcom/android/settings/notification/NotificationBackend$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/settings/notification/NotificationBackend$$ExternalSyntheticLambda0;-><init>()V

    .line 214
    invoke-static {p0, p2}, Lcom/android/internal/util/CollectionUtils;->mapNotNull(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 218
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v1

    .line 221
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 222
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_2

    const-string v3, ", "

    .line 224
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    .line 228
    :goto_1
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling CDM"

    .line 234
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getDeviceList$1(Landroid/companion/AssociationInfo;)Ljava/lang/String;
    .locals 1

    .line 216
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static markAppRowWithBlockables(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend$AppRow;Ljava/lang/String;)V
    .locals 1

    .line 182
    invoke-static {p0, p2}, Lcom/android/settingslib/SecNotificationBlockManager;->getLockedImportance(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->lockedImportance:Z

    iput-boolean v0, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    .line 186
    :cond_0
    invoke-static {p0, p2}, Lcom/android/settingslib/SecNotificationBlockManager;->isBlockablePackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->packageBlockable:Z

    return-void
.end method

.method static markAppRowWithBlockables([Ljava/lang/String;Lcom/android/settings/notification/NotificationBackend$AppRow;Ljava/lang/String;)V
    .locals 4

    if-eqz p0, :cond_3

    .line 193
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 195
    aget-object v2, p0, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, ":"

    .line 198
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 201
    :cond_1
    aget-object v2, p0, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 202
    iput-boolean v2, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->lockedImportance:Z

    iput-boolean v2, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public canShowBadge(Ljava/lang/String;I)Z
    .locals 0

    .line 317
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->canShowBadge(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 319
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getAllowedNotificationAssistant()Landroid/content/ComponentName;
    .locals 2

    .line 697
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0}, Landroid/app/INotificationManager;->getAllowedNotificationAssistant()Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "NotificationBackend"

    const-string v1, "Error calling NoMan"

    .line 699
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBlockedAppCount(I)I
    .locals 1

    .line 1010
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->getBlockedAppCount(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string v0, "Error calling "

    .line 1012
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getBlockedChannelCount(Ljava/lang/String;I)I
    .locals 0

    .line 504
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->getBlockedChannelCount(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 506
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getBubblePreference(Ljava/lang/String;I)I
    .locals 0

    .line 336
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->getBubblePreferenceForPackage(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 338
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public getChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 6

    const/4 p0, 0x0

    if-nez p3, :cond_0

    return-object p0

    .line 363
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    const/4 v5, 0x1

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/INotificationManager;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    const-string p2, "NotificationBackend"

    const-string p3, "Error calling NoMan"

    .line 365
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public getChannelCount(Ljava/lang/String;I)I
    .locals 1

    const/4 p0, 0x0

    .line 522
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0, p1, p2, p0}, Landroid/app/INotificationManager;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    const-string p2, "NotificationBackend"

    const-string v0, "Error calling NoMan"

    .line 524
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p0
.end method

.method public getConversationDrawable(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;
    .locals 6

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 765
    :cond_0
    new-instance p0, Lcom/android/settingslib/notification/ConversationIconFactory;

    const-class v0, Landroid/content/pm/LauncherApps;

    .line 766
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/pm/LauncherApps;

    .line 767
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v0, 0x0

    .line 768
    invoke-static {p1, v0}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;Z)Landroid/util/IconDrawableFactory;

    move-result-object v4

    .line 769
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->conversation_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/notification/ConversationIconFactory;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherApps;Landroid/content/pm/PackageManager;Landroid/util/IconDrawableFactory;I)V

    .line 771
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/settingslib/notification/ConversationIconFactory;->getConversationDrawable(Landroid/content/pm/ShortcutInfo;Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getConversationInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .locals 1

    .line 745
    const-class p0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    .line 747
    new-instance p1, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 748
    invoke-virtual {p1, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    move-result-object p1

    const/16 p2, 0x411

    .line 749
    invoke-virtual {p1, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p4, p2, v0

    .line 751
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    move-result-object p1

    .line 753
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 752
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 754
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 755
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getConversations(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation

    .line 393
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->getConversationsForPackage(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 395
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getConversations(Z)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation

    .line 402
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->getConversations(Z)Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string v0, "Error calling NoMan"

    .line 404
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultNotificationAssistant()Landroid/content/ComponentName;
    .locals 2

    .line 706
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0}, Landroid/app/INotificationManager;->getDefaultNotificationAssistant()Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "NotificationBackend"

    const-string v1, "Error calling NoMan"

    .line 708
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeletedChannelCount(Ljava/lang/String;I)I
    .locals 0

    .line 495
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->getDeletedChannelCount(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 497
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getEdgeLightingEnabledList(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    .line 877
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 879
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/notification/NotificationBackend;->getNotificationPackagesList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 880
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 881
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 883
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v4, "edge_lighting_recommend_app_list"

    invoke-static {p1, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 884
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, ","

    if-eqz p1, :cond_0

    .line 886
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 887
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :cond_0
    const/4 p1, 0x1

    if-eqz v1, :cond_5

    .line 892
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 893
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 894
    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 895
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 898
    :try_start_0
    invoke-virtual {v0, v7, v6}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    invoke-virtual {p0, v7, v9}, Lcom/android/settings/notification/NotificationBackend;->isEdgeLightingAllowed(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_1

    move p1, v6

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 910
    new-instance v10, Landroid/content/ComponentName;

    invoke-direct {v10, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 914
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    .line 918
    :cond_2
    :try_start_1
    invoke-virtual {v0, v10, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v8

    .line 920
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_1
    if-eqz v9, :cond_4

    if-eqz v7, :cond_4

    .line 924
    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 925
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 927
    :cond_3
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v7, "NotificationBackend"

    const-string v8, "Error..."

    .line 930
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    const-string p0, "AllAppsAvailable"

    return-object p0

    .line 939
    :cond_6
    iget-object p1, p0, Lcom/android/settings/notification/NotificationBackend;->mAppNameComparator:Ljava/util/Comparator;

    invoke-static {v2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 940
    iget-object p0, p0, Lcom/android/settings/notification/NotificationBackend;->mAppNameComparator:Ljava/util/Comparator;

    invoke-static {v3, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 943
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string p1, ""

    move-object v0, p1

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 944
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 945
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 947
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 950
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 951
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 952
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 954
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_a
    return-object v0
.end method

.method public getGroup(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannelGroup;
    .locals 1

    const/4 p0, 0x0

    if-nez p3, :cond_0

    return-object p0

    .line 375
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0, p3, p1, p2}, Landroid/app/INotificationManager;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    const-string p2, "NotificationBackend"

    const-string p3, "Error calling NoMan"

    .line 377
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public getGroups(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 384
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Landroid/app/INotificationManager;->getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 386
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getListenerFilter(Landroid/content/ComponentName;I)Landroid/service/notification/NotificationListenerFilter;
    .locals 0

    .line 790
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->getListenerFilter(Landroid/content/ComponentName;I)Landroid/service/notification/NotificationListenerFilter;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 792
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    goto :goto_1

    .line 794
    :cond_0
    new-instance p0, Landroid/service/notification/NotificationListenerFilter;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerFilter;-><init>()V

    :goto_1
    return-object p0
.end method

.method public getLockScreenNotificationVisibilityForPackage(Ljava/lang/String;I)I
    .locals 0

    .line 613
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->getLockScreenNotificationVisibilityForPackage(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 615
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z
    .locals 1

    .line 280
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNotificationAlertsEnabledForPackage: pkg="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " uid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NotificationBackend"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "exception in get alerts: "

    .line 284
    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 470
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 472
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 473
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelsForPackage(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 456
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Landroid/app/INotificationManager;->getNotificationChannelsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 458
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationHistory(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationHistory;
    .locals 0

    .line 578
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->getNotificationHistory(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationHistory;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 580
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 582
    new-instance p0, Landroid/app/NotificationHistory;

    invoke-direct {p0}, Landroid/app/NotificationHistory;-><init>()V

    return-object p0
.end method

.method public getNotificationPackagesList(Landroid/content/Context;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1020
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 1021
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 1022
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 1023
    invoke-virtual {p1, v1, p2}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object p2

    .line 1025
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1026
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1029
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 1030
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/notification/NotificationBackend;->getChannelCount(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_0

    .line 1032
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1035
    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 1036
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 1037
    iget-object p2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1038
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1042
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-object v3
.end method

.method public getNotificationsBanned(Ljava/lang/String;I)Z
    .locals 0

    .line 270
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 273
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public hasSentValidBubble(Ljava/lang/String;I)Z
    .locals 0

    .line 446
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->hasSentValidBubble(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 448
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public hasSentValidMsg(Ljava/lang/String;I)Z
    .locals 0

    .line 411
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->hasSentValidMsg(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 413
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public hasUserDemotedInvalidMsgApp(Ljava/lang/String;I)Z
    .locals 0

    .line 429
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->hasUserDemotedInvalidMsgApp(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 431
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isAllowNotificationPopUpForPackage(Ljava/lang/String;I)Z
    .locals 0

    .line 595
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->isAllowNotificationPopUpForPackage(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 597
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isEdgeLightingAllowed(Ljava/lang/String;I)Z
    .locals 0

    .line 868
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->isEdgeLightingAllowed(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 871
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isInInvalidMsgState(Ljava/lang/String;I)Z
    .locals 0

    .line 420
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->isInInvalidMsgState(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 422
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z
    .locals 1

    .line 807
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string v0, "Error calling NoMan"

    .line 809
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isReminderEnabled(Ljava/lang/String;I)Z
    .locals 0

    .line 989
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->isReminderEnabled(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 991
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/role/RoleManager;Landroid/content/pm/PackageInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;
    .locals 7

    .line 126
    iget-object v0, p4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings/notification/NotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v0

    .line 127
    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/notification/NotificationBackend;->recordCanBeBlocked(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/role/RoleManager;Landroid/content/pm/PackageInfo;Lcom/android/settings/notification/NotificationBackend$AppRow;)V

    return-object v0
.end method

.method public loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;
    .locals 3

    .line 104
    new-instance v0, Lcom/android/settings/notification/NotificationBackend$AppRow;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend$AppRow;-><init>()V

    .line 105
    iget-object v1, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    .line 106
    iget v1, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    .line 108
    :try_start_0
    invoke-virtual {p3, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading application label for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationBackend"

    invoke-static {v2, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    iget-object p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    .line 113
    :goto_0
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    .line 114
    iget-object p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    .line 115
    iget-object p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/notification/NotificationBackend;->canShowBadge(Ljava/lang/String;I)Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->showBadge:Z

    .line 116
    iget-object p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/notification/NotificationBackend;->getBubblePreference(Ljava/lang/String;I)I

    move-result p2

    iput p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->bubblePreference:I

    .line 117
    iget p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    iput p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->userId:I

    .line 118
    iget-object p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/notification/NotificationBackend;->getBlockedChannelCount(Ljava/lang/String;I)I

    move-result p2

    iput p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->blockedChannelCount:I

    .line 119
    iget-object p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/notification/NotificationBackend;->getChannelCount(Ljava/lang/String;I)I

    move-result p2

    iput p2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->channelCount:I

    .line 120
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/NotificationBackend;->recordAggregatedUsageEvents(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend$AppRow;)V

    return-object v0
.end method

.method public onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .locals 0

    .line 513
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 515
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method protected recordAggregatedUsageEvents(Landroid/app/usage/UsageEvents;Lcom/android/settings/notification/NotificationBackend$AppRow;)V
    .locals 7

    .line 635
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByChannel:Ljava/util/Map;

    .line 636
    new-instance v0, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;-><init>()V

    iput-object v0, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByApp:Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    if-eqz p1, :cond_4

    .line 638
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 639
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 640
    invoke-virtual {p1, v0}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 642
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 643
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 645
    iget-object v2, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByChannel:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    if-nez v2, :cond_1

    .line 647
    new-instance v2, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    invoke-direct {v2}, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;-><init>()V

    .line 648
    iget-object v3, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByChannel:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    :cond_1
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->lastSent:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    .line 651
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->lastSent:J

    .line 652
    iget-object v1, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByApp:Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->lastSent:J

    .line 654
    :cond_2
    iget v1, v2, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->sentCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->sentCount:I

    .line 655
    iget-object v1, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByApp:Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    iget v3, v1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->sentCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->sentCount:I

    .line 656
    invoke-direct {p0, v2}, Lcom/android/settings/notification/NotificationBackend;->calculateAvgSentCounts(Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;)V

    goto :goto_0

    .line 661
    :cond_3
    iget-object p1, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByApp:Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    invoke-direct {p0, p1}, Lcom/android/settings/notification/NotificationBackend;->calculateAvgSentCounts(Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;)V

    :cond_4
    return-void
.end method

.method protected recordAggregatedUsageEvents(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend$AppRow;)V
    .locals 8

    .line 622
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v0, 0x240c8400

    sub-long v1, v3, v0

    .line 626
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    iget v5, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->userId:I

    iget-object v6, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    .line 627
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 626
    invoke-interface/range {v0 .. v7}, Landroid/app/usage/IUsageStatsManager;->queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 629
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    .line 631
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/NotificationBackend;->recordAggregatedUsageEvents(Landroid/app/usage/UsageEvents;Lcom/android/settings/notification/NotificationBackend$AppRow;)V

    return-void
.end method

.method recordCanBeBlocked(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/role/RoleManager;Landroid/content/pm/PackageInfo;Lcom/android/settings/notification/NotificationBackend$AppRow;)V
    .locals 0

    .line 140
    iget-object p0, p4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, p5, p0}, Lcom/android/settings/notification/NotificationBackend;->markAppRowWithBlockables(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend$AppRow;Ljava/lang/String;)V

    return-void
.end method

.method public resetNotificationImportance()V
    .locals 2

    .line 781
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0}, Landroid/app/INotificationManager;->unlockAllNotificationChannels()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "NotificationBackend"

    const-string v1, "Error calling NoMan"

    .line 783
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setAllowBubbles(Ljava/lang/String;II)Z
    .locals 0

    .line 345
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->setBubblesAllowed(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 348
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setAllowEdgeLighting(Ljava/lang/String;IZ)Z
    .locals 0

    .line 858
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->setAllowEdgeLighting(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 861
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setAllowNotificationPopUpForPackage(Ljava/lang/String;IZ)V
    .locals 0

    .line 587
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->setAllowNotificationPopUpForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 589
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setHideSilentStatusIcons(Z)V
    .locals 1

    .line 540
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->setHideSilentStatusIcons(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string v0, "Error calling NoMan"

    .line 542
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setInvalidMsgAppDemoted(Ljava/lang/String;IZ)V
    .locals 0

    .line 438
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->setInvalidMsgAppDemoted(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 440
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setListenerFilter(Landroid/content/ComponentName;ILandroid/service/notification/NotificationListenerFilter;)V
    .locals 0

    .line 799
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->setListenerFilter(Landroid/content/ComponentName;ILandroid/service/notification/NotificationListenerFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 801
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setLockScreenNotificationVisibilityForPackage(Ljava/lang/String;II)V
    .locals 0

    .line 605
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->setLockScreenNotificationVisibilityForPackage(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 607
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setNASMigrationDoneAndResetDefault(IZ)V
    .locals 0

    .line 715
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->setNASMigrationDoneAndResetDefault(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 717
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method setNm(Landroid/app/INotificationManager;)V
    .locals 0

    .line 816
    sput-object p1, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    return-void
.end method

.method public setNotificationAlertsEnabledForPackage(Ljava/lang/String;IZ)V
    .locals 1

    .line 290
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setNotificationAlertsEnabledForPackage: pkg="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " uid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " enabled="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NotificationBackend"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->setNotificationAlertsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "exception in set alerts: "

    .line 294
    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setNotificationAssistantGranted(Landroid/content/ComponentName;)Z
    .locals 2

    const/4 p0, 0x0

    .line 723
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V

    if-nez p1, :cond_1

    .line 725
    sget-object p1, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p1}, Landroid/app/INotificationManager;->getAllowedNotificationAssistant()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_0

    move p0, v1

    :cond_0
    return p0

    .line 727
    :cond_1
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0}, Landroid/app/INotificationManager;->getAllowedNotificationAssistant()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    const-string v0, "NotificationBackend"

    const-string v1, "Error calling NoMan"

    .line 730
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p0
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)Z
    .locals 3

    const/4 v0, 0x0

    .line 301
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/NotificationBackend;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "miscellaneous"

    const/4 v2, 0x0

    .line 303
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/settings/notification/NotificationBackend;->getChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-eqz p3, :cond_0

    const/16 v2, -0x3e8

    goto :goto_0

    :cond_0
    move v2, v0

    .line 304
    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 305
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 307
    :cond_1
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 310
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setReminderEnabled(IZLjava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 998
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->setReminderEnabled(IZLjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 1001
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setReminderEnabledForPackage(Ljava/lang/String;IZ)Z
    .locals 0

    .line 979
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->setReminderEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 982
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setShowBadge(Ljava/lang/String;IZ)Z
    .locals 0

    .line 326
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->setShowBadge(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 329
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public shouldHideSilentStatusBarIcons(Landroid/content/Context;)Z
    .locals 1

    .line 531
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->shouldHideSilentStatusIcons(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string v0, "Error calling NoMan"

    .line 533
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    .locals 0

    .line 479
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 481
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public updateChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V
    .locals 0

    .line 487
    :try_start_0
    sget-object p0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/INotificationManager;->updateNotificationChannelGroupForPackage(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 489
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
