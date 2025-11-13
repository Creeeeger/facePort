.class public abstract Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;


# instance fields
.field public final context:Landroid/content/Context;

.field public dragDownAmount:F

.field public final splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/policy/SplitShadeStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;->splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    check-cast p4, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;->shouldUseSplitNotificationShade()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;->updateResources$1()V

    new-instance p1, Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController$1;-><init>(Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;)V

    check-cast p2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p3, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    sget-object p1, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    const-string p2, "AbstractLockscreenShadeTransitionController"

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogProvider(Ljava/lang/String;Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;)V

    return-void
.end method


# virtual methods
.method public abstract dump(Landroid/util/IndentingPrintWriter;)V
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    new-instance p2, Landroid/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {p2, p1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public final gatherState()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "AbstractLockscreenShadeTransitionController"

    invoke-static {v1, v0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addHeaderLine(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget p0, p0, Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;->dragDownAmount:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v1, "dragDownAmount"

    invoke-static {v0, v1, p0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract updateResources$1()V
.end method
