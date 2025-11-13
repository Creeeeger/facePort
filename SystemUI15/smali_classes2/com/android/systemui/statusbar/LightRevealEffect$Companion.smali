.class public final Lcom/android/systemui/statusbar/LightRevealEffect$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $$INSTANCE:Lcom/android/systemui/statusbar/LightRevealEffect$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/LightRevealEffect$Companion;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/LightRevealEffect$Companion;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/LightRevealEffect$Companion;->$$INSTANCE:Lcom/android/systemui/statusbar/LightRevealEffect$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPercentPastThreshold(FF)F
    .locals 1

    sub-float/2addr p0, p1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(FF)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    div-float/2addr v0, p1

    mul-float/2addr v0, p0

    return v0
.end method
