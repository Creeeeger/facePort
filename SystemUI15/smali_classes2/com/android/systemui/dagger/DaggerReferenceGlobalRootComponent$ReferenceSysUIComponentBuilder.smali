.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/dagger/ReferenceSysUIComponent$Builder;


# instance fields
.field public final referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

.field public setBackAnimation:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;",
            ">;"
        }
    .end annotation
.end field

.field public setBubbles:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;"
        }
    .end annotation
.end field

.field public setDesktopMode:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopMode;",
            ">;"
        }
    .end annotation
.end field

.field public setDisplayAreaHelper:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public setDisplayController:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;"
        }
    .end annotation
.end field

.field public setEnterSplitGestureHandler:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;",
            ">;"
        }
    .end annotation
.end field

.field public setKeyguardTransitions:Lcom/android/wm/shell/keyguard/KeyguardTransitions;

.field public setOneHanded:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;"
        }
    .end annotation
.end field

.field public setPip:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;"
        }
    .end annotation
.end field

.field public setRecentTasks:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasks;",
            ">;"
        }
    .end annotation
.end field

.field public setShell:Lcom/android/wm/shell/sysui/ShellInterface;

.field public setShellTransitions:Lcom/android/wm/shell/shared/ShellTransitions;

.field public setSplitScreen:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreen;",
            ">;"
        }
    .end annotation
.end field

.field public setSplitScreenController:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;"
        }
    .end annotation
.end field

.field public setStartingSurface:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;",
            ">;"
        }
    .end annotation
.end field

.field public setTaskViewFactory:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;)V

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/systemui/dagger/ReferenceSysUIComponent;
    .locals 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setShell:Lcom/android/wm/shell/sysui/ShellInterface;

    const-class v2, Lcom/android/wm/shell/sysui/ShellInterface;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setPip:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setSplitScreen:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setOneHanded:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setBubbles:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setTaskViewFactory:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setShellTransitions:Lcom/android/wm/shell/shared/ShellTransitions;

    const-class v2, Lcom/android/wm/shell/shared/ShellTransitions;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setKeyguardTransitions:Lcom/android/wm/shell/keyguard/KeyguardTransitions;

    const-class v2, Lcom/android/wm/shell/keyguard/KeyguardTransitions;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setStartingSurface:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setDisplayAreaHelper:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setRecentTasks:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setBackAnimation:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setDesktopMode:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setEnterSplitGestureHandler:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setSplitScreenController:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setDisplayController:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    move-object v3, v1

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    new-instance v2, Lcom/android/systemui/dagger/DependencyProvider;

    move-object v5, v2

    invoke-direct {v2}, Lcom/android/systemui/dagger/DependencyProvider;-><init>()V

    new-instance v2, Lcom/android/systemui/util/leak/LeakModule;

    move-object v6, v2

    invoke-direct {v2}, Lcom/android/systemui/util/leak/LeakModule;-><init>()V

    new-instance v2, Lcom/android/systemui/dagger/SharedLibraryModule;

    move-object v7, v2

    invoke-direct {v2}, Lcom/android/systemui/dagger/SharedLibraryModule;-><init>()V

    new-instance v2, Lcom/android/systemui/mediaprojection/devicepolicy/MediaProjectionDevicePolicyModule;

    move-object v8, v2

    invoke-direct {v2}, Lcom/android/systemui/mediaprojection/devicepolicy/MediaProjectionDevicePolicyModule;-><init>()V

    new-instance v2, Lcom/android/systemui/util/kotlin/SysUICoroutinesModule;

    move-object v9, v2

    invoke-direct {v2}, Lcom/android/systemui/util/kotlin/SysUICoroutinesModule;-><init>()V

    new-instance v2, Lcom/android/systemui/unfold/SysUIUnfoldModule;

    move-object v10, v2

    invoke-direct {v2}, Lcom/android/systemui/unfold/SysUIUnfoldModule;-><init>()V

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setShell:Lcom/android/wm/shell/sysui/ShellInterface;

    iget-object v12, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setPip:Ljava/util/Optional;

    iget-object v13, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setSplitScreen:Ljava/util/Optional;

    iget-object v14, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setOneHanded:Ljava/util/Optional;

    iget-object v15, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setBubbles:Ljava/util/Optional;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setTaskViewFactory:Ljava/util/Optional;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setShellTransitions:Lcom/android/wm/shell/shared/ShellTransitions;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setKeyguardTransitions:Lcom/android/wm/shell/keyguard/KeyguardTransitions;

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setStartingSurface:Ljava/util/Optional;

    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setDisplayAreaHelper:Ljava/util/Optional;

    move-object/from16 v20, v2

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setRecentTasks:Ljava/util/Optional;

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setBackAnimation:Ljava/util/Optional;

    move-object/from16 v22, v2

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setDesktopMode:Ljava/util/Optional;

    move-object/from16 v23, v2

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setEnterSplitGestureHandler:Ljava/util/Optional;

    move-object/from16 v24, v2

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setSplitScreenController:Ljava/util/Optional;

    move-object/from16 v25, v2

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setDisplayController:Ljava/util/Optional;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-direct/range {v3 .. v27}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DependencyProvider;Lcom/android/systemui/util/leak/LeakModule;Lcom/android/systemui/dagger/SharedLibraryModule;Lcom/android/systemui/mediaprojection/devicepolicy/MediaProjectionDevicePolicyModule;Lcom/android/systemui/util/kotlin/SysUICoroutinesModule;Lcom/android/systemui/unfold/SysUIUnfoldModule;Lcom/android/wm/shell/sysui/ShellInterface;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/shared/ShellTransitions;Lcom/android/wm/shell/keyguard/KeyguardTransitions;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;I)V

    return-object v1
