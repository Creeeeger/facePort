.class public Lcom/samsung/app/video/editor/external/Region;
.super Ljava/lang/Object;
.source "Region.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final whitelist serialVersionUID:J = 0x76424dc3a19c8d3fL


# instance fields
.field private blacklist TAG:Ljava/lang/String;

.field private blacklist listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

.field private blacklist mParentElement:Lcom/samsung/app/video/editor/external/Element;

.field private blacklist mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

.field blacklist mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

.field blacklist slowAudioEndTime:I

.field blacklist slowAudioStartTime:I

.field blacklist slowEndTime:I

.field blacklist slowStartTime:I

.field blacklist speedSlowRegion:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->NORMAL:Lcom/samsung/app/video/editor/external/Speed;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    .line 18
    const-string v0, "Region"

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->TAG:Ljava/lang/String;

    return-void
.end method

.method private blacklist getSpeedMapForV2120(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;
    .locals 2
    .param p1, "speed"    # Lcom/samsung/app/video/editor/external/Speed;

    .line 107
    sget-object v0, Lcom/samsung/app/video/editor/external/Region$1;->$SwitchMap$com$samsung$app$video$editor$external$Speed:[I

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Speed;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 117
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->NORMAL:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    .line 115
    :pswitch_0
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->HALF:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    .line 113
    :pswitch_1
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->NORMAL:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    .line 111
    :pswitch_2
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->TWO_TIMES:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    .line 109
    :pswitch_3
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->FOUR_TIMES:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getSpeedMapForV2240(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;
    .locals 2
    .param p1, "speed"    # Lcom/samsung/app/video/editor/external/Speed;

    .line 122
    sget-object v0, Lcom/samsung/app/video/editor/external/Region$1;->$SwitchMap$com$samsung$app$video$editor$external$Speed:[I

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Speed;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->NORMAL:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    .line 130
    :pswitch_0
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->NORMAL:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    .line 128
    :pswitch_1
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->TWO_TIMES:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    .line 126
    :pswitch_2
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->FOUR_TIMES:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    .line 124
    :pswitch_3
    sget-object v0, Lcom/samsung/app/video/editor/external/Speed;->EIGHT_TIMES:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method blacklist copy()Lcom/samsung/app/video/editor/external/Region;
    .locals 2

    .line 28
    new-instance v0, Lcom/samsung/app/video/editor/external/Region;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/Region;-><init>()V

    .line 29
    .local v0, "reCopy":Lcom/samsung/app/video/editor/external/Region;
    iget v1, p0, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    .line 30
    iget v1, p0, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    .line 31
    iget v1, p0, Lcom/samsung/app/video/editor/external/Region;->slowAudioStartTime:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Region;->slowAudioStartTime:I

    .line 32
    iget v1, p0, Lcom/samsung/app/video/editor/external/Region;->slowAudioEndTime:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Region;->slowAudioEndTime:I

    .line 33
    iget v1, p0, Lcom/samsung/app/video/editor/external/Region;->speedSlowRegion:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/Region;->speedSlowRegion:I

    .line 34
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    .line 35
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Region;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Region;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    .line 36
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Region;->TAG:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Region;->TAG:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Region;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/Region;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 38
    return-object v0
.end method

.method public blacklist getSlowEndTime()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    return v0
.end method

.method public blacklist getSlowStartTime()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    return v0
.end method

.method public blacklist getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    return-object v0
.end method

.method public blacklist setListener(Lcom/samsung/app/video/editor/external/ElementChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/app/video/editor/external/ElementChangeListener;

    .line 98
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Region;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    .line 99
    return-void
.end method

.method protected blacklist setParentElement(Lcom/samsung/app/video/editor/external/Element;)V
    .locals 3
    .param p1, "element"    # Lcom/samsung/app/video/editor/external/Element;

    .line 23
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parent Element = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Region;->mParentElement:Lcom/samsung/app/video/editor/external/Element;

    .line 25
    return-void
.end method

.method public blacklist setRecordingMode(Lcom/samsung/app/video/editor/external/RecordingMode;)V
    .locals 0
    .param p1, "recordingMode"    # Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 102
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Region;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    .line 103
    return-void
.end method

.method public blacklist setSlowEndTime(I)V
    .locals 3
    .param p1, "slowEndTime"    # I

    .line 66
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "slowEndTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    if-eqz v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    sget-object v1, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2_120:Lcom/samsung/app/video/editor/external/RecordingMode;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    sget-object v1, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2_120_NONE_SVC:Lcom/samsung/app/video/editor/external/RecordingMode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    sget-object v1, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2:Lcom/samsung/app/video/editor/external/RecordingMode;

    if-ne v0, v1, :cond_1

    .line 72
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->TAG:Ljava/lang/String;

    const-string v1, "RecordingMode.SLOW_V2_240"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    iget v1, p0, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-direct {p0, v2}, Lcom/samsung/app/video/editor/external/Region;->getSpeedMapForV2240(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->onSlowRegionDurationChange(ILcom/samsung/app/video/editor/external/Speed;)V

    goto :goto_1

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    iget v1, p0, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-interface {v0, v1, v2}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->onSlowRegionDurationChange(ILcom/samsung/app/video/editor/external/Speed;)V

    goto :goto_1

    .line 69
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->TAG:Ljava/lang/String;

    const-string v1, "RecordingMode.SLOW_V2_120"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    iget v1, p0, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-direct {p0, v2}, Lcom/samsung/app/video/editor/external/Region;->getSpeedMapForV2120(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->onSlowRegionDurationChange(ILcom/samsung/app/video/editor/external/Speed;)V

    .line 78
    :cond_3
    :goto_1
    iput p1, p0, Lcom/samsung/app/video/editor/external/Region;->slowEndTime:I

    .line 79
    return-void
.end method

.method public blacklist setSlowStartTime(I)V
    .locals 3
    .param p1, "slowStartTime"    # I

    .line 46
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "slowStartTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    if-eqz v0, :cond_3

    .line 48
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    sget-object v1, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2_120:Lcom/samsung/app/video/editor/external/RecordingMode;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    sget-object v1, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2_120_NONE_SVC:Lcom/samsung/app/video/editor/external/RecordingMode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->mRecordingMode:Lcom/samsung/app/video/editor/external/RecordingMode;

    sget-object v1, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2:Lcom/samsung/app/video/editor/external/RecordingMode;

    if-ne v0, v1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->TAG:Ljava/lang/String;

    const-string v1, "RecordingMode.SLOW_V2_240"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    iget v1, p0, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-direct {p0, v2}, Lcom/samsung/app/video/editor/external/Region;->getSpeedMapForV2240(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->onSlowRegionDurationChange(ILcom/samsung/app/video/editor/external/Speed;)V

    goto :goto_1

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    iget v1, p0, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-interface {v0, v1, v2}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->onSlowRegionDurationChange(ILcom/samsung/app/video/editor/external/Speed;)V

    goto :goto_1

    .line 49
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->TAG:Ljava/lang/String;

    const-string v1, "RecordingMode.SLOW_V2_120"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->listener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    iget v1, p0, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    invoke-direct {p0, v2}, Lcom/samsung/app/video/editor/external/Region;->getSpeedMapForV2120(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/app/video/editor/external/ElementChangeListener;->onSlowRegionDurationChange(ILcom/samsung/app/video/editor/external/Speed;)V

    .line 58
    :cond_3
    :goto_1
    iput p1, p0, Lcom/samsung/app/video/editor/external/Region;->slowStartTime:I

    .line 59
    return-void
.end method

.method public blacklist setSpeedSlowRegion(Lcom/samsung/app/video/editor/external/Speed;)V
    .locals 2
    .param p1, "speed"    # Lcom/samsung/app/video/editor/external/Speed;

    .line 88
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setSpeedSlowRegion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Region;->mParentElement:Lcom/samsung/app/video/editor/external/Element;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p0, p1}, Lcom/samsung/app/video/editor/external/Element;->onSlowRegionSpeedChange(Lcom/samsung/app/video/editor/external/Region;Lcom/samsung/app/video/editor/external/Speed;)V

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Region;->mSpeedSlowRegion:Lcom/samsung/app/video/editor/external/Speed;

    .line 93
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Speed;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Region;->speedSlowRegion:I

    .line 94
    return-void
.end method
