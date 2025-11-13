.class public final Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/clocks/ClockFaceEvents;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

.field public final synthetic this$1:Lcom/android/systemui/shared/clocks/DefaultClockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;Lcom/android/systemui/shared/clocks/DefaultClockController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

    iput-object p2, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;->this$1:Lcom/android/systemui/shared/clocks/DefaultClockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFontSettingChanged(F)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

    iget-object v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->targetRegion:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->recomputePadding(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onRegionDarknessChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

    iput-boolean p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->isRegionDark:Z

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->updateColor()V

    return-void
.end method

.method public final onSecondaryDisplayChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;->this$1:Lcom/android/systemui/shared/clocks/DefaultClockController;

    iput-boolean p1, v0, Lcom/android/systemui/shared/clocks/DefaultClockController;->onSecondaryDisplay:Z

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->recomputePadding(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onTargetRegionChanged(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->targetRegion:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->recomputePadding(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onTimeTick()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->refreshTime()V

    return-void
.end method
