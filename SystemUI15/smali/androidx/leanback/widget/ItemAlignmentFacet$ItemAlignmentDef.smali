.class public Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mFocusViewId:I

.field public final mOffsetPercent:F

.field public final mViewId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    iput v0, p0, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mFocusViewId:I

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    return-void
.end method
