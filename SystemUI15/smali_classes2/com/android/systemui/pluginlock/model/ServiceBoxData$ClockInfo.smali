.class public Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field mClockScale:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clock_scale"
    .end annotation
.end field

.field mClockScaleLand:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clock_scale_land"
    .end annotation
.end field

.field mClockType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clock_type"
    .end annotation
.end field

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
        value = "clock_padding_end"
    .end annotation
.end field

.field mPaddingEndLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clock_padding_end_land"
    .end annotation
.end field

.field mPaddingStart:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clock_padding_start"
    .end annotation
.end field

.field mPaddingStartLand:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clock_padding_start_land"
    .end annotation
.end field

.field mRecoverType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recover_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mRecoverType:Ljava/lang/Integer;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mClockScale:F

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mPaddingStart:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mPaddingEnd:Ljava/lang/Integer;

    iput v0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mClockScaleLand:F

    iput-object v1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mPaddingStartLand:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mPaddingEndLand:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public clone()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->clone()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object p0

    return-object p0
.end method

.method public getClockType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mClockType:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getGravity()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mGravity:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getGravityLand()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mGravityLand:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getPaddingEnd()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mPaddingEnd:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getPaddingEndLand()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mPaddingEndLand:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getPaddingStart()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mPaddingStart:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getPaddingStartLand()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mPaddingStartLand:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getRecoverType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mRecoverType:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getScale()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mClockScale:F

    return p0
.end method

.method public getScaleLand()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mClockScaleLand:F

    return p0
.end method

.method public setClockType(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mClockType:Ljava/lang/Integer;

    return-void
.end method

.method public setGravity(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mGravity:Ljava/lang/Integer;

    return-void
.end method

.method public setGravityLand(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mGravityLand:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingEnd(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mPaddingEnd:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingEndLand(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mPaddingEndLand:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingStart(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mPaddingStart:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingStartLand(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mPaddingStartLand:Ljava/lang/Integer;

    return-void
.end method

.method public setRecoverType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mRecoverType:Ljava/lang/Integer;

    return-void
.end method

.method public setScale(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mClockScale:F

    return-void
.end method

.method public setScaleLand(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->mClockScaleLand:F

    return-void
.end method
