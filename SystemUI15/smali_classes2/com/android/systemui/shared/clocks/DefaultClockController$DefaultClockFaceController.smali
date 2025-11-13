.class public Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/clocks/ClockFaceController;


# instance fields
.field public animations:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;

.field public final config:Lcom/android/systemui/plugins/clocks/ClockFaceConfig;

.field public currentColor:I

.field public final events:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;

.field public isRegionDark:Z

.field public final layout:Lcom/android/systemui/plugins/clocks/DefaultClockFaceLayout;

.field public seedColor:Ljava/lang/Integer;

.field public targetRegion:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;

.field public final view:Lcom/android/systemui/shared/clocks/AnimatableClockView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/clocks/DefaultClockController;Lcom/android/systemui/shared/clocks/AnimatableClockView;Ljava/lang/Integer;Lcom/android/systemui/log/core/MessageBuffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/clocks/AnimatableClockView;",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/log/core/MessageBuffer;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    iput-object p3, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->seedColor:Ljava/lang/Integer;

    const p3, -0xff01

    iput p3, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->currentColor:I

    new-instance p3, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;-><init>(Lcom/android/systemui/plugins/clocks/ClockTickRate;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->config:Lcom/android/systemui/plugins/clocks/ClockFaceConfig;

    new-instance p3, Lcom/android/systemui/plugins/clocks/DefaultClockFaceLayout;

    invoke-direct {p3, p2}, Lcom/android/systemui/plugins/clocks/DefaultClockFaceLayout;-><init>(Landroid/view/View;)V

    invoke-virtual {p3}, Lcom/android/systemui/plugins/clocks/DefaultClockFaceLayout;->getViews()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p1, Lcom/android/systemui/shared/clocks/DefaultClockController;->resources:Landroid/content/res/Resources;

    iget-object v2, p1, Lcom/android/systemui/shared/clocks/DefaultClockController;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lockscreen_clock_view"

    const-string v4, "id"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iput-object p3, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->layout:Lcom/android/systemui/plugins/clocks/DefaultClockFaceLayout;

    new-instance p3, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0, v0}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;-><init>(Lcom/android/systemui/shared/clocks/DefaultClockController;Lcom/android/systemui/shared/clocks/AnimatableClockView;FF)V

    iput-object p3, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->animations:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;

    iget-object p3, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->seedColor:Ljava/lang/Integer;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->currentColor:I

    :cond_0
    iget p3, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->currentColor:I

    const/4 v0, -0x1

    iput v0, p2, Lcom/android/systemui/shared/clocks/AnimatableClockView;->dozingColor:I

    iput p3, p2, Lcom/android/systemui/shared/clocks/AnimatableClockView;->lockScreenColor:I

    if-eqz p4, :cond_1

    new-instance p3, Lcom/android/systemui/log/core/Logger;

    sget-object v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->TAG:Ljava/lang/String;

    invoke-direct {p3, p4, v0}, Lcom/android/systemui/log/core/Logger;-><init>(Lcom/android/systemui/log/core/MessageBuffer;Ljava/lang/String;)V

    iput-object p3, p2, Lcom/android/systemui/shared/clocks/AnimatableClockView;->logger:Lcom/android/systemui/log/core/Logger;

    :cond_1
    new-instance p2, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;-><init>(Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;Lcom/android/systemui/shared/clocks/DefaultClockController;)V

    iput-object p2, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->events:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;

    return-void
.end method


# virtual methods
.method public final getAnimations()Lcom/android/systemui/plugins/clocks/ClockAnimations;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->animations:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;

    return-object p0
.end method

.method public getConfig()Lcom/android/systemui/plugins/clocks/ClockFaceConfig;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->config:Lcom/android/systemui/plugins/clocks/ClockFaceConfig;

    return-object p0
.end method

.method public final getEvents()Lcom/android/systemui/plugins/clocks/ClockFaceEvents;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->events:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController$events$1;

    return-object p0
.end method

.method public bridge synthetic getLayout()Lcom/android/systemui/plugins/clocks/ClockFaceLayout;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->getLayout()Lcom/android/systemui/plugins/clocks/DefaultClockFaceLayout;

    move-result-object p0

    return-object p0
.end method

.method public getLayout()Lcom/android/systemui/plugins/clocks/DefaultClockFaceLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->layout:Lcom/android/systemui/plugins/clocks/DefaultClockFaceLayout;

    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    return-object p0
.end method

.method public recomputePadding(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public final updateColor()V
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->seedColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->isRegionDark:Z

    iget-object v1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/systemui/shared/clocks/DefaultClockController;->resources:Landroid/content/res/Resources;

    const v1, 0x106003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/android/systemui/shared/clocks/DefaultClockController;->resources:Landroid/content/res/Resources;

    const v1, 0x106004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->currentColor:I

    if-ne v1, v0, :cond_2

    return-void

    :cond_2
    iput v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->currentColor:I

    const/4 v1, -0x1

    iget-object v12, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    iput v1, v12, Lcom/android/systemui/shared/clocks/AnimatableClockView;->dozingColor:I

    iput v0, v12, Lcom/android/systemui/shared/clocks/AnimatableClockView;->lockScreenColor:I

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->animations:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;->dozeState:Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;

    iget-boolean p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->isActive:Z

    if-nez p0, :cond_3

    invoke-virtual {v12}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getLogger()Lcom/android/systemui/log/core/Logger;

    move-result-object p0

    const-string v0, "animateColorChange"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/android/systemui/log/core/Logger;->d$default(Lcom/android/systemui/log/core/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {v12}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getLockScreenWeight()I

    move-result v3

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v2, v12

    invoke-virtual/range {v2 .. v11}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->setTextStyle(ILjava/lang/Integer;ZLandroid/animation/TimeInterpolator;JJLcom/android/systemui/shared/clocks/AnimatableClockView$animateCharge$startAnimPhase2$1;)V

    invoke-virtual {v12}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getLockScreenWeight()I

    move-result v3

    iget p0, v12, Lcom/android/systemui/shared/clocks/AnimatableClockView;->lockScreenColor:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    const-wide/16 v7, 0x190

    invoke-virtual/range {v2 .. v11}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->setTextStyle(ILjava/lang/Integer;ZLandroid/animation/TimeInterpolator;JJLcom/android/systemui/shared/clocks/AnimatableClockView$animateCharge$startAnimPhase2$1;)V

    :cond_3
    return-void
.end method
