.class public final Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;


# static fields
.field static final DND_FILTER:Landroid/content/IntentFilter;

.field public static final ID:I


# instance fields
.field public final mAppContext:Landroid/content/Context;

.field public final mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DndConditionCardController"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->ID:I

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->DND_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance p1, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;

    invoke-direct {p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;)V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;

    return-void
.end method


# virtual methods
.method public final buildContextualCard()Lcom/android/settings/homepage/contextualcards/ContextualCard;
    .locals 4

    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget v1, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->ID:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->mConditionId:J

    const/16 v1, 0x17d

    iput v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->mMetricsConstant:I

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    const v2, 0x7f1409ed

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->mActionText:Ljava/lang/CharSequence;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    const v3, 0x7f1409f3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mTitleText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->areAllZenBehaviorSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    const v2, 0x7f1409f1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    const v2, 0x7f1409f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mSummaryText:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    const v1, 0x7f0803dc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    const p0, 0x7f0d01d9

    iput p0, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mViewType:I

    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object p0

    return-object p0
.end method

.method public final getId()J
    .locals 2

    sget p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->ID:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public final isDisplayable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onActionClick()V
    .locals 4

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v0

    const-string v1, "DndCondition"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v3, v2, v1, v0}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v3, v2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onPrimaryClick(Landroid/content/Context;)V
    .locals 1

    new-instance p0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/android/settings/notification/zen/ZenModeSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/16 p1, 0x5de

    iput p1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const/4 p1, 0x0

    const v0, 0x7f1438e6

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public final startMonitoringStateChange()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;

    sget-object v1, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->DND_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final stopMonitoringStateChange()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
