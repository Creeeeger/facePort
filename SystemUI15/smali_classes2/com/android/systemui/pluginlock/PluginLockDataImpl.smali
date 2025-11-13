.class public Lcom/android/systemui/pluginlock/PluginLockDataImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/pluginlock/PluginLockData;
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;


# static fields
.field private static final DEFAULT_GRAVITY:I = -0x1

.field private static final DEFAULT_N_CARD_COUNT:I = 0x3

.field private static final DEFAULT_PADDING:I = -0x1

.field private static final DEFAULT_VISIBILITY:I = -0x1

.field public static final TAG:Ljava/lang/String; = "PluginLockDataImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

.field private final mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockMediator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p2, p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    return-void
.end method

.method private isLandscape()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public getBottom(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->isLandscape()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getBottomYLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_2
    if-eq p1, v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getBottomY()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getCount(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->isLandscape()Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->getNotiCardNumbersLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_2
    if-eq p1, v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->getNotiCardNumbers()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getGravity(I)I
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->isLandscape()Z

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->getGravityLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/MusicData;->getGravityLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getGravityLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_4
    if-eq p1, v4, :cond_7

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->getGravity()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/MusicData;->getGravity()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getGravity()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getPaddingBottom(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->isLandscape()Z

    move-result v0

    const/4 v2, 0x5

    if-eqz v0, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData;->getHelpTextData()Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->getPaddingBottomLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_2
    if-eq p1, v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData;->getHelpTextData()Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->getPaddingBottom()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getPaddingEnd(I)I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->isLandscape()Z

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->getPaddingEndLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingEndLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_3
    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->getPaddingEnd()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingEnd()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getPaddingStart(I)I
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->isLandscape()Z

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->getPaddingStartLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->getPaddingStartLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingStartLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_4
    if-eq p1, v4, :cond_7

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->getPaddingStart()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->getPaddingStart()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingStart()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getTop(I)I
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->isLandscape()Z

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_5

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->getTopYLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto/16 :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->getTopYLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/MusicData;->getTopYLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getTopYLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_5
    if-eq p1, v5, :cond_9

    if-eq p1, v4, :cond_8

    if-eq p1, v3, :cond_7

    if-eq p1, v2, :cond_6

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->getTopY()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->getTopY()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/MusicData;->getTopY()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_9
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getTopY()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getVisibility(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData;->getLockIconData()Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;->getVisibilityLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto/16 :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getShortcutData()Lcom/android/systemui/pluginlock/model/ShortcutData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ShortcutData;->getVisibility()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto/16 :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData;->getHelpTextData()Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->getVisibilityLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto/16 :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getVisibility()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto/16 :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/MusicData;->getVisibilityLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto/16 :goto_0

    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getVisibilityLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData;->getLockIconData()Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;->getVisibility()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getShortcutData()Lcom/android/systemui/pluginlock/model/ShortcutData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ShortcutData;->getVisibility()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData;->getHelpTextData()Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->getVisibility()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getVisibility()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/MusicData;->getVisibility()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getVisibility()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->isLandscape()Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isLandscapeAvailable()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isPortraitAvailable()Z

    move-result p0

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isLandscapeAvailable()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isPortraitAvailable()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onPluginLockReset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    return-void
.end method

.method public setDynamicLockData(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "setDynamicLockData : "

    invoke-static {v0, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PluginLockDataImpl"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->fromJSon(Ljava/lang/String;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    return-void
.end method

.method public updateDynamicLockData(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "updateDynamicLockData : "

    invoke-static {v0, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PluginLockDataImpl"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->fromJSon(Ljava/lang/String;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    return-void
.end method
