.class public final synthetic Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda20;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda20;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-class p0, Lcom/android/systemui/qs/bar/SmartViewLargeTileBar;

    check-cast p1, Lcom/android/systemui/qs/bar/BarItemImpl;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    const-class p0, Lcom/android/systemui/qs/bar/BottomLargeTileBar;

    check-cast p1, Lcom/android/systemui/qs/bar/BarItemImpl;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1
    const-class p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;

    check-cast p1, Lcom/android/systemui/qs/bar/BarItemImpl;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_2
    const-class p0, Lcom/android/systemui/qs/bar/TopLargeTileBar;

    check-cast p1, Lcom/android/systemui/qs/bar/BarItemImpl;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
