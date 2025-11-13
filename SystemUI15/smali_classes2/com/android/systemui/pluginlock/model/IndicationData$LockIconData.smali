.class public Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field mVisibility:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visibility"
    .end annotation
.end field

.field mVisibilityLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visibility_land"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/pluginlock/model/IndicationData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/model/IndicationData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;->this$0:Lcom/android/systemui/pluginlock/model/IndicationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;->mVisibility:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;->mVisibilityLand:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public clone()Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;->clone()Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;

    move-result-object p0

    return-object p0
.end method

.method public getVisibility()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;->mVisibility:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getVisibilityLand()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;->mVisibilityLand:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public setVisibility(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;->mVisibility:Ljava/lang/Integer;

    return-void
.end method

.method public setVisibilityLand(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;->mVisibilityLand:Ljava/lang/Integer;

    return-void
.end method
