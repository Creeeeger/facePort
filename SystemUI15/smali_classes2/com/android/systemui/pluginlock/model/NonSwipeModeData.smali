.class public Lcom/android/systemui/pluginlock/model/NonSwipeModeData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private mAngle:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "angle"
    .end annotation
.end field

.field private mNonSwipeMode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->mNonSwipeMode:Ljava/lang/Integer;

    const/16 v0, 0x2d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->mAngle:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public clone()Lcom/android/systemui/pluginlock/model/NonSwipeModeData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->clone()Lcom/android/systemui/pluginlock/model/NonSwipeModeData;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    check-cast p1, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->mNonSwipeMode:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->mNonSwipeMode:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v0, :cond_4

    iget-object v2, p1, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->mNonSwipeMode:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->mAngle:Ljava/lang/Integer;

    if-nez p0, :cond_2

    iget-object v0, p1, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->mAngle:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p0, :cond_4

    iget-object p1, p1, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->mAngle:Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public getAngle()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->mAngle:Ljava/lang/Integer;

    return-object p0
.end method

.method public getMode()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->mNonSwipeMode:Ljava/lang/Integer;

    return-object p0
.end method

.method public setAngle(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->mAngle:Ljava/lang/Integer;

    return-void
.end method

.method public setNonSwipeMode(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->mNonSwipeMode:Ljava/lang/Integer;

    return-void
.end method
