.class Landroid/widget/Chronometer$RefreshData;
.super Ljava/lang/Object;
.source "Chronometer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Chronometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefreshData"
.end annotation


# static fields
.field private static final blacklist POOL_MAX:I = 0x18

.field private static final blacklist sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/widget/Chronometer$RefreshData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist animate:Z

.field public blacklist id:I

.field public blacklist progress:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/widget/Chronometer$RefreshData;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist obtain(IIZ)Landroid/widget/Chronometer$RefreshData;
    .locals 2

    sget-object v0, Landroid/widget/Chronometer$RefreshData;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer$RefreshData;

    if-nez v0, :cond_0

    new-instance v1, Landroid/widget/Chronometer$RefreshData;

    invoke-direct {v1}, Landroid/widget/Chronometer$RefreshData;-><init>()V

    move-object v0, v1

    :cond_0
    iput p0, v0, Landroid/widget/Chronometer$RefreshData;->id:I

    iput p1, v0, Landroid/widget/Chronometer$RefreshData;->progress:I

    iput-boolean p2, v0, Landroid/widget/Chronometer$RefreshData;->animate:Z

    return-object v0
.end method


# virtual methods
.method public blacklist recycle()V
    .locals 1

    sget-object v0, Landroid/widget/Chronometer$RefreshData;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method
