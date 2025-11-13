.class public final Landroidx/leanback/widget/Parallax$IntPropertyMarkerValue;
.super Landroidx/leanback/widget/Parallax$PropertyMarkerValue;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mFactionOfMax:F

.field public final mValue:I


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/Parallax$IntProperty;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/Parallax$IntPropertyMarkerValue;-><init>(Landroidx/leanback/widget/Parallax$IntProperty;IF)V

    return-void
.end method

.method public constructor <init>(Landroidx/leanback/widget/Parallax$IntProperty;IF)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/leanback/widget/Parallax$PropertyMarkerValue;-><init>(Ljava/lang/Object;)V

    iput p2, p0, Landroidx/leanback/widget/Parallax$IntPropertyMarkerValue;->mValue:I

    iput p3, p0, Landroidx/leanback/widget/Parallax$IntPropertyMarkerValue;->mFactionOfMax:F

    return-void
.end method
