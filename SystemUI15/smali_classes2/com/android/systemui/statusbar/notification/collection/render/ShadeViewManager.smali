.class public final Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/PipelineDumpable;


# instance fields
.field public final rootController:Lcom/android/systemui/statusbar/notification/collection/render/RootNodeController;

.field public final specBuilder:Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;

.field public final stackController:Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;

.field public final viewBarn:Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;

.field public final viewDiffer:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;

.field public final viewRenderer:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;Lcom/android/systemui/statusbar/notification/collection/provider/SectionHeaderVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilderLogger;Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;)V
    .locals 9

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;->stackController:Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;

    move-object/from16 v5, p9

    iput-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;->viewBarn:Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;

    new-instance v7, Lcom/android/systemui/statusbar/notification/collection/render/RootNodeController;

    new-instance v1, Landroid/view/View;

    move-object v2, p1

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v2, p2

    invoke-direct {v7, p2, v1}, Lcom/android/systemui/statusbar/notification/collection/render/RootNodeController;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Landroid/view/View;)V

    iput-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;->rootController:Lcom/android/systemui/statusbar/notification/collection/render/RootNodeController;

    new-instance v8, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;

    move-object v1, v8

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;Lcom/android/systemui/statusbar/notification/collection/provider/SectionHeaderVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilderLogger;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;->specBuilder:Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;

    move-object/from16 v2, p8

    invoke-direct {v1, v7, v2}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;->viewDiffer:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;->viewRenderer:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;

    return-void
.end method


# virtual methods
.method public final dumpPipeline(Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;)V
    .locals 2

    const-string/jumbo v0, "rootController"

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;->rootController:Lcom/android/systemui/statusbar/notification/collection/render/RootNodeController;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "specBuilder"

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;->specBuilder:Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewDiffer"

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;->viewDiffer:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
