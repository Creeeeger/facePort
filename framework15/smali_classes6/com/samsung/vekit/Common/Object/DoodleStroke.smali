.class public Lcom/samsung/vekit/Common/Object/DoodleStroke;
.super Ljava/lang/Object;
.source "DoodleStroke.java"


# instance fields
.field private blacklist isAuto:Z

.field private blacklist mosaicStrength:I

.field private blacklist patternURI:Ljava/lang/String;

.field private blacklist penType:Lcom/samsung/vekit/Common/Type/PenType;

.field private final blacklist pointList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/DoodlePoint;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist strokeColor:I

.field private blacklist strokeSize:I

.field private blacklist strokeType:Lcom/samsung/vekit/Common/Type/StrokeType;


# direct methods
.method public constructor blacklist <init>(IILcom/samsung/vekit/Common/Type/PenType;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/vekit/Common/Type/StrokeType;->NORMAL:Lcom/samsung/vekit/Common/Type/StrokeType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeType:Lcom/samsung/vekit/Common/Type/StrokeType;

    iput p1, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeColor:I

    iput p2, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeSize:I

    iput-object p3, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->penType:Lcom/samsung/vekit/Common/Type/PenType;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->mosaicStrength:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->pointList:Ljava/util/ArrayList;

    iput-boolean p4, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->isAuto:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/Object/DoodleStroke;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/vekit/Common/Type/StrokeType;->NORMAL:Lcom/samsung/vekit/Common/Type/StrokeType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeType:Lcom/samsung/vekit/Common/Type/StrokeType;

    iget v0, p1, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeColor:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeColor:I

    iget v0, p1, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeSize:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeSize:I

    iget-object v0, p1, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeType:Lcom/samsung/vekit/Common/Type/StrokeType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeType:Lcom/samsung/vekit/Common/Type/StrokeType;

    iget-object v0, p1, Lcom/samsung/vekit/Common/Object/DoodleStroke;->penType:Lcom/samsung/vekit/Common/Type/PenType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->penType:Lcom/samsung/vekit/Common/Type/PenType;

    iget v0, p1, Lcom/samsung/vekit/Common/Object/DoodleStroke;->mosaicStrength:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->mosaicStrength:I

    iget-object v0, p1, Lcom/samsung/vekit/Common/Object/DoodleStroke;->patternURI:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->patternURI:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/samsung/vekit/Common/Object/DoodleStroke;->isAuto:Z

    iput-boolean v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->isAuto:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->pointList:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/samsung/vekit/Common/Object/DoodleStroke;->pointList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->pointList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/samsung/vekit/Common/Object/DoodleStroke;->pointList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist addDoodlePoint(Lcom/samsung/vekit/Common/Object/DoodlePoint;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->pointList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addDoodlePointList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/DoodlePoint;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->pointList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public blacklist clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->pointList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public blacklist getDoodlePointList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/vekit/Common/Object/DoodlePoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->pointList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMosaicStrength()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->mosaicStrength:I

    return v0
.end method

.method public blacklist getPatternURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->patternURI:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPenType()Lcom/samsung/vekit/Common/Type/PenType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->penType:Lcom/samsung/vekit/Common/Type/PenType;

    return-object v0
.end method

.method public blacklist getStrokeColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeColor:I

    return v0
.end method

.method public blacklist getStrokeSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeSize:I

    return v0
.end method

.method public blacklist getStrokeType()Lcom/samsung/vekit/Common/Type/StrokeType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeType:Lcom/samsung/vekit/Common/Type/StrokeType;

    return-object v0
.end method

.method public blacklist isAuto()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->isAuto:Z

    return v0
.end method

.method public blacklist setMosaicStrength(I)Lcom/samsung/vekit/Common/Object/DoodleStroke;
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->mosaicStrength:I

    return-object p0
.end method

.method public blacklist setPatternURI(Ljava/lang/String;)Lcom/samsung/vekit/Common/Object/DoodleStroke;
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->patternURI:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setPenType(Lcom/samsung/vekit/Common/Type/PenType;)Lcom/samsung/vekit/Common/Object/DoodleStroke;
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->penType:Lcom/samsung/vekit/Common/Type/PenType;

    return-object p0
.end method

.method public blacklist setStrokeColor(I)Lcom/samsung/vekit/Common/Object/DoodleStroke;
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeColor:I

    return-object p0
.end method

.method public blacklist setStrokeSize(I)Lcom/samsung/vekit/Common/Object/DoodleStroke;
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeSize:I

    return-object p0
.end method

.method public blacklist setStrokeType(Lcom/samsung/vekit/Common/Type/StrokeType;)Lcom/samsung/vekit/Common/Object/DoodleStroke;
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeType:Lcom/samsung/vekit/Common/Type/StrokeType;

    return-object p0
.end method
