.class public final Landroidx/slice/widget/SliceViewPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mListener:Landroidx/slice/widget/SliceViewPolicy$PolicyChangeListener;

.field public mMaxHeight:I

.field public mMaxSmallHeight:I

.field public mMode:I

.field public mScrollable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/slice/widget/SliceViewPolicy;->mMaxHeight:I

    iput v0, p0, Landroidx/slice/widget/SliceViewPolicy;->mMaxSmallHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/widget/SliceViewPolicy;->mScrollable:Z

    const/4 v0, 0x2

    iput v0, p0, Landroidx/slice/widget/SliceViewPolicy;->mMode:I

    return-void
.end method
