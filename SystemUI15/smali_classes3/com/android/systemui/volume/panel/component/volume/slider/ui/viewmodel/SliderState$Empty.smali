.class public final Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState$Empty;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState$Empty;

.field public static final isEnabled:Z

.field public static final label:Ljava/lang/String;

.field public static final valueRange:Lkotlin/ranges/ClosedFloatRange;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState$Empty;

    invoke-direct {v0}, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState$Empty;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState$Empty;->INSTANCE:Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState$Empty;

    new-instance v0, Lkotlin/ranges/ClosedFloatRange;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lkotlin/ranges/ClosedFloatRange;-><init>(FF)V

    sput-object v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState$Empty;->valueRange:Lkotlin/ranges/ClosedFloatRange;

    const-string v0, ""

    sput-object v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState$Empty;->label:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState$Empty;->isEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState$Empty;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final getA11yClickDescription()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getA11yStateDescription()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getA11yStep()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getDisabledMessage()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getIcon()Lcom/android/systemui/common/shared/model/Icon;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState$Empty;->label:Ljava/lang/String;

    return-object p0
.end method

.method public final getValue()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getValueRange()Lkotlin/ranges/ClosedFloatingPointRange;
    .locals 0

    sget-object p0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState$Empty;->valueRange:Lkotlin/ranges/ClosedFloatRange;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    const p0, -0x4cfcb0ac

    return p0
.end method

.method public final isEnabled()Z
    .locals 0

    sget-boolean p0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState$Empty;->isEnabled:Z

    return p0
.end method

.method public final isMutable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Empty"

    return-object p0
.end method