.end method

.method public final setBackAnimation(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setBackAnimation:Ljava/util/Optional;

    return-object p0
.end method

.method public final setBubbles(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setBubbles:Ljava/util/Optional;

    return-object p0
.end method

.method public final setDesktopMode(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopMode;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setDesktopMode:Ljava/util/Optional;

    return-object p0
.end method

.method public final setDisplayAreaHelper(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setDisplayAreaHelper:Ljava/util/Optional;

    return-object p0
.end method

.method public final setDisplayController(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setDisplayController:Ljava/util/Optional;

    return-object p0
.end method

.method public final setEnterSplitGestureHandler(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setEnterSplitGestureHandler:Ljava/util/Optional;

    return-object p0
.end method

.method public final setKeyguardTransitions(Lcom/android/wm/shell/keyguard/KeyguardTransitions;)Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setKeyguardTransitions:Lcom/android/wm/shell/keyguard/KeyguardTransitions;

    return-object p0
.end method

.method public final setOneHanded(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setOneHanded:Ljava/util/Optional;

    return-object p0
.end method

.method public final setPip(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setPip:Ljava/util/Optional;

    return-object p0
.end method

.method public final setRecentTasks(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasks;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setRecentTasks:Ljava/util/Optional;

    return-object p0
.end method

.method public final setShell(Lcom/android/wm/shell/sysui/ShellInterface;)Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setShell:Lcom/android/wm/shell/sysui/ShellInterface;

    return-object p0
.end method

.method public final setShellTransitions(Lcom/android/wm/shell/shared/ShellTransitions;)Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setShellTransitions:Lcom/android/wm/shell/shared/ShellTransitions;

    return-object p0
.end method

.method public final setSplitScreen(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreen;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setSplitScreen:Ljava/util/Optional;

    return-object p0
.end method

.method public final setSplitScreenController(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setSplitScreenController:Ljava/util/Optional;

    return-object p0
.end method

.method public final setStartingSurface(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setStartingSurface:Ljava/util/Optional;

    return-object p0
.end method

.method public final setTaskViewFactory(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;->setTaskViewFactory:Ljava/util/Optional;

    return-object p0
.end method
