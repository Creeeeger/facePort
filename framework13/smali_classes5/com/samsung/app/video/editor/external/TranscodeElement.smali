.class public Lcom/samsung/app/video/editor/external/TranscodeElement;
.super Ljava/lang/Object;
.source "TranscodeElement.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_VOLUME:I = 0x64

.field private static final whitelist serialVersionUID:J = 0x5e70c4a5037dbfdL


# instance fields
.field private blacklist TAG:Ljava/lang/String;

.field private blacklist additionlAudioEleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/Element;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist drawingEleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist elementList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/Element;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist elementList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/Element;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist elementList2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/Element;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist elementList3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/Element;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist elementLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/Element;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist fullMovieDuration:I

.field private blacklist gifEleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/StickerParams;",
            ">;"
        }
    .end annotation
.end field

.field private transient blacklist mAssetManager:Landroid/content/res/AssetManager;

.field private blacklist mClipVideoAspectRatio:Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

.field private blacklist mClipVideoAspectRatioEnum:I

.field private blacklist mClipVideoCollageType:I

.field private blacklist mDoodleParamsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/DoodleParams;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mElementChangeListener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

.field private blacklist mThemeName:I

.field private blacklist mainVolumeLevel:I

.field private blacklist nextGroupID:I

.field private blacklist roiDeltaInfo:Lcom/samsung/app/video/editor/external/ROIDeltaInfo;

.field private blacklist roiInfo:Lcom/samsung/app/video/editor/external/ROIInfo;

