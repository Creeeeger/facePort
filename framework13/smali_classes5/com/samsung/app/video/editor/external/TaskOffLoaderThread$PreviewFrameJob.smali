.class Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$PreviewFrameJob;
.super Ljava/lang/Object;
.source "TaskOffLoaderThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviewFrameJob"
.end annotation


# instance fields
.field public blacklist clipartList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist drawList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist firstElement:Lcom/samsung/app/video/editor/external/Element;

.field public blacklist height:I

.field blacklist listener:Lcom/samsung/app/video/editor/external/ThumbnailListener;

.field public blacklist previewType:I

.field public blacklist secondElement:Lcom/samsung/app/video/editor/external/Element;

.field public blacklist storyboardTime:F

.field public blacklist time:I

.field public blacklist width:I


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JIIIFLjava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "firstElement"    # Lcom/samsung/app/video/editor/external/Element;
    .param p2, "secondElement"    # Lcom/samsung/app/video/editor/external/Element;
    .param p3, "time"    # J
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "type"    # I
    .param p8, "storyboardTime"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/app/video/editor/external/Element;",
            "Lcom/samsung/app/video/editor/external/Element;",
            "JIIIF",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;)V"
        }
    .end annotation

    .line 800
    .local p9, "clipartList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local p10, "drawList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 801
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$PreviewFrameJob;->firstElement:Lcom/samsung/app/video/editor/external/Element;

    .line 802
    iput-object p2, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$PreviewFrameJob;->secondElement:Lcom/samsung/app/video/editor/external/Element;

    .line 803
    iput p5, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$PreviewFrameJob;->width:I

    .line 804
    iput p6, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$PreviewFrameJob;->height:I

    .line 805
    long-to-int v0, p3

    iput v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$PreviewFrameJob;->time:I

    .line 806
    iput p7, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$PreviewFrameJob;->previewType:I

    .line 807
    iput p8, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$PreviewFrameJob;->storyboardTime:F

    .line 808
    iput-object p9, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$PreviewFrameJob;->clipartList:Ljava/util/List;

    .line 809
    iput-object p10, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$PreviewFrameJob;->drawList:Ljava/util/List;

    .line 810
    return-void
.end method
