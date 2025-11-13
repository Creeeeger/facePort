.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/NotificationManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final mNotificationManager:Landroid/app/NotificationManager;

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/NotificationManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/NotificationManagerWrapper;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/NotificationManagerWrapper;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/NotificationManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/NotificationManagerWrapper;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/NotificationManagerWrapper;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/NotificationManagerWrapper;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/NotificationManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/NotificationManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public getZenMode()I
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/NotificationManagerWrapper;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result p0

    return p0
.end method

.method public setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/NotificationManagerWrapper;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method
