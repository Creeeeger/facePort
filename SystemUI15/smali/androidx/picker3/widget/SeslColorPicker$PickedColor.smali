.class public final Landroidx/picker3/widget/SeslColorPicker$PickedColor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAlpha:I

.field public mColor:Ljava/lang/Integer;

.field public final mHsv:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    const/16 v0, 0xff

    iput v0, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mHsv:[F

    return-void
.end method
