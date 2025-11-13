.class public final Landroidx/picker/widget/SeslColorPicker$PickedColor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mColor:Ljava/lang/Integer;

.field public final mHsv:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mHsv:[F

    return-void
.end method


# virtual methods
.method public final setColor(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mHsv:[F

    invoke-static {p1, p0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    return-void
.end method
