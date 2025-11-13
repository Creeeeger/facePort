.class Landroid/media/MediaDrm$ListenerArgs;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerArgs"
.end annotation


# instance fields
.field private final blacklist arg1:I

.field private final blacklist arg2:I

.field private final blacklist data:[B

.field private final blacklist expirationTime:J

.field private final blacklist hasNewUsableKey:Z

.field private final blacklist keyStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaDrm$KeyStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist sessionId:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetarg1(Landroid/media/MediaDrm$ListenerArgs;)I
    .locals 0

    iget p0, p0, Landroid/media/MediaDrm$ListenerArgs;->arg1:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetarg2(Landroid/media/MediaDrm$ListenerArgs;)I
    .locals 0

    iget p0, p0, Landroid/media/MediaDrm$ListenerArgs;->arg2:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetdata(Landroid/media/MediaDrm$ListenerArgs;)[B
    .locals 0

    iget-object p0, p0, Landroid/media/MediaDrm$ListenerArgs;->data:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetexpirationTime(Landroid/media/MediaDrm$ListenerArgs;)J
    .locals 2

    iget-wide v0, p0, Landroid/media/MediaDrm$ListenerArgs;->expirationTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgethasNewUsableKey(Landroid/media/MediaDrm$ListenerArgs;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/MediaDrm$ListenerArgs;->hasNewUsableKey:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetkeyStatusList(Landroid/media/MediaDrm$ListenerArgs;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaDrm$ListenerArgs;->keyStatusList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsessionId(Landroid/media/MediaDrm$ListenerArgs;)[B
    .locals 0

    iget-object p0, p0, Landroid/media/MediaDrm$ListenerArgs;->sessionId:[B

    return-object p0
.end method

.method public constructor blacklist <init>(II[B[BJLjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[B[BJ",
            "Ljava/util/List<",
            "Landroid/media/MediaDrm$KeyStatus;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/MediaDrm$ListenerArgs;->arg1:I

    iput p2, p0, Landroid/media/MediaDrm$ListenerArgs;->arg2:I

    iput-object p3, p0, Landroid/media/MediaDrm$ListenerArgs;->sessionId:[B

    iput-object p4, p0, Landroid/media/MediaDrm$ListenerArgs;->data:[B

    iput-wide p5, p0, Landroid/media/MediaDrm$ListenerArgs;->expirationTime:J

    iput-object p7, p0, Landroid/media/MediaDrm$ListenerArgs;->keyStatusList:Ljava/util/List;

    iput-boolean p8, p0, Landroid/media/MediaDrm$ListenerArgs;->hasNewUsableKey:Z

    return-void
.end method
