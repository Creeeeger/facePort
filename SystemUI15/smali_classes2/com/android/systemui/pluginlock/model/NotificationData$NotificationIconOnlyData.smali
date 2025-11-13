.class public Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field mGravity:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gravity"
    .end annotation
.end field

.field mGravityLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gravity_land"
    .end annotation
.end field

.field mPaddingEnd:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "padding_end"
    .end annotation
.end field

.field mPaddingEndLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "padding_end_land"
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

.field mTop:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "top"
    .end annotation
.end field

.field mTopLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "top_land"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mGravity:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mPaddingStart:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mPaddingEnd:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mTop:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mGravityLand:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mPaddingStartLand:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mPaddingEndLand:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mTopLand:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public clone()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->clone()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object p0

    return-object p0
.end method

.method public getGravity()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mGravity:Ljava/lang/Integer;

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

.method public getGravityLand()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mGravityLand:Ljava/lang/Integer;

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

.method public getPaddingEnd()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mPaddingEnd:Ljava/lang/Integer;

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

.method public getPaddingEndLand()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mPaddingEndLand:Ljava/lang/Integer;

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

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mPaddingStart:Ljava/lang/Integer;

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

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mPaddingStartLand:Ljava/lang/Integer;

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

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mTop:Ljava/lang/Integer;

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

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mTopLand:Ljava/lang/Integer;

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

.method public setGravity(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mGravity:Ljava/lang/Integer;

    return-void
.end method

.method public setGravityLand(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mGravityLand:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingEnd(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mPaddingEnd:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingEndLand(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mPaddingEndLand:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingStart(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mPaddingStart:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingStartLand(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mPaddingStartLand:Ljava/lang/Integer;

    return-void
.end method

.method public setTopY(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mTop:Ljava/lang/Integer;

    return-void
.end method

.method public setTopYLand(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->mTopLand:Ljava/lang/Integer;

    return-void
.end method
