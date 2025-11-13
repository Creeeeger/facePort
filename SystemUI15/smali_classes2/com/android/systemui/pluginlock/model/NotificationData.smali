.class public Lcom/android/systemui/pluginlock/model/NotificationData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private mNotiType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_type"
    .end annotation
.end field

.field private mNotificationCardData:Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_card_info"
    .end annotation
.end field

.field private mNotificationIconOnlyData:Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_icon_info"
    .end annotation
.end field

.field private mRecoverType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recover_type"
    .end annotation
.end field

.field private mVisibility:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visibility"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mNotiType:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mRecoverType:Ljava/lang/Integer;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mVisibility:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public clone()Lcom/android/systemui/pluginlock/model/NotificationData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/NotificationData;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->clone()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    return-object p0
.end method

.method public getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mNotificationCardData:Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;-><init>(Lcom/android/systemui/pluginlock/model/NotificationData;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mNotificationCardData:Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mNotificationCardData:Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    return-object p0
.end method

.method public getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mNotificationIconOnlyData:Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    invoke-direct {v0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mNotificationIconOnlyData:Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mNotificationIconOnlyData:Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    return-object p0
.end method

.method public getNotiType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mNotiType:Ljava/lang/Integer;

    return-object p0
.end method

.method public getRecoverType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mRecoverType:Ljava/lang/Integer;

    return-object p0
.end method

.method public getVisibility()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mVisibility:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public setCardData(Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mNotificationCardData:Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    return-void
.end method

.method public setIconOnlyData(Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mNotificationIconOnlyData:Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    return-void
.end method

.method public setNotiType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mNotiType:Ljava/lang/Integer;

    return-void
.end method

.method public setRecoverType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mRecoverType:Ljava/lang/Integer;

    return-void
.end method

.method public setVisibility(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mVisibility:Ljava/lang/Integer;

    return-void
.end method
