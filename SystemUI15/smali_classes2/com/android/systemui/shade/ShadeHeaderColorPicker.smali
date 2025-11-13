.class public final Lcom/android/systemui/shade/ShadeHeaderColorPicker;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderColorPicker;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderColorPicker;->context:Landroid/content/Context;

    const v0, 0x7f060683

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p1, p1, 0xff

    mul-int/2addr v0, v0

    int-to-double v2, v0

    const-wide v4, 0x3fced916872b020cL    # 0.241

    mul-double/2addr v2, v4

    mul-int/2addr v1, v1

    int-to-double v0, v1

    const-wide v4, 0x3fe61cac083126e9L    # 0.691

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    mul-int/2addr p1, p1

    int-to-double v2, p1

    const-wide v4, 0x3fb16872b020c49cL    # 0.068

    mul-double/2addr v2, v4

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    :cond_0
    new-instance p1, Landroid/view/ContextThemeWrapper;

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderColorPicker;->context:Landroid/content/Context;

    const v0, 0x7f140616

    invoke-direct {p1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance p0, Lcom/android/systemui/DualToneHandler;

    invoke-direct {p0, p1}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method
