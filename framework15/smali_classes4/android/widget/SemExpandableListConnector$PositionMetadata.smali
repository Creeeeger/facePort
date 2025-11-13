.class public Landroid/widget/SemExpandableListConnector$PositionMetadata;
.super Ljava/lang/Object;
.source "SemExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionMetadata"
.end annotation


# static fields
.field private static final blacklist MAX_POOL_SIZE:I = 0x5

.field private static blacklist sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemExpandableListConnector$PositionMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist groupInsertIndex:I

.field public blacklist groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

.field public blacklist position:Landroid/widget/SemExpandableListPosition;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getRecycledOrCreate()Landroid/widget/SemExpandableListConnector$PositionMetadata;
    .locals 3

    sget-object v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SemExpandableListConnector$PositionMetadata;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {v1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->resetState()V

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Landroid/widget/SemExpandableListConnector$PositionMetadata;

    invoke-direct {v1}, Landroid/widget/SemExpandableListConnector$PositionMetadata;-><init>()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static blacklist obtain(IIIILandroid/widget/SemExpandableListConnector$GroupMetadata;I)Landroid/widget/SemExpandableListConnector$PositionMetadata;
    .locals 2

    invoke-static {}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->getRecycledOrCreate()Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v0

    invoke-static {p1, p2, p3, p0}, Landroid/widget/SemExpandableListPosition;->obtain(IIII)Landroid/widget/SemExpandableListPosition;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iput-object p4, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    iput p5, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    return-object v0
.end method

.method private blacklist resetState()V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    invoke-virtual {v0}, Landroid/widget/SemExpandableListPosition;->recycle()V

    iput-object v1, p0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    :cond_0
    iput-object v1, p0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    return-void
.end method


# virtual methods
.method public blacklist isExpanded()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/SemExpandableListConnector$GroupMetadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist recycle()V
    .locals 3

    invoke-direct {p0}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->resetState()V

    sget-object v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    sget-object v1, Landroid/widget/SemExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
