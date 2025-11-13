.class public final Lcom/android/systemui/keyguard/ui/view/layout/sections/SplitShadeMediaSection;
.super Lcom/android/systemui/keyguard/shared/model/KeyguardSection;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shade/NotificationPanelView;Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/shared/model/KeyguardSection;-><init>()V

    return-void
.end method


# virtual methods
.method public final addViews(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    return-void
.end method

.method public final applyConstraints(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    return-void
.end method

.method public final bindData(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    return-void
.end method

.method public final removeViews(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    return-void
.end method
