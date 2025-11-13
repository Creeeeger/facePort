.class public final Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final bottomAreaViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final chipbarCoordinator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

.field public final clockController:Lcom/android/keyguard/ClockEventController;

.field public final clockRegistry:Lcom/android/systemui/shared/clocks/ClockRegistry;

.field public final clockViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewClockViewModel;

.field public final communalTutorialViewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalTutorialIndicatorViewModel;

.field public final configuration:Lcom/android/systemui/common/ui/ConfigurationState;

.field public final context:Landroid/content/Context;

.field public final coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

.field public final display:Landroid/view/Display;

.field public final disposables:Lcom/android/systemui/util/kotlin/DisposableHandles;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final height:I

.field public host:Landroid/view/SurfaceControlViewHost;

.field public final hostToken:Landroid/os/IBinder;

.field public final id:Lkotlin/Pair;

.field public final indicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field public isDestroyed:Z

.field public final keyguardBlueprintViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;

.field public final keyguardClockInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;

.field public final keyguardClockViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;

.field public final keyguardRootViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;

.field public largeClockHostView:Landroid/widget/FrameLayout;

.field public final lockscreenSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

.field public final mainHandler:Landroid/os/Handler;

.field public final occludingAppDeviceEntryMessageViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludingAppDeviceEntryMessageViewModel;

.field public final screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

.field public final shortcutsBindings:Ljava/util/Set;

.field public final shouldHideClock:Z

.field public final shouldHighlightSelectedAffordance:Z

.field public smallClockHostView:Landroid/widget/FrameLayout;

.field public smartSpaceView:Landroid/view/View;

.field public final smartspaceViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewSmartspaceViewModel;

.field public themeStyle:Lcom/android/systemui/monet/Style;

.field public final udfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

.field public final wallpaperColors:Landroid/app/WallpaperColors;

