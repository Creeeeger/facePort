.class Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;
.super Ljava/lang/Object;
.source "TaskOffLoaderThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapJobs"
.end annotation


# instance fields
.field blacklist data:[B

.field blacklist effectType:I

.field blacklist height:I

.field blacklist id:I

.field blacklist isEffect:I

.field blacklist listener:Lcom/samsung/app/video/editor/external/ThumbnailListener;

.field blacklist lutInfo:Lcom/samsung/app/video/editor/external/LUTInfo;

.field blacklist param:Lcom/samsung/app/video/editor/external/LayerTransformParams;

.field blacklist width:I


# direct methods
.method public constructor blacklist <init>(I[BIIIILcom/samsung/app/video/editor/external/ThumbnailListener;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "effectType"    # I
    .param p6, "isEffect"    # I
    .param p7, "l"    # Lcom/samsung/app/video/editor/external/ThumbnailListener;

    .line 855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 856
    iput p1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->id:I

    .line 857
    iput-object p2, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->data:[B

    .line 858
    iput p3, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->width:I

    .line 859
    iput p4, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->height:I

    .line 860
    iput p5, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->effectType:I

    .line 861
    iput p6, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->isEffect:I

    .line 862
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->lutInfo:Lcom/samsung/app/video/editor/external/LUTInfo;

    .line 863
    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->param:Lcom/samsung/app/video/editor/external/LayerTransformParams;

    .line 864
    iput-object p7, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->listener:Lcom/samsung/app/video/editor/external/ThumbnailListener;

    .line 865
    return-void
.end method

.method public constructor blacklist <init>(I[BIIILcom/samsung/app/video/editor/external/LUTInfo;ILcom/samsung/app/video/editor/external/LayerTransformParams;Lcom/samsung/app/video/editor/external/ThumbnailListener;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "effectType"    # I
    .param p6, "lutInfo"    # Lcom/samsung/app/video/editor/external/LUTInfo;
    .param p7, "isEffect"    # I
    .param p8, "param"    # Lcom/samsung/app/video/editor/external/LayerTransformParams;
    .param p9, "l"    # Lcom/samsung/app/video/editor/external/ThumbnailListener;

    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    iput p1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->id:I

    .line 881
    iput-object p2, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->data:[B

    .line 882
    iput p3, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->width:I

    .line 883
    iput p4, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->height:I

    .line 884
    iput p5, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->effectType:I

    .line 885
    iput-object p6, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->lutInfo:Lcom/samsung/app/video/editor/external/LUTInfo;

    .line 886
    iput p7, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->isEffect:I

    .line 887
    iput-object p8, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->param:Lcom/samsung/app/video/editor/external/LayerTransformParams;

    .line 888
    iput-object p9, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->listener:Lcom/samsung/app/video/editor/external/ThumbnailListener;

    .line 889
    return-void
.end method

.method public constructor blacklist <init>(I[BIIILcom/samsung/app/video/editor/external/LUTInfo;ILcom/samsung/app/video/editor/external/ThumbnailListener;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "effectType"    # I
    .param p6, "lutInfo"    # Lcom/samsung/app/video/editor/external/LUTInfo;
    .param p7, "isEffect"    # I
    .param p8, "l"    # Lcom/samsung/app/video/editor/external/ThumbnailListener;

    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    iput p1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->id:I

    .line 869
    iput-object p2, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->data:[B

    .line 870
    iput p3, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->width:I

    .line 871
    iput p4, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->height:I

    .line 872
    iput p5, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->effectType:I

    .line 873
    iput-object p6, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->lutInfo:Lcom/samsung/app/video/editor/external/LUTInfo;

    .line 874
    iput p7, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->isEffect:I

    .line 875
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->param:Lcom/samsung/app/video/editor/external/LayerTransformParams;

    .line 876
    iput-object p8, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$BitmapJobs;->listener:Lcom/samsung/app/video/editor/external/ThumbnailListener;

    .line 877
    return-void
.end method
