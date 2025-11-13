.class public final Lcom/android/systemui/statusbar/notification/stack/ViewState$3;
.super Lcom/android/systemui/statusbar/notification/AnimatableProperty;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAnimationEndTag()I
    .locals 0

    const p0, 0x7f0a0a1a

    return p0
.end method

.method public final getAnimationStartTag()I
    .locals 0

    const p0, 0x7f0a0a1b

    return p0
.end method

.method public final getAnimatorTag()I
    .locals 0

    const p0, 0x7f0a0a1c

    return p0
.end method

.method public final getProperty()Landroid/util/Property;
    .locals 0

    sget-object p0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    return-object p0
.end method
