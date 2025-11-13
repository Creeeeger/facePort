.class Landroid/app/SemWallpaperResourcesInfo$Item;
.super Ljava/lang/Object;
.source "SemWallpaperResourcesInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SemWallpaperResourcesInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Item"
.end annotation


# instance fields
.field private blacklist cmfInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist fileName:Ljava/lang/String;

.field private blacklist index:Ljava/lang/Integer;

.field private blacklist isBespoke:Z

.field private blacklist isBlackFirstFrame:Z

.field private blacklist isDefault:Z

.field private blacklist screen:I

.field private blacklist type:I

.field private blacklist typeParams:Landroid/app/SemWallpaperResourcesInfo$TypeParams;

.field private blacklist videoFrameInfo:I

.field private blacklist which:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->cmfInfo:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->index:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetisBespoke(Landroid/app/SemWallpaperResourcesInfo$Item;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->isBespoke:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetisBlackFirstFrame(Landroid/app/SemWallpaperResourcesInfo$Item;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->isBlackFirstFrame:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetisDefault(Landroid/app/SemWallpaperResourcesInfo$Item;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->isDefault:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetscreen(Landroid/app/SemWallpaperResourcesInfo$Item;)I
    .locals 0

    iget p0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->screen:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettype(Landroid/app/SemWallpaperResourcesInfo$Item;)I
    .locals 0

    iget p0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->type:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettypeParams(Landroid/app/SemWallpaperResourcesInfo$Item;)Landroid/app/SemWallpaperResourcesInfo$TypeParams;
    .locals 0

    iget-object p0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->typeParams:Landroid/app/SemWallpaperResourcesInfo$TypeParams;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetvideoFrameInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)I
    .locals 0

    iget p0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->videoFrameInfo:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetwhich(Landroid/app/SemWallpaperResourcesInfo$Item;)I
    .locals 0

    iget p0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->which:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputfileName(Landroid/app/SemWallpaperResourcesInfo$Item;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->fileName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputindex(Landroid/app/SemWallpaperResourcesInfo$Item;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->index:Ljava/lang/Integer;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputisBespoke(Landroid/app/SemWallpaperResourcesInfo$Item;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->isBespoke:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputisBlackFirstFrame(Landroid/app/SemWallpaperResourcesInfo$Item;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->isBlackFirstFrame:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputisDefault(Landroid/app/SemWallpaperResourcesInfo$Item;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->isDefault:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputscreen(Landroid/app/SemWallpaperResourcesInfo$Item;I)V
    .locals 0

    iput p1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->screen:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputtype(Landroid/app/SemWallpaperResourcesInfo$Item;I)V
    .locals 0

    iput p1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->type:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputvideoFrameInfo(Landroid/app/SemWallpaperResourcesInfo$Item;I)V
    .locals 0

    iput p1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->videoFrameInfo:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputwhich(Landroid/app/SemWallpaperResourcesInfo$Item;I)V
    .locals 0

    iput p1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->which:I

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 3

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->index:Ljava/lang/Integer;

    .line 609
    iput v0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->which:I

    .line 610
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->fileName:Ljava/lang/String;

    .line 611
    iput v0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->type:I

    .line 612
    new-instance v2, Landroid/app/SemWallpaperResourcesInfo$TypeParams;

    invoke-direct {v2, v1}, Landroid/app/SemWallpaperResourcesInfo$TypeParams;-><init>(Landroid/app/SemWallpaperResourcesInfo$TypeParams-IA;)V

    iput-object v2, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->typeParams:Landroid/app/SemWallpaperResourcesInfo$TypeParams;

    .line 613
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->screen:I

    .line 614
    iput v0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->videoFrameInfo:I

    .line 615
    iput-boolean v1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->isBlackFirstFrame:Z

    .line 616
    iput-boolean v1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->isDefault:Z

    .line 617
    iput-boolean v1, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->isBespoke:Z

    .line 618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/SemWallpaperResourcesInfo$Item;->cmfInfo:Ljava/util/ArrayList;

    return-void
.end method
