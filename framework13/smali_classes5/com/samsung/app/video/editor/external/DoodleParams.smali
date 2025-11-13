.class public Lcom/samsung/app/video/editor/external/DoodleParams;
.super Ljava/lang/Object;
.source "DoodleParams.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist doodletype:I

.field private blacklist endTime:I

.field private blacklist height:I

.field private blacklist mDoodleType:Lcom/samsung/app/video/editor/external/DoodleType;

.field private blacklist mOrderLayer:I

.field private blacklist mStrokeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/DoodleStroke;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist startTime:I

.field private blacklist storyboardEndTime:I

.field private blacklist storyboardStartTime:I

.field private blacklist width:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/samsung/app/video/editor/external/DoodleParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/external/DoodleParams;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->mStrokeList:Ljava/util/List;

    .line 27
    sget-object v0, Lcom/samsung/app/video/editor/external/DoodleType;->DOODLE_LIVE:Lcom/samsung/app/video/editor/external/DoodleType;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->mDoodleType:Lcom/samsung/app/video/editor/external/DoodleType;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->doodletype:I

    .line 35
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/app/video/editor/external/DoodleParams;)V
    .locals 4
    .param p1, "doodleParams"    # Lcom/samsung/app/video/editor/external/DoodleParams;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->mStrokeList:Ljava/util/List;

    .line 27
    sget-object v0, Lcom/samsung/app/video/editor/external/DoodleType;->DOODLE_LIVE:Lcom/samsung/app/video/editor/external/DoodleType;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->mDoodleType:Lcom/samsung/app/video/editor/external/DoodleType;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->doodletype:I

    .line 38
    iget-object v0, p1, Lcom/samsung/app/video/editor/external/DoodleParams;->mStrokeList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/DoodleStroke;

    .line 40
    .local v1, "ds":Lcom/samsung/app/video/editor/external/DoodleStroke;
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->mStrokeList:Ljava/util/List;

    new-instance v3, Lcom/samsung/app/video/editor/external/DoodleStroke;

    invoke-direct {v3, v1}, Lcom/samsung/app/video/editor/external/DoodleStroke;-><init>(Lcom/samsung/app/video/editor/external/DoodleStroke;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .end local v1    # "ds":Lcom/samsung/app/video/editor/external/DoodleStroke;
    goto :goto_0

    .line 43
    :cond_0
    iget v0, p1, Lcom/samsung/app/video/editor/external/DoodleParams;->startTime:I

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->startTime:I

    .line 44
    iget v0, p1, Lcom/samsung/app/video/editor/external/DoodleParams;->endTime:I

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->endTime:I

    .line 45
    iget-object v0, p1, Lcom/samsung/app/video/editor/external/DoodleParams;->mDoodleType:Lcom/samsung/app/video/editor/external/DoodleType;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->mDoodleType:Lcom/samsung/app/video/editor/external/DoodleType;

    .line 46
    iget v0, p1, Lcom/samsung/app/video/editor/external/DoodleParams;->doodletype:I

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->doodletype:I

    .line 47
    iget v0, p1, Lcom/samsung/app/video/editor/external/DoodleParams;->width:I

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->width:I

    .line 48
    iget v0, p1, Lcom/samsung/app/video/editor/external/DoodleParams;->height:I

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->height:I

    .line 49
    iget v0, p1, Lcom/samsung/app/video/editor/external/DoodleParams;->mOrderLayer:I

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->mOrderLayer:I

    .line 50
    iget v0, p1, Lcom/samsung/app/video/editor/external/DoodleParams;->storyboardStartTime:I

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->storyboardStartTime:I

    .line 51
    iget v0, p1, Lcom/samsung/app/video/editor/external/DoodleParams;->storyboardEndTime:I

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->storyboardEndTime:I

    .line 52
    return-void
.end method


# virtual methods
.method public blacklist addStroke(Lcom/samsung/app/video/editor/external/DoodleStroke;)Z
    .locals 1
    .param p1, "stroke"    # Lcom/samsung/app/video/editor/external/DoodleStroke;

    .line 56
    if-nez p1, :cond_0

    .line 57
    const/4 v0, 0x0

    return v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->mStrokeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getDoodleType()Lcom/samsung/app/video/editor/external/DoodleType;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->mDoodleType:Lcom/samsung/app/video/editor/external/DoodleType;

    return-object v0
.end method

.method public blacklist getEndTime()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->endTime:I

    return v0
.end method

.method public blacklist getHeight()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->height:I

    return v0
.end method

.method public blacklist getOrderLayer()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->mOrderLayer:I

    return v0
.end method

.method public blacklist getStartTime()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->startTime:I

    return v0
.end method

.method public blacklist getStoryboardEndTime()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->storyboardEndTime:I

    return v0
.end method

.method public blacklist getStoryboardStartTime()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->storyboardStartTime:I

    return v0
.end method

.method public blacklist getStrokeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/DoodleStroke;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->mStrokeList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->mStrokeList:Ljava/util/List;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->mStrokeList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getWidth()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->width:I

    return v0
.end method

.method public blacklist setDoodleType(Lcom/samsung/app/video/editor/external/DoodleType;)V
    .locals 3
    .param p1, "type"    # Lcom/samsung/app/video/editor/external/DoodleType;

    .line 103
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->mDoodleType:Lcom/samsung/app/video/editor/external/DoodleType;

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->mStrokeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->mStrokeList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/DoodleStroke;

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->mDoodleType:Lcom/samsung/app/video/editor/external/DoodleType;

    invoke-virtual {v1, v2}, Lcom/samsung/app/video/editor/external/DoodleStroke;->setDoodleType(Lcom/samsung/app/video/editor/external/DoodleType;)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->mDoodleType:Lcom/samsung/app/video/editor/external/DoodleType;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/DoodleType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->doodletype:I

    .line 108
    return-void
.end method

.method public blacklist setEndTime(I)V
    .locals 0
    .param p1, "time"    # I

    .line 71
    iput p1, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->endTime:I

    .line 72
    return-void
.end method

.method public blacklist setHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .line 95
    iput p1, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->height:I

    .line 96
    return-void
.end method

.method public blacklist setOrderLayer(I)V
    .locals 3
    .param p1, "orderLayer"    # I

    .line 115
    sget-object v0, Lcom/samsung/app/video/editor/external/DoodleParams;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOrderLayer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iput p1, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->mOrderLayer:I

    .line 117
    return-void
.end method

.method public blacklist setStartTime(I)V
    .locals 0
    .param p1, "time"    # I

    .line 79
    iput p1, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->startTime:I

    .line 80
    return-void
.end method

.method public blacklist setStoryboardEndTime(I)V
    .locals 0
    .param p1, "storyboardEndTime"    # I

    .line 132
    iput p1, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->storyboardEndTime:I

    .line 133
    return-void
.end method

.method public blacklist setStoryboardStartTime(I)V
    .locals 0
    .param p1, "storyboardStartTime"    # I

    .line 124
    iput p1, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->storyboardStartTime:I

    .line 125
    return-void
.end method

.method public blacklist setWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .line 87
    iput p1, p0, Lcom/samsung/app/video/editor/external/DoodleParams;->width:I

    .line 88
    return-void
.end method
