.class public final Landroidx/appcompat/widget/SeslProgressBar$RefreshData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final sPool:Landroidx/core/util/Pools$SynchronizedPool;


# instance fields
.field public animate:Z

.field public fromUser:Z

.field public id:I

.field public progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->sPool:Landroidx/core/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(IIZZ)Landroidx/appcompat/widget/SeslProgressBar$RefreshData;
    .locals 1

    sget-object v0, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->sPool:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;

    invoke-direct {v0}, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;-><init>()V

    :cond_0
    iput p0, v0, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->id:I

    iput p1, v0, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->progress:I

    iput-boolean p2, v0, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->fromUser:Z

    iput-boolean p3, v0, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->animate:Z

    return-object v0
.end method
