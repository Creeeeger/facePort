.class public Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field mNotiCardNumbers:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card_numbers"
    .end annotation
.end field

.field mNotiCardNumbersLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card_numbers_land"
    .end annotation
.end field

.field mPaddingStart:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "padding_start"
    .end annotation
.end field

.field mPaddingStartLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "padding_start_land"
    .end annotation
.end field

.field mTopY:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "top_y"
    .end annotation
.end field

.field mTopYLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "top_y_land"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/pluginlock/model/NotificationData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/model/NotificationData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->this$0:Lcom/android/systemui/pluginlock/model/NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mTopY:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mPaddingStart:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mNotiCardNumbers:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mTopYLand:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mPaddingStartLand:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mNotiCardNumbersLand:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public clone()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->clone()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    move-result-object p0

    return-object p0
.end method

.method public getNotiCardNumbers()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mNotiCardNumbers:Ljava/lang/Integer;

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

.method public getNotiCardNumbersLand()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mNotiCardNumbersLand:Ljava/lang/Integer;

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

.method public getPaddingStart()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mPaddingStart:Ljava/lang/Integer;

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

.method public getPaddingStartLand()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mPaddingStartLand:Ljava/lang/Integer;

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

.method public getTopY()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mTopY:Ljava/lang/Integer;

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

.method public getTopYLand()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mTopYLand:Ljava/lang/Integer;

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

.method public setNotiCardNumbers(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mNotiCardNumbers:Ljava/lang/Integer;

    return-void
.end method

.method public setNotiCardNumbersLand(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mNotiCardNumbersLand:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingStart(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mPaddingStart:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingStartLand(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mPaddingStartLand:Ljava/lang/Integer;

    return-void
.end method

.method public setTopY(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mTopY:Ljava/lang/Integer;

    return-void
.end method

.method public setTopYLand(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->mTopYLand:Ljava/lang/Integer;

    return-void
.end method