.field private blacklist textEleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist viewportInfo:Lcom/samsung/app/video/editor/external/ViewPortInfo;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList1:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList2:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList3:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementLists:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->gifEleList:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->drawingEleList:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mDoodleParamsList:Ljava/util/List;

    .line 36
    const-string v0, "TranscodeElement"

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->TAG:Ljava/lang/String;

    .line 43
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mainVolumeLevel:I

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->fullMovieDuration:I

    .line 166
    sget-object v1, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;->ONE_BY_ONE:Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mClipVideoAspectRatio:Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    .line 169
    iput v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->nextGroupID:I

    .line 693
    new-instance v0, Lcom/samsung/app/video/editor/external/TranscodeElement$1;

    invoke-direct {v0, p0}, Lcom/samsung/app/video/editor/external/TranscodeElement$1;-><init>(Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mElementChangeListener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    .line 49
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementLists:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementLists:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList1:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementLists:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList2:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementLists:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList3:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/res/AssetManager;)V
    .locals 2
    .param p1, "am"    # Landroid/content/res/AssetManager;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList1:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList2:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList3:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementLists:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->gifEleList:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->drawingEleList:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mDoodleParamsList:Ljava/util/List;

    .line 36
    const-string v0, "TranscodeElement"

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->TAG:Ljava/lang/String;

    .line 43
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mainVolumeLevel:I

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->fullMovieDuration:I

    .line 166
    sget-object v1, Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;->ONE_BY_ONE:Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mClipVideoAspectRatio:Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    .line 169
    iput v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->nextGroupID:I

    .line 693
    new-instance v0, Lcom/samsung/app/video/editor/external/TranscodeElement$1;

    invoke-direct {v0, p0}, Lcom/samsung/app/video/editor/external/TranscodeElement$1;-><init>(Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mElementChangeListener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    .line 189
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mAssetManager:Landroid/content/res/AssetManager;

    .line 190
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementLists:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementLists:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList1:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementLists:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList2:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementLists:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList3:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/samsung/app/video/editor/external/TranscodeElement;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 15
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$100(Lcom/samsung/app/video/editor/external/TranscodeElement;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 15
    iget v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->fullMovieDuration:I

    return v0
.end method

.method static synthetic blacklist access$200(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/Speed;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/app/video/editor/external/TranscodeElement;
    .param p1, "x1"    # Lcom/samsung/app/video/editor/external/Speed;
    .param p2, "x2"    # I

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->changeDurationOnAddRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/Speed;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/app/video/editor/external/TranscodeElement;
    .param p1, "x1"    # Lcom/samsung/app/video/editor/external/Speed;
    .param p2, "x2"    # I

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->changeDurationOnRemoveRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    return-void
.end method

.method private blacklist changeDurationOnAddRegion(Lcom/samsung/app/video/editor/external/Speed;I)V
    .locals 3
    .param p1, "speed"    # Lcom/samsung/app/video/editor/external/Speed;
    .param p2, "time"    # I

    .line 762
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Full movie duration before add region = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->fullMovieDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeDurationOnAddRegion: time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " speed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Speed;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Full movie duration after add region = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->fullMovieDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    return-void
.end method

.method private blacklist changeDurationOnRemoveRegion(Lcom/samsung/app/video/editor/external/Speed;I)V
    .locals 3
    .param p1, "speed"    # Lcom/samsung/app/video/editor/external/Speed;
    .param p2, "time"    # I

    .line 800
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Full movie duration before remove region = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->fullMovieDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeDurationOnRemoveRegion: time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " speed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Speed;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Full movie duration after remove region = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->fullMovieDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    return-void
.end method

.method private blacklist setUniqueID(Lcom/samsung/app/video/editor/external/Element;)V
    .locals 1
    .param p1, "element"    # Lcom/samsung/app/video/editor/external/Element;

    .line 310
    iget v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->nextGroupID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->nextGroupID:I

    .line 311
    invoke-virtual {p1, v0}, Lcom/samsung/app/video/editor/external/Element;->setGroupID(I)Z

    .line 312
    return-void
.end method


# virtual methods
.method public blacklist addBGM(Lcom/samsung/app/video/editor/external/Element;)Z
    .locals 1
    .param p1, "element"    # Lcom/samsung/app/video/editor/external/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 264
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-direct {p0, p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setUniqueID(Lcom/samsung/app/video/editor/external/Element;)V

    .line 268
    const/4 v0, 0x1

    return v0

    .line 265
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addDoodleParams(Lcom/samsung/app/video/editor/external/DoodleParams;)Z
    .locals 3
    .param p1, "dp"    # Lcom/samsung/app/video/editor/external/DoodleParams;

    .line 643
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDoodleParams = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mDoodleParamsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist addElement(IILcom/samsung/app/video/editor/external/Element;)Z
    .locals 6
    .param p1, "listIndex"    # I
    .param p2, "elementIndex"    # I
    .param p3, "element"    # Lcom/samsung/app/video/editor/external/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 207
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/samsung/app/video/editor/external/Element;->getType()Lcom/samsung/app/video/editor/external/ElementType;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 214
    invoke-direct {p0, p3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setUniqueID(Lcom/samsung/app/video/editor/external/Element;)V

    .line 215
    if-nez p1, :cond_3

    .line 216
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mElementChangeListener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    invoke-virtual {p3, v0}, Lcom/samsung/app/video/editor/external/Element;->setElementChangeListener(Lcom/samsung/app/video/editor/external/ElementChangeListener;)V

    .line 220
    invoke-virtual {p3}, Lcom/samsung/app/video/editor/external/Element;->getRecordingMode()Lcom/samsung/app/video/editor/external/RecordingMode;

    move-result-object v0

    .line 221
    .local v0, "recordingMode":Lcom/samsung/app/video/editor/external/RecordingMode;
    invoke-virtual {p3}, Lcom/samsung/app/video/editor/external/Element;->getRegions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/Region;

    .line 222
    .local v2, "r":Lcom/samsung/app/video/editor/external/Region;
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Element :  RecordingMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; Region : startTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " endTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p3, v0}, Lcom/samsung/app/video/editor/external/Element;->isSlowV2_120(Lcom/samsung/app/video/editor/external/RecordingMode;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->TAG:Ljava/lang/String;

    const-string v4, "RecordingMode.SLOW_V2_120"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/samsung/app/video/editor/external/Element;->getSpeedMapForV2120(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {p0, v3, v4}, Lcom/samsung/app/video/editor/external/TranscodeElement;->changeDurationOnAddRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    goto :goto_1

    .line 226
    :cond_1
    sget-object v3, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2:Lcom/samsung/app/video/editor/external/RecordingMode;

    if-ne v0, v3, :cond_2

    .line 227
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->TAG:Ljava/lang/String;

    const-string v4, "RecordingMode.SLOW_V2_240"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/samsung/app/video/editor/external/Element;->getSpeedMapForV2240(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {p0, v3, v4}, Lcom/samsung/app/video/editor/external/TranscodeElement;->changeDurationOnAddRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    goto :goto_1

    .line 230
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {p0, v3, v4}, Lcom/samsung/app/video/editor/external/TranscodeElement;->changeDurationOnAddRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    .line 232
    .end local v2    # "r":Lcom/samsung/app/video/editor/external/Region;
    :goto_1
    goto/16 :goto_0

    .line 235
    .end local v0    # "recordingMode":Lcom/samsung/app/video/editor/external/RecordingMode;
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 208
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addElement(Lcom/samsung/app/video/editor/external/Element;ZI)Z
    .locals 6
    .param p1, "element"    # Lcom/samsung/app/video/editor/external/Element;
    .param p2, "clearTransition"    # Z
    .param p3, "listIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->TAG:Ljava/lang/String;

    const-string v1, "addElement"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getType()Lcom/samsung/app/video/editor/external/ElementType;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementLists:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    invoke-direct {p0, p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setUniqueID(Lcom/samsung/app/video/editor/external/Element;)V

    .line 559
    if-nez p3, :cond_3

    .line 560
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mElementChangeListener:Lcom/samsung/app/video/editor/external/ElementChangeListener;

    invoke-virtual {p1, v0}, Lcom/samsung/app/video/editor/external/Element;->setElementChangeListener(Lcom/samsung/app/video/editor/external/ElementChangeListener;)V

    .line 563
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getRecordingMode()Lcom/samsung/app/video/editor/external/RecordingMode;

    move-result-object v0

    .line 564
    .local v0, "recordingMode":Lcom/samsung/app/video/editor/external/RecordingMode;
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getRegions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/Region;

    .line 565
    .local v2, "r":Lcom/samsung/app/video/editor/external/Region;
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Element :  RecordingMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; Region : startTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " endTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual {p1, v0}, Lcom/samsung/app/video/editor/external/Element;->isSlowV2_120(Lcom/samsung/app/video/editor/external/RecordingMode;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 567
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->TAG:Ljava/lang/String;

    const-string v4, "RecordingMode.SLOW_V2_120"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/samsung/app/video/editor/external/Element;->getSpeedMapForV2120(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {p0, v3, v4}, Lcom/samsung/app/video/editor/external/TranscodeElement;->changeDurationOnAddRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    goto :goto_1

    .line 569
    :cond_1
    sget-object v3, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW_V2:Lcom/samsung/app/video/editor/external/RecordingMode;

    if-ne v0, v3, :cond_2

    .line 570
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->TAG:Ljava/lang/String;

    const-string v4, "RecordingMode.SLOW_V2_240"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/samsung/app/video/editor/external/Element;->getSpeedMapForV2240(Lcom/samsung/app/video/editor/external/Speed;)Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {p0, v3, v4}, Lcom/samsung/app/video/editor/external/TranscodeElement;->changeDurationOnAddRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    goto :goto_1

    .line 573
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {p0, v3, v4}, Lcom/samsung/app/video/editor/external/TranscodeElement;->changeDurationOnAddRegion(Lcom/samsung/app/video/editor/external/Speed;I)V

    .line 575
    .end local v2    # "r":Lcom/samsung/app/video/editor/external/Region;
    :goto_1
    goto/16 :goto_0

    .line 578
    .end local v0    # "recordingMode":Lcom/samsung/app/video/editor/external/RecordingMode;
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 552
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addGIFElement(Lcom/samsung/app/video/editor/external/StickerParams;)Z
    .locals 1
    .param p1, "gifelement"    # Lcom/samsung/app/video/editor/external/StickerParams;

    .line 625
    if-nez p1, :cond_0

    .line 626
    const/4 v0, 0x0

    return v0

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->gifEleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist addTextElement(Lcom/samsung/app/video/editor/external/ClipartParams;)Z
    .locals 1
    .param p1, "textElement"    # Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 636
    if-nez p1, :cond_0

    .line 637
    const/4 v0, 0x0

    return v0

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist clearTextElementList()V
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 686
    return-void
.end method

.method blacklist copy()Lcom/samsung/app/video/editor/external/TranscodeElement;
    .locals 5

    .line 58
    new-instance v0, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;-><init>()V

    .line 60
    .local v0, "tr":Lcom/samsung/app/video/editor/external/TranscodeElement;
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mAssetManager:Landroid/content/res/AssetManager;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mAssetManager:Landroid/content/res/AssetManager;

    .line 61
    iget v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->fullMovieDuration:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->fullMovieDuration:I

    .line 62
    iget v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mClipVideoAspectRatioEnum:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mClipVideoAspectRatioEnum:I

    .line 63
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mClipVideoAspectRatio:Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mClipVideoAspectRatio:Lcom/samsung/app/video/editor/external/ClipVideoAspectRatio;

    .line 64
    iget v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mClipVideoCollageType:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mClipVideoCollageType:I

    .line 65
    iget v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->nextGroupID:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->nextGroupID:I

    .line 68
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 69
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    .line 70
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/Element;

    .line 71
    .local v2, "e":Lcom/samsung/app/video/editor/external/Element;
    iget-object v3, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->copy()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v2    # "e":Lcom/samsung/app/video/editor/external/Element;
    goto :goto_0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList1:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 76
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList1:Ljava/util/List;

    .line 77
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList1:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/Element;

    .line 78
    .restart local v2    # "e":Lcom/samsung/app/video/editor/external/Element;
    iget-object v3, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList1:Ljava/util/List;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->copy()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v2    # "e":Lcom/samsung/app/video/editor/external/Element;
    goto :goto_1

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList2:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 83
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList2:Ljava/util/List;

    .line 84
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/Element;

    .line 85
    .restart local v2    # "e":Lcom/samsung/app/video/editor/external/Element;
    iget-object v3, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList2:Ljava/util/List;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->copy()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v2    # "e":Lcom/samsung/app/video/editor/external/Element;
    goto :goto_2

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList3:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 90
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList3:Ljava/util/List;

    .line 91
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList3:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/Element;

    .line 92
    .restart local v2    # "e":Lcom/samsung/app/video/editor/external/Element;
    iget-object v3, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList3:Ljava/util/List;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->copy()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .end local v2    # "e":Lcom/samsung/app/video/editor/external/Element;
    goto :goto_3

    .line 96
    :cond_3
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementLists:Ljava/util/List;

    iget-object v2, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementLists:Ljava/util/List;

    iget-object v2, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList1:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementLists:Ljava/util/List;

    iget-object v2, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList2:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementLists:Ljava/util/List;

    iget-object v2, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList3:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 102
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    .line 103
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/Element;

    .line 104
    .restart local v2    # "e":Lcom/samsung/app/video/editor/external/Element;
    iget-object v3, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->copy()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v2    # "e":Lcom/samsung/app/video/editor/external/Element;
    goto :goto_4

    .line 109
    :cond_4
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 110
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    .line 111
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 112
    .local v2, "cp":Lcom/samsung/app/video/editor/external/ClipartParams;
    iget-object v3, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    new-instance v4, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-direct {v4, v2}, Lcom/samsung/app/video/editor/external/ClipartParams;-><init>(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v2    # "cp":Lcom/samsung/app/video/editor/external/ClipartParams;
    goto :goto_5

    .line 116
    :cond_5
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->drawingEleList:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 117
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->drawingEleList:Ljava/util/List;

    .line 118
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->drawingEleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 119
    .restart local v2    # "cp":Lcom/samsung/app/video/editor/external/ClipartParams;
    iget-object v3, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->drawingEleList:Ljava/util/List;

    new-instance v4, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-direct {v4, v2}, Lcom/samsung/app/video/editor/external/ClipartParams;-><init>(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v2    # "cp":Lcom/samsung/app/video/editor/external/ClipartParams;
    goto :goto_6

    .line 123
    :cond_6
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->gifEleList:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 124
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->gifEleList:Ljava/util/List;

    .line 125
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->gifEleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/StickerParams;

    .line 126
    .local v2, "cp":Lcom/samsung/app/video/editor/external/StickerParams;
    iget-object v3, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->gifEleList:Ljava/util/List;

    new-instance v4, Lcom/samsung/app/video/editor/external/StickerParams;

    invoke-direct {v4, v2}, Lcom/samsung/app/video/editor/external/StickerParams;-><init>(Lcom/samsung/app/video/editor/external/StickerParams;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v2    # "cp":Lcom/samsung/app/video/editor/external/StickerParams;
    goto :goto_7

    .line 130
    :cond_7
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mDoodleParamsList:Ljava/util/List;

    if-eqz v1, :cond_8

    .line 131
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mDoodleParamsList:Ljava/util/List;

    .line 132
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mDoodleParamsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/DoodleParams;

    .line 133
    .local v2, "dp":Lcom/samsung/app/video/editor/external/DoodleParams;
    iget-object v3, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mDoodleParamsList:Ljava/util/List;

    new-instance v4, Lcom/samsung/app/video/editor/external/DoodleParams;

    invoke-direct {v4, v2}, Lcom/samsung/app/video/editor/external/DoodleParams;-><init>(Lcom/samsung/app/video/editor/external/DoodleParams;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v2    # "dp":Lcom/samsung/app/video/editor/external/DoodleParams;
    goto :goto_8

    .line 136
    :cond_8
    iget v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mThemeName:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mThemeName:I

    .line 137
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->roiInfo:Lcom/samsung/app/video/editor/external/ROIInfo;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->roiInfo:Lcom/samsung/app/video/editor/external/ROIInfo;

    .line 138
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->roiDeltaInfo:Lcom/samsung/app/video/editor/external/ROIDeltaInfo;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->roiDeltaInfo:Lcom/samsung/app/video/editor/external/ROIDeltaInfo;

    .line 139
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->viewportInfo:Lcom/samsung/app/video/editor/external/ViewPortInfo;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->viewportInfo:Lcom/samsung/app/video/editor/external/ViewPortInfo;

    .line 141
    iget v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mainVolumeLevel:I

    iput v1, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mainVolumeLevel:I

    .line 143
    return-object v0
.end method

.method public blacklist getAssetManager()Landroid/content/res/AssetManager;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mAssetManager:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public blacklist getBGMAtIndex(I)Lcom/samsung/app/video/editor/external/Element;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Element;

    return-object v0
.end method

.method public blacklist getBGMAtTime(I)Lcom/samsung/app/video/editor/external/Element;
    .locals 5
    .param p1, "storyBoardTime"    # I

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "time":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 278
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/Element;

    .line 279
    .local v2, "bgm":Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()I

    move-result v3

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 283
    int-to-float v3, p1

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    .line 284
    return-object v2

    .line 277
    .end local v2    # "bgm":Lcom/samsung/app/video/editor/external/Element;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getBGMList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/Element;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getDoodleParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/DoodleParams;",
            ">;"
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mDoodleParamsList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getElementList(I)Ljava/util/List;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/Element;",
            ">;"
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public blacklist getFullMovieDuration()I
    .locals 3

    .line 657
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFullMovieDuration  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->fullMovieDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->fullMovieDuration:I

    return v0
.end method

.method public blacklist getGIFElementList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/StickerParams;",
            ">;"
        }
    .end annotation

    .line 608
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->gifEleList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getMainVolumeLevel()I
    .locals 1

    .line 879
    iget v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mainVolumeLevel:I

    return v0
.end method

.method public blacklist getRoiDeltaInfo()Lcom/samsung/app/video/editor/external/ROIDeltaInfo;
    .locals 1

    .line 847
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->roiDeltaInfo:Lcom/samsung/app/video/editor/external/ROIDeltaInfo;

    return-object v0
.end method

.method public blacklist getRoiInfo()Lcom/samsung/app/video/editor/external/ROIInfo;
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->roiInfo:Lcom/samsung/app/video/editor/external/ROIInfo;

    return-object v0
.end method

.method public blacklist getTextElementList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;"
        }
    .end annotation

    .line 616
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getThemeName()I
    .locals 1

    .line 668
    iget v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mThemeName:I

    return v0
.end method

.method public blacklist getViewportInfo()Lcom/samsung/app/video/editor/external/ViewPortInfo;
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->viewportInfo:Lcom/samsung/app/video/editor/external/ViewPortInfo;

    return-object v0
.end method

.method public blacklist removeAllBGM()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 299
    return-void
.end method

.method public blacklist removeBGM(Lcom/samsung/app/video/editor/external/Element;)Z
    .locals 1
    .param p1, "bgm"    # Lcom/samsung/app/video/editor/external/Element;

    .line 294
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeElementAt(II)Lcom/samsung/app/video/editor/external/Element;
    .locals 2
    .param p1, "listIndex"    # I
    .param p2, "elementIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Element;

    .line 250
    .local v0, "el":Lcom/samsung/app/video/editor/external/Element;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/Element;->setElementChangeListener(Lcom/samsung/app/video/editor/external/ElementChangeListener;)V

    .line 253
    return-object v0
.end method

.method public blacklist setAssetManager(Landroid/content/res/AssetManager;)Z
    .locals 1
    .param p1, "assetmanager"    # Landroid/content/res/AssetManager;

    .line 587
    if-nez p1, :cond_0

    .line 588
    const/4 v0, 0x0

    return v0

    .line 589
    :cond_0
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mAssetManager:Landroid/content/res/AssetManager;

    .line 590
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setFullMovieDuration(I)Z
    .locals 3
    .param p1, "fullMovieDuration"    # I

    .line 154
    if-gez p1, :cond_0

    .line 155
    const/4 v0, 0x0

    return v0

    .line 156
    :cond_0
    iput p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->fullMovieDuration:I

    .line 157
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFullMovieDuration  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->fullMovieDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setMainVolumeLevel(I)Z
    .locals 1
    .param p1, "volumeLevel"    # I

    .line 868
    if-gez p1, :cond_0

    .line 869
    const/4 v0, 0x0

    return v0

    .line 870
    :cond_0
    iput p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mainVolumeLevel:I

    .line 871
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setRoiDeltaInfo(Lcom/samsung/app/video/editor/external/ROIDeltaInfo;)V
    .locals 0
    .param p1, "roiDeltaInfo"    # Lcom/samsung/app/video/editor/external/ROIDeltaInfo;

    .line 851
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->roiDeltaInfo:Lcom/samsung/app/video/editor/external/ROIDeltaInfo;

    .line 852
    return-void
.end method

.method public blacklist setRoiInfo(Lcom/samsung/app/video/editor/external/ROIInfo;)V
    .locals 0
    .param p1, "roiInfo"    # Lcom/samsung/app/video/editor/external/ROIInfo;

    .line 843
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->roiInfo:Lcom/samsung/app/video/editor/external/ROIInfo;

    .line 844
    return-void
.end method

.method public blacklist setThemeName(I)V
    .locals 0
    .param p1, "theme"    # I

    .line 677
    iput p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mThemeName:I

    .line 678
    return-void
.end method

.method public blacklist setViewportInfo(Lcom/samsung/app/video/editor/external/ViewPortInfo;)V
    .locals 0
    .param p1, "ViewportInfo"    # Lcom/samsung/app/video/editor/external/ViewPortInfo;

    .line 859
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->viewportInfo:Lcom/samsung/app/video/editor/external/ViewPortInfo;

    .line 860
    return-void
.end method
