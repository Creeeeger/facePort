.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addGradientBackground(Landroid/content/Context;IIILandroid/graphics/drawable/Drawable;ZZ)V
    .locals 5

    const v0, 0x7f070bdc

    invoke-static {v0, p0}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x7f070bdd

    invoke-static {v1, p0}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x7f070bfb

    invoke-static {v2, p0}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    instance-of v2, p4, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_3

    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result p3

    const/16 v4, 0x4c

    invoke-static {v4, v2, v3, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p3

    check-cast p4, Landroid/graphics/drawable/GradientDrawable;

    const/4 v2, 0x0

    if-eqz p6, :cond_1

    goto :goto_1

    :cond_1
    move p3, v2

    :goto_1
    filled-new-array {p3, v2}, [I

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    invoke-virtual {p4, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    if-eqz p5, :cond_2

    invoke-virtual {p4, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_2
    invoke-virtual {p4, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    const/4 p0, 0x1

    invoke-virtual {p4, p0}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    int-to-float p0, p1

    div-float p0, v0, p0

    int-to-float p1, p2

    div-float/2addr v0, p1

    invoke-virtual {p4, p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    :cond_3
    return-void
.end method
