.class public Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field mHeight:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "height"
    .end annotation
.end field

.field mPaddingBottom:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "padding_bottom"
    .end annotation
.end field

.field mPaddingBottomLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "padding_bottom_land"
    .end annotation
.end field

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
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->this$0:Lcom/android/systemui/pluginlock/model/IndicationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->mVisibility:Ljava/lang/Integer;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->mPaddingBottom:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->mHeight:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->mVisibilityLand:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->mPaddingBottomLand:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public clone()Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->clone()Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->mHeight:Ljava/lang/Integer;

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

.method public getPaddingBottom()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->mPaddingBottom:Ljava/lang/Integer;

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

.method public getPaddingBottomLand()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->mPaddingBottomLand:Ljava/lang/Integer;

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

.method public getVisibility()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->mVisibility:Ljava/lang/Integer;

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

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->mVisibilityLand:Ljava/lang/Integer;

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

.method public setHeight(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->mHeight:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingBottom(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->mPaddingBottom:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingBottomLand(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->mPaddingBottomLand:Ljava/lang/Integer;

    return-void
.end method

.method public setVisibility(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->mVisibility:Ljava/lang/Integer;

    return-void
.end method

.method public setVisibilityLand(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->mVisibilityLand:Ljava/lang/Integer;

    return-void
.end method
