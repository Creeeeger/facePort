.class public final Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel;
.super Lcom/android/systemui/util/kotlin/FlowDumperImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final areNotificationsHiddenInShade$delegate:Lkotlin/Lazy;

.field public final footer:Ljava/util/Optional;

.field public final hasClearableAlertingNotifications$delegate:Lkotlin/Lazy;

.field public final hasFilteredOutSeenNotifications$delegate:Lkotlin/Lazy;

.field public final hasPinnedHeadsUpRow$delegate:Lkotlin/Lazy;

.field public final headsUpAnimationsEnabled$delegate:Lkotlin/Lazy;

.field public final headsUpNotificationInteractor:Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationInteractor;

.field public final hideListViewModel:Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/HideListViewModel;

.field public final isImportantForAccessibility$delegate:Lkotlin/Lazy;

.field public final pinnedHeadsUpRows$delegate:Lkotlin/Lazy;

.field public final shelf:Lcom/android/systemui/statusbar/notification/shelf/ui/viewmodel/NotificationShelfViewModel;

.field public final shouldHideFooterView$delegate:Lkotlin/Lazy;

.field public final shouldIncludeFooterView$delegate:Lkotlin/Lazy;

.field public final shouldShowEmptyShadeView$delegate:Lkotlin/Lazy;

.field public final topHeadsUpRow$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/shelf/ui/viewmodel/NotificationShelfViewModel;Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/HideListViewModel;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackInteractor;Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationInteractor;Lcom/android/systemui/statusbar/domain/interactor/RemoteInputInteractor;Lcom/android/systemui/statusbar/notification/domain/interactor/SeenNotificationsInteractor;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/statusbar/policy/domain/interactor/UserSetupInteractor;Lcom/android/systemui/statusbar/policy/domain/interactor/ZenModeInteractor;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/dump/DumpManager;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/shelf/ui/viewmodel/NotificationShelfViewModel;",
            "Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/HideListViewModel;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/notification/footer/ui/viewmodel/FooterViewModel;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationLoggerViewModel;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;",
            "Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackInteractor;",
            "Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationInteractor;",
            "Lcom/android/systemui/statusbar/domain/interactor/RemoteInputInteractor;",
            "Lcom/android/systemui/statusbar/notification/domain/interactor/SeenNotificationsInteractor;",
            "Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;",
            "Lcom/android/systemui/statusbar/policy/domain/interactor/UserSetupInteractor;",
            "Lcom/android/systemui/statusbar/policy/domain/interactor/ZenModeInteractor;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/android/systemui/dump/DumpManager;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p10

    move-object/from16 v7, p13

    const/4 v0, 0x0

    const/4 v1, 0x2

    move-object/from16 v2, p14

    invoke-direct {p0, v2, v0, v1, v0}, Lcom/android/systemui/util/kotlin/FlowDumperImpl;-><init>(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p1

    iput-object v0, v8, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel;->shelf:Lcom/android/systemui/statusbar/notification/shelf/ui/viewmodel/NotificationShelfViewModel;

    move-object v0, p2

    iput-object v0, v8, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel;->hideListViewModel:Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/HideListViewModel;

    move-object/from16 v0, p3

    iput-object v0, v8, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel;->footer:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel$isImportantForAccessibility$2;

    invoke-direct {v0, p0, v9, v10, v7}, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel$isImportantForAccessibility$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel;Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackInteractor;Lkotlinx/coroutines/CoroutineDispatcher;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v8, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel;->isImportantForAccessibility$delegate:Lkotlin/Lazy;

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel$shouldShowEmptyShadeView$2;

    move-object v0, v6

    move-object v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p10

    move-object/from16 v4, p6

    move-object/from16 v5, p13

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel$shouldShowEmptyShadeView$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel;Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackInteractor;Lkotlinx/coroutines/CoroutineDispatcher;)V

    invoke-static {v6}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v8, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel;->shouldShowEmptyShadeView$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel$shouldHideFooterView$2;

    invoke-direct {v0, p0, v11, v7}, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel$shouldHideFooterView$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lkotlinx/coroutines/CoroutineDispatcher;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v8, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel;->shouldHideFooterView$delegate:Lkotlin/Lazy;

    new-instance v12, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel$shouldIncludeFooterView$2;

    move-object v0, v12

    move-object/from16 v3, p11

    move-object/from16 v5, p10

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel$shouldIncludeFooterView$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel;Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;Lcom/android/systemui/statusbar/policy/domain/interactor/UserSetupInteractor;Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackInteractor;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/statusbar/domain/interactor/RemoteInputInteractor;Lkotlinx/coroutines/CoroutineDispatcher;)V

    invoke-static {v12}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v8, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel;->shouldIncludeFooterView$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel$areNotificationsHiddenInShade$2;

    move-object/from16 v1, p12

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel$areNotificationsHiddenInShade$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel;Lcom/android/systemui/statusbar/policy/domain/interactor/ZenModeInteractor;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v8, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel;->areNotificationsHiddenInShade$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel$hasFilteredOutSeenNotifications$2;

    move-object/from16 v1, p9

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel$hasFilteredOutSeenNotifications$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel;Lcom/android/systemui/statusbar/notification/domain/interactor/SeenNotificationsInteractor;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v8, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel;->hasFilteredOutSeenNotifications$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel$hasClearableAlertingNotifications$2;

    invoke-direct {v0, p0, v9}, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel$hasClearableAlertingNotifications$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel;Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v8, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel;->hasClearableAlertingNotifications$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel$hasNonClearableSilentNotifications$2;

    invoke-direct {v0, p0, v9}, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel$hasNonClearableSilentNotifications$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel;Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel$topHeadsUpRow$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel$topHeadsUpRow$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel$pinnedHeadsUpRows$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel$pinnedHeadsUpRows$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel$headsUpAnimationsEnabled$2;

    invoke-direct {v0, p0, v10, v11}, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel$headsUpAnimationsEnabled$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel;Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackInteractor;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel$hasPinnedHeadsUpRow$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel$hasPinnedHeadsUpRow$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationListViewModel;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    return-void
.end method