.field public final width:I

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/os/Handler;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewClockViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewSmartspaceViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardQuickAffordancesCombinedViewModel;Landroid/hardware/display/DisplayManager;Landroid/view/WindowManager;Lcom/android/systemui/common/ui/ConfigurationState;Lcom/android/keyguard/ClockEventController;Lcom/android/systemui/shared/clocks/ClockRegistry;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;Landroid/os/Bundle;Lcom/android/systemui/keyguard/ui/viewmodel/OccludingAppDeviceEntryMessageViewModel;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/communal/ui/viewmodel/CommunalTutorialIndicatorViewModel;Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultShortcutsSection;Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;)V
    .locals 9

    move-object v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p10

    move-object/from16 v3, p23

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v4, p1

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->context:Landroid/content/Context;

    move-object v4, p4

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->mainHandler:Landroid/os/Handler;

    move-object v4, p5

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v4, p6

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->clockViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewClockViewModel;

    move-object/from16 v4, p7

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->smartspaceViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewSmartspaceViewModel;

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->bottomAreaViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    move-object/from16 v4, p11

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->windowManager:Landroid/view/WindowManager;

    move-object/from16 v4, p12

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->configuration:Lcom/android/systemui/common/ui/ConfigurationState;

    move-object/from16 v4, p13

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->clockController:Lcom/android/keyguard/ClockEventController;

    move-object/from16 v4, p14

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->clockRegistry:Lcom/android/systemui/shared/clocks/ClockRegistry;

    move-object/from16 v4, p15

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v4, p16

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->lockscreenSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    move-object/from16 v4, p17

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->udfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

    move-object/from16 v4, p18

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v4, p21

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->keyguardRootViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;

    move-object/from16 v4, p22

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->keyguardBlueprintViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;

    move-object/from16 v4, p24

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->occludingAppDeviceEntryMessageViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludingAppDeviceEntryMessageViewModel;

    move-object/from16 v4, p25

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->chipbarCoordinator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

    move-object/from16 v4, p26

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    move-object/from16 v4, p27

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    move-object/from16 v4, p28

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    move-object/from16 v4, p29

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->communalTutorialViewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalTutorialIndicatorViewModel;

    move-object/from16 v4, p31

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->keyguardClockInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;

    move-object/from16 v4, p32

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->keyguardClockViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;

    const-string v4, "host_token"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->hostToken:Landroid/os/IBinder;

    const-string/jumbo v5, "width"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->width:I

    const-string v5, "height"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->height:I

    const-string v5, "highlight_quick_affordances"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->shouldHighlightSelectedAffordance:Z

    const-string v7, "display_id"

    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->display:Landroid/view/Display;

    new-instance v8, Lkotlin/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v8, v4, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v8, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->id:Lkotlin/Pair;

    const-string v4, "hide_clock"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->shouldHideClock:Z

    const-string/jumbo v4, "wallpaper_colors"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/WallpaperColors;

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->wallpaperColors:Landroid/app/WallpaperColors;

    new-instance v4, Lcom/android/systemui/util/kotlin/DisposableHandles;

    invoke-direct {v4}, Lcom/android/systemui/util/kotlin/DisposableHandles;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->disposables:Lcom/android/systemui/util/kotlin/DisposableHandles;

    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p2}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v6

    invoke-static {}, Lkotlinx/coroutines/JobKt;->Job$default()Lkotlinx/coroutines/JobImpl;

    move-result-object v7

    invoke-interface {v6, v7}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v6

    invoke-static {v6}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v6, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$1;-><init>(Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;)V

    invoke-virtual {v4, v6}, Lcom/android/systemui/util/kotlin/DisposableHandles;->plusAssign(Lkotlinx/coroutines/DisposableHandle;)V

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    const-string v4, "initially_selected_slot_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;->previewMode:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v6, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$PreviewMode;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v5}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$PreviewMode;-><init>(ZZ)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-nez v3, :cond_0

    const-string v3, "bottom_start"

    :cond_0
    iget-object v1, v1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;->selectedPreviewSlotId:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v1, v5, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    new-instance v1, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$2;

    invoke-direct {v1, p0, v2, v5}, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$2;-><init>(Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;Landroid/hardware/display/DisplayManager;Lkotlin/coroutines/Continuation;)V

    move-object v0, p3

    invoke-static {p3, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    return-void
.end method

.method public static final access$updateClockAppearance(Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;Lcom/android/systemui/plugins/clocks/ClockController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$updateClockAppearance$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$updateClockAppearance$1;

    iget v1, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$updateClockAppearance$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$updateClockAppearance$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$updateClockAppearance$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$updateClockAppearance$1;-><init>(Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$updateClockAppearance$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$updateClockAppearance$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$updateClockAppearance$1;->L$2:Ljava/lang/Object;

    check-cast p0, Landroid/app/WallpaperColors;

    iget-object p1, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$updateClockAppearance$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/plugins/clocks/ClockController;

    iget-object v0, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$updateClockAppearance$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p2

    move-object p2, p0

    move-object p0, v0

    move-object v0, v4

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object p2, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->clockController:Lcom/android/keyguard/ClockEventController;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/ClockEventController;->setClock(Lcom/android/systemui/plugins/clocks/ClockController;)V

    iget-object p2, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->wallpaperColors:Landroid/app/WallpaperColors;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->clockRegistry:Lcom/android/systemui/shared/clocks/ClockRegistry;

    iget-object v2, v2, Lcom/android/systemui/shared/clocks/ClockRegistry;->settings:Lcom/android/systemui/plugins/clocks/ClockSettings;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/systemui/plugins/clocks/ClockSettings;->getSeedColor()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_8

    if-eqz p2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->themeStyle:Lcom/android/systemui/monet/Style;

    if-nez v2, :cond_5

    iput-object p0, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$updateClockAppearance$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$updateClockAppearance$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$updateClockAppearance$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$updateClockAppearance$1;->label:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->fetchThemeStyleFromSetting(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4

    goto :goto_5

    :cond_4
    :goto_2
    move-object v2, v0

    check-cast v2, Lcom/android/systemui/monet/Style;

    iput-object v2, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->themeStyle:Lcom/android/systemui/monet/Style;

    :cond_5
    new-instance p0, Lcom/android/systemui/monet/ColorScheme;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, v2}, Lcom/android/systemui/monet/ColorScheme;-><init>(Landroid/app/WallpaperColors;ZLcom/android/systemui/monet/Style;)V

    iget-object v1, p0, Lcom/android/systemui/monet/ColorScheme;->mAccent1:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v1}, Lcom/android/systemui/monet/TonalPalette;->getS100()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/monet/ColorScheme;->mAccent2:Lcom/android/systemui/monet/TonalPalette;

    iget-object p0, p0, Lcom/android/systemui/monet/TonalPalette;->allShades:Ljava/util/List;

    const/16 v2, 0x8

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result p2

    and-int/2addr p2, v3

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    move v3, v0

    :goto_3
    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockEvents;

    move-result-object p1

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move v1, p0

    :goto_4
    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/clocks/ClockEvents;->onSeedColorChanged(Ljava/lang/Integer;)V

    :cond_8
    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_5
    return-object v1
.end method


# virtual methods
.method public final fetchThemeStyleFromSetting(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    const-string v0, "Failed to parse THEME_CUSTOMIZATION_OVERLAY_PACKAGES."

    const-string v1, "KeyguardPreviewRenderer"

    instance-of v2, p1, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$fetchThemeStyleFromSetting$1;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$fetchThemeStyleFromSetting$1;

    iget v3, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$fetchThemeStyleFromSetting$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$fetchThemeStyleFromSetting$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$fetchThemeStyleFromSetting$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$fetchThemeStyleFromSetting$1;-><init>(Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$fetchThemeStyleFromSetting$1;->result:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$fetchThemeStyleFromSetting$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$fetchThemeStyleFromSetting$overlayPackageJson$1;

    const/4 v4, 0x0

    invoke-direct {p1, p0, v4}, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$fetchThemeStyleFromSetting$overlayPackageJson$1;-><init>(Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;Lkotlin/coroutines/Continuation;)V

    iput v5, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$fetchThemeStyleFromSetting$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, p1, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_3

    return-object v3

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "android.theme.customization.theme_style"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/monet/Style;->valueOf(Ljava/lang/String;)Lcom/android/systemui/monet/Style;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :goto_2
    invoke-static {v1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Lcom/android/systemui/monet/Style;->TONAL_SPOT:Lcom/android/systemui/monet/Style;

    goto :goto_5

    :goto_3
    invoke-static {v1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Lcom/android/systemui/monet/Style;->TONAL_SPOT:Lcom/android/systemui/monet/Style;

    goto :goto_5

    :cond_5
    :goto_4
    sget-object p0, Lcom/android/systemui/monet/Style;->TONAL_SPOT:Lcom/android/systemui/monet/Style;

    :goto_5
    return-object p0
.end method
