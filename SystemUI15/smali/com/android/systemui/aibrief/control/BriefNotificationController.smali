.class public final Lcom/android/systemui/aibrief/control/BriefNotificationController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/android/systemui/aibrief/control/BriefNotificationController$Companion;

.field public static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "AI_BRIEF_CHANNEL_ID"

.field public static final NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "AI_BRIEF_CHANNEL_NAME"

.field public static final NOTIFICATION_ID:I = 0x1e240


# instance fields
.field private final context:Landroid/content/Context;

.field private final notificationManager:Landroidx/core/app/NotificationManagerCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/aibrief/control/BriefNotificationController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/aibrief/control/BriefNotificationController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/aibrief/control/BriefNotificationController;->Companion:Lcom/android/systemui/aibrief/control/BriefNotificationController$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/android/systemui/aibrief/control/BriefNotificationController;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/core/app/NotificationManagerCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNotificationController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/aibrief/control/BriefNotificationController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    return-void
.end method

.method private final notifyNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.smartsuggestions"

    const-string v2, "com.samsung.android.smartsuggestions.feature.aisuggestion.ui.activity.SuggestionUiActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/aibrief/control/BriefNotificationController;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x2000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/android/systemui/aibrief/control/BriefNotificationController;->context:Landroid/content/Context;

    const-string v3, "AI_BRIEF_CHANNEL_ID"

    invoke-direct {v1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const v4, 0x7f08066b

    iput v4, v2, Landroid/app/Notification;->icon:I

    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    iput-object v0, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    new-instance p1, Landroid/app/NotificationChannel;

    const-string p2, "AI_BRIEF_CHANNEL_NAME"

    const/4 v0, 0x3

    invoke-direct {p1, v3, p2, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->setLightColor(I)V

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/aibrief/control/BriefNotificationController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget-object p2, p2, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p2, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    iget-object p0, p0, Lcom/android/systemui/aibrief/control/BriefNotificationController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const p2, 0x1e240

    invoke-virtual {p0, p2, p1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private final removeNotification()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/aibrief/control/BriefNotificationController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget-object p0, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v0, 0x0

    const v1, 0x1e240

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final hideNotification()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/aibrief/control/BriefNotificationController;->removeNotification()V

    return-void
.end method

.method public final showNotification()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/aibrief/control/BriefNotificationController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f13018b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/aibrief/control/BriefNotificationController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f13018c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/aibrief/control/BriefNotificationController;->notifyNotification(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
