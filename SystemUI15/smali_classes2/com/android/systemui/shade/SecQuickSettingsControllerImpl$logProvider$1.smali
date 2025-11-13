.class public final Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$logProvider$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;


# instance fields
.field public final synthetic $ambientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field public final synthetic $calculateBottomPositionFunction:Ljava/util/function/Function;

.field public final synthetic $calculateTopClippingBoundFunction:Ljava/util/function/Function;

.field public final synthetic $computeExpansionFractionSupplier:Ljava/util/function/DoubleSupplier;

.field public final synthetic $edgePositionSupplier:Ljava/util/function/DoubleSupplier;

.field public final synthetic $enableClippingSupplier:Ljava/util/function/BooleanSupplier;

.field public final synthetic $expansionHeightSupplier:Ljava/util/function/DoubleSupplier;

.field public final synthetic this$0:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;


# direct methods
.method public constructor <init>(Ljava/util/function/DoubleSupplier;Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Ljava/util/function/DoubleSupplier;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/DoubleSupplier;Ljava/util/function/BooleanSupplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/DoubleSupplier;",
            "Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;",
            "Lcom/android/systemui/statusbar/notification/stack/AmbientState;",
            "Ljava/util/function/DoubleSupplier;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/DoubleSupplier;",
            "Ljava/util/function/BooleanSupplier;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$logProvider$1;->$expansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    iput-object p2, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$logProvider$1;->this$0:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    iput-object p3, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$logProvider$1;->$ambientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput-object p4, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$logProvider$1;->$computeExpansionFractionSupplier:Ljava/util/function/DoubleSupplier;

    iput-object p5, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$logProvider$1;->$calculateBottomPositionFunction:Ljava/util/function/Function;

    iput-object p6, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$logProvider$1;->$calculateTopClippingBoundFunction:Ljava/util/function/Function;

    iput-object p7, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$logProvider$1;->$edgePositionSupplier:Ljava/util/function/DoubleSupplier;

    iput-object p8, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$logProvider$1;->$enableClippingSupplier:Ljava/util/function/BooleanSupplier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final gatherState()Ljava/util/ArrayList;
    .locals 15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$logProvider$1;->$expansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    iget-object v2, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$logProvider$1;->$computeExpansionFractionSupplier:Ljava/util/function/DoubleSupplier;

    iget-object v3, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$logProvider$1;->$calculateBottomPositionFunction:Ljava/util/function/Function;

    iget-object v4, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$logProvider$1;->$calculateTopClippingBoundFunction:Ljava/util/function/Function;

    iget-object v5, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$logProvider$1;->$edgePositionSupplier:Ljava/util/function/DoubleSupplier;

    iget-object v6, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$logProvider$1;->$enableClippingSupplier:Ljava/util/function/BooleanSupplier;

    const-string v7, "SecQuickSettingsControllerImpl ============================================= "

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v7

    iget-object v1, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$logProvider$1;->this$0:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    iget-object v9, v1, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->minExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    invoke-interface {v9}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v9

    iget-object v11, v1, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->maxExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    invoke-interface {v11}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v11

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " expansionHeight: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " minExpansionHeight: "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " maxExpansionHeight: "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->qsFrameLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-interface {v6}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v6

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v7

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " enableClipping: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " qsFrame[translationY: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "  top: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$logProvider$1;->$ambientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v6, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    iget v7, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    iget v8, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTopMargin:I

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    const-string v9, " ambientState[expansionFraction: "

    const-string v10, " stackY: "

    const-string v11, " stackTopMargin: "

    invoke-static {v9, v6, v10, v7, v11}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " scrollY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v1

    double-to-float p0, v1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {v5}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " notificationTop: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " expansionFraction: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " qsPanelBottomY: "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " top: "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
