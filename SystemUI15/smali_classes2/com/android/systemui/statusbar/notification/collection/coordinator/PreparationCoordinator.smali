.class public Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# annotations
.annotation runtime Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorScope;
.end annotation


# static fields
.field private static final CHILD_BIND_CUTOFF:I = 0x9

.field private static final EXTRA_VIEW_BUFFER_COUNT:I = 0x1

.field private static final MAX_GROUP_INFLATION_DELAY:J = 0x1f4L

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_INFLATED:I = 0x1

.field private static final STATE_INFLATED_INVALID:I = 0x2

.field private static final STATE_UNINFLATED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PreparationCoordinator"


# instance fields
.field private final mAdjustmentProvider:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;

.field private final mBindEventManager:Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;

.field private mChildBindCutoff:I

.field private final mInflatingNotifs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflationAdjustments:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflationErrorListener:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager$NotifInflationErrorListener;

.field private final mInflationStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsChanged:Z

.field private final mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;

.field private final mMaxGroupInflationDelay:J

.field private final mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

.field private final mNotifErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

.field private final mNotifInflater:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater;

.field private final mNotifInflatingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

.field private final mNotifInflationErrorFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

.field private mNotifUpdate:Lcom/android/systemui/statusbar/notification/collection/notifcollection/InternalNotifUpdater;

.field private final mOngoingActivityController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

.field private mSettingsHelperCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mViewBarn:Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;


# direct methods
.method public static synthetic $r8$lambda$DgF91JYMrFs0_1wMpeeKvZXiLTU(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->inflateAllRequiredViews(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WHd6n9evoaqHX1ugvxvJ6hUAL34(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->onInflationFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aaEMAaRtJqfKp_x9Yaq59HJTkjc(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->lambda$new$0(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bLJWvBlzebtbtlgSGVNrrO-tLIE(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->lambda$attach$1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmInflationAdjustments(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflationAdjustments:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInflationStates(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflationStates:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifInflationErrorFilter(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;)Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifInflationErrorFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifUpdate(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/InternalNotifUpdater;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifUpdate:Lcom/android/systemui/statusbar/notification/collection/notifcollection/InternalNotifUpdater;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStatusBarService(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmViewBarn(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;)Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mViewBarn:Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mabortInflation(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->abortInflation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetInflationState(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->getInflationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misInflated(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->isInflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshouldWaitForGroupToInflate(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;J)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->shouldWaitForGroupToInflate(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;J)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater;Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;IJLcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflationStates:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflationAdjustments:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflatingNotifs:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mSettingsHelperCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$2;

    const-string v1, "PreparationCoordinatorInflationError"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifInflationErrorFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$3;

    const-string v1, "PreparationCoordinatorInflating"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$3;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifInflatingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$4;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflationErrorListener:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager$NotifInflationErrorListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifInflater:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mViewBarn:Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mAdjustmentProvider:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iput p8, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mChildBindCutoff:I

    iput-wide p9, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mMaxGroupInflationDelay:J

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mBindEventManager:Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;

    iput-object p11, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mOngoingActivityController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater;Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V
    .locals 12

    const/16 v8, 0x9

    const-wide/16 v9, 0x1f4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater;Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;IJLcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    return-void
.end method

.method private abortInflation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifInflater:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->abortInflation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflatingNotifs:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;->logInflationAborted(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private freeNotifViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;->logFreeNotifViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mViewBarn:Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;->rowMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifInflater:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater;

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->releaseViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflationStates:Landroid/util/ArrayMap;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getInflationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflationStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const-string p1, "Asking state of a notification preparation coordinator doesn\'t know about"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private inflateAllRequiredViews(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->inflateRequiredGroupViews(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    goto :goto_1

    :cond_0
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->inflateRequiredNotifViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mIsChanged:Z

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mIsChanged:Z

    :cond_2
    return-void
.end method

.method private inflateEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;Ljava/lang/String;)V
    .locals 1

    const-string v0, "PrepCoord.inflateEntry"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->abortInflation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflationAdjustments:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflatingNotifs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->getInflaterParams(Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifInflater:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;)V

    check-cast p3, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

    invoke-virtual {p3, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->inflateViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda0;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private inflateRequiredGroupViews(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V
    .locals 4

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_0

    sget v1, Lcom/android/systemui/statusbar/notification/row/shared/AsyncGroupHeaderViewInflation;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationAsyncGroupHeaderInflation()V

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->inflateRequiredNotifViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INSIGNIFICANT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mChildBindCutoff:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mChildBindCutoff:I

    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    sget v2, Lcom/android/systemui/statusbar/notification/row/shared/AsyncHybridViewInflation;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationAsyncHybridViewInflation()V

    iget v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mChildBindCutoff:I

    if-ge v0, v2, :cond_2

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->inflateRequiredNotifViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflatingNotifs:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Past last visible group child"

    if-eqz v2, :cond_3

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->abortInflation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->isInflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->freeNotifViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private inflateRequiredNotifViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mAdjustmentProvider:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getSmartActions()Ljava/util/List;

    move-result-object v3

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getSmartReplies()Ljava/util/List;

    move-result-object v4

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->isConversation()Z

    move-result v5

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->isSnoozeSettingsEnabled:Z

    const/4 v13, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    move v7, v13

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getSection()Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->highPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    invoke-virtual {v8, p1, v13}, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;->isHighPriority(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Z)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v8}, Landroid/service/notification/NotificationListenerService$Ranking;->isAmbient()Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v13

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_1
    sget-object v9, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v8, :cond_3

    if-nez v9, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move v8, v13

    goto :goto_2

    :cond_3
    move v8, v6

    :goto_2
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->needsRedaction(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/server/notification/Flags;->screenshareNotificationHiding()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->sensitiveNotifProtectionController:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->shouldProtectNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/android/systemui/NotiRune;->NOTI_STYLE_APP_LOCK:Z

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->appLockNotificationController:Lcom/android/systemui/statusbar/policy/AppLockNotificationController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;->shouldHideNotiForAppLock(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v0, v6

    goto :goto_4

    :cond_5
    :goto_3
    move v0, v13

    :goto_4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPromotedState()Z

    move-result v11

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v12

    move v6, v7

    move v7, v8

    move v8, v0

    invoke-direct/range {v1 .. v11}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZZZZZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflatingNotifs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Inflating notification has no adjustments"

    invoke-direct {p0, p1, v12, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->needToReinflate(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "adjustment changed while inflating"

    invoke-direct {p0, p1, v12, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->inflateEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflationStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "entry : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " inflationState is null during inflateRequiredNotifViews"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PreparationCoordinator"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflationStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    if-eqz v0, :cond_b

    if-eq v0, v13, :cond_a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    goto :goto_5

    :cond_9
    const-string v0, "entryUpdated"

    invoke-direct {p0, p1, v12, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->rebind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    const-string v0, "Fully inflated notification has no adjustments"

    invoke-direct {p0, p1, v12, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->needToReinflate(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "adjustment changed after inflated"

    invoke-direct {p0, p1, v12, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->rebind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    const-string v0, "entryAdded"

    invoke-direct {p0, p1, v12, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->inflateEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, p1, v12, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->needToReinflate(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "adjustment changed after error"

    invoke-direct {p0, p1, v12, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->inflateEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;Ljava/lang/String;)V

    :cond_d
    :goto_5
    return-void

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Entry must have a parent to determine if minimized"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Entry must have a section to determine if minimized"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isBeyondGroupInitializationWindow(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;J)Z
    .locals 2

    iget-wide v0, p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mCreationTime:J

    sub-long/2addr p2, v0

    iget-wide p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mMaxGroupInflationDelay:J

    cmp-long p0, p2, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->getInflationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method private synthetic lambda$attach$1()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifInflatingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    const-string v0, "adjustmentProviderChanged"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/net/Uri;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mIsChanged:Z

    return-void
.end method

.method private needToReinflate(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflationAdjustments:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    return v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-boolean p3, Lcom/android/systemui/NotiRune;->NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE:Z

    if-eqz p3, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mIsChanged:Z

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz p0, :cond_2

    return v1

    :cond_2
    sget-object p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->Companion:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    if-ne v0, p2, :cond_4

    :cond_3
    move v1, p0

    goto/16 :goto_4

    :cond_4
    iget-boolean p1, p2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isConversation:Z

    iget-boolean p3, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isConversation:Z

    if-eq p3, p1, :cond_5

    goto/16 :goto_4

    :cond_5
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isSnoozeEnabled:Z

    iget-boolean p3, p2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isSnoozeEnabled:Z

    if-eq p1, p3, :cond_6

    goto/16 :goto_4

    :cond_6
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isMinimized:Z

    iget-boolean p3, p2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isMinimized:Z

    if-eq p1, p3, :cond_7

    goto/16 :goto_4

    :cond_7
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->needsRedaction:Z

    iget-boolean p3, p2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->needsRedaction:Z

    if-eq p1, p3, :cond_8

    goto/16 :goto_4

    :cond_8
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->smartActions:Ljava/util/List;

    iget-object p3, p2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->smartActions:Ljava/util/List;

    if-ne p1, p3, :cond_9

    goto/16 :goto_3

    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_a

    goto/16 :goto_4

    :cond_a
    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v2, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    check-cast p3, Ljava/lang/Iterable;

    new-instance p1, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {p1, p3}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v2, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->zip(Lkotlin/sequences/Sequence;Lkotlin/sequences/Sequence;)Lkotlin/sequences/MergingSequence;

    move-result-object p1

    new-instance p3, Lkotlin/sequences/MergingSequence$iterator$1;

    invoke-direct {p3, p1}, Lkotlin/sequences/MergingSequence$iterator$1;-><init>(Lkotlin/sequences/MergingSequence;)V

    :cond_b
    :goto_0
    invoke-virtual {p3}, Lkotlin/sequences/MergingSequence$iterator$1;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {p3}, Lkotlin/sequences/MergingSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$Action;

    iget-object v2, v2, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$Action;

    iget-object v3, v3, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$Action;

    invoke-virtual {v2}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$Action;

    invoke-virtual {v3}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-ne v2, v3, :cond_c

    goto :goto_1

    :cond_c
    if-eqz v2, :cond_19

    if-nez v3, :cond_d

    goto/16 :goto_4

    :cond_d
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_4

    :cond_e
    :goto_1
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$Action;

    iget-object v2, v2, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$Action;

    iget-object v3, v3, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$Action;

    invoke-virtual {v2}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Notification$Action;

    invoke-virtual {p1}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object p1

    if-ne v2, p1, :cond_f

    goto :goto_0

    :cond_f
    if-eqz v2, :cond_19

    if-nez p1, :cond_10

    goto/16 :goto_4

    :cond_10
    array-length v3, v2

    array-length v4, p1

    if-eq v3, v4, :cond_11

    goto/16 :goto_4

    :cond_11
    invoke-static {v2}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v2

    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->zip(Lkotlin/sequences/Sequence;Lkotlin/sequences/Sequence;)Lkotlin/sequences/MergingSequence;

    move-result-object p1

    new-instance v2, Lkotlin/sequences/MergingSequence$iterator$1;

    invoke-direct {v2, p1}, Lkotlin/sequences/MergingSequence$iterator$1;-><init>(Lkotlin/sequences/MergingSequence;)V

    :cond_12
    :goto_2
    invoke-virtual {v2}, Lkotlin/sequences/MergingSequence$iterator$1;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {v2}, Lkotlin/sequences/MergingSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/RemoteInput;

    invoke-virtual {v3}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/RemoteInput;

    invoke-virtual {v4}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/RemoteInput;

    invoke-virtual {v3}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/RemoteInput;

    invoke-virtual {p1}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object p1

    if-ne v3, p1, :cond_13

    goto :goto_2

    :cond_13
    if-eqz v3, :cond_19

    if-nez p1, :cond_14

    goto :goto_4

    :cond_14
    array-length v4, v3

    array-length v5, p1

    if-eq v4, v5, :cond_15

    goto :goto_4

    :cond_15
    invoke-static {v3}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v3

    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-static {v3, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->zip(Lkotlin/sequences/Sequence;Lkotlin/sequences/Sequence;)Lkotlin/sequences/MergingSequence;

    move-result-object p1

    new-instance v3, Lkotlin/sequences/MergingSequence$iterator$1;

    invoke-direct {v3, p1}, Lkotlin/sequences/MergingSequence$iterator$1;-><init>(Lkotlin/sequences/MergingSequence;)V

    :cond_16
    invoke-virtual {v3}, Lkotlin/sequences/MergingSequence$iterator$1;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {v3}, Lkotlin/sequences/MergingSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_16

    goto :goto_4

    :cond_17
    :goto_3
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->smartReplies:Ljava/util/List;

    iget-object p3, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->smartReplies:Ljava/util/List;

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_4

    :cond_18
    invoke-static {}, Lcom/android/systemui/Flags;->notificationAsyncHybridViewInflation()V

    invoke-static {}, Lcom/android/systemui/Flags;->notificationAsyncGroupHeaderInflation()V

    iget-boolean p1, p2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isPromoted:Z

    iget-boolean p2, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isPromoted:Z

    if-eq p1, p2, :cond_3

    :cond_19
    :goto_4
    return v1
.end method

.method private onInflationFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewController;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;->logNotifInflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflatingNotifs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mViewBarn:Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;->rowMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflationStates:Landroid/util/ArrayMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mBindEventManager:Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;->listeners:Lcom/android/systemui/util/ListenerSet;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager$Listener;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager$Listener;->onViewBound(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifInflatingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onInflationFinished for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList(Ljava/lang/String;)V

    sget-object p2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mOngoingActivityController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->pendingOngoingActivityDataList:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    if-eqz p2, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " oa DATA: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaOngoingActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->baseActivityComponentName:Landroid/content/ComponentName;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addOrUpdateOngoingActivityInternal() mNotiID = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    const-string v5, ", oa size = "

    const-string v6, ", baseActivityComponentName = "

    invoke-static {v3, v4, v5, v1, v6}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->hiddenOngoingActivityDataList:Ljava/util/LinkedList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move-object v5, v3

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-object v7, v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v5, v6

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    if-eqz v5, :cond_4

    sget-object v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->hiddenOngoingActivityDataList:Ljava/util/LinkedList;

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v1, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v3, v5, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    const-string v1, "hiddenOngoingActivityDataList get index fail"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    new-instance v1, Lkotlin/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    sget-object v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-object v7, v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v3, v6

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_8

    sget-object v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v1, :cond_7

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v5, v3, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    new-instance v1, Lkotlin/Pair;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    const-string v1, "mOngoingActivityLists get index fail"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lkotlin/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->userManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->shouldHide(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->hiddenOngoingActivityDataList:Ljava/util/LinkedList;

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lkotlin/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    new-instance v1, Lkotlin/Pair;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->isUpdateNotAllowed:Z

    if-nez v2, :cond_b

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->observers:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/IOngoingObserver;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/IOngoingObserver;->add$2()V

    goto :goto_5

    :cond_a
    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->observers:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/IOngoingObserver;

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/IOngoingObserver;->update(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->convertOngoingActivityData(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->notifyUpdateItemNowbarObservers(Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;)V

    iget-boolean v1, p2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mIsMediaOngoingData:Z

    if-ne v1, v0, :cond_c

    sput-object p2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mediaOngoingData:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    :cond_c
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->historyDump:Lcom/android/systemui/statusbar/phone/ongoingactivity/HistoryDumpList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, " is INFLATED "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/HistoryDumpList;->add(Ljava/lang/String;)Z

    :cond_d
    return-void
.end method

.method private rebind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflationAdjustments:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflatingNotifs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->getInflaterParams(Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifInflater:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;)V

    check-cast p3, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

    invoke-virtual {p3, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;->rebindViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda0;)V

    return-void
.end method

.method private shouldWaitForGroupToInflate(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;J)Z
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getPreviousAttachState()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->isBeyondGroupInitializationWindow(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;J)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;->logGroupInflationTookTooLong(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    return v1

    :cond_1
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->isInflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;->logDelayingGroupRelease(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return p3

    :cond_2
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflatingNotifs:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getPreviousAttachState()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;->logDelayingGroupRelease(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return p3

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;->logDoneWaitingForGroupInflation(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    :cond_6
    :goto_1
    return v1
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mInflationErrorListener:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager$NotifInflationErrorListener;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;->mListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mAdjustmentProvider:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->dirtyListeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {v2}, Lcom/android/systemui/util/ListenerSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v3, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mNotifStateChangedListeners:Lcom/android/systemui/util/ListenerSet;

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->notifStateChangedListener:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$notifStateChangedListener$1;

    invoke-virtual {v3, v4}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/notification/Flags;->screenshareNotificationHiding()V

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->sensitiveNotifProtectionController:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mListeners:Lcom/android/systemui/util/ListenerSet;

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->onSensitiveStateChangedListener:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$onSensitiveStateChangedListener$1;

    invoke-virtual {v3, v4}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->updateSnoozeEnabled()V

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->settingsObserver:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$settingsObserver$1;

    const/4 v4, -0x1

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string/jumbo v6, "show_notification_snooze"

    invoke-interface {v5, v6, v3, v4}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Ljava/lang/String;Landroid/database/ContentObserver;I)V

    sget-boolean v3, Lcom/android/systemui/NotiRune;->NOTI_STYLE_APP_LOCK:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->appLockNotificationController:Lcom/android/systemui/statusbar/policy/AppLockNotificationController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;->mListeners:Lcom/android/systemui/util/ListenerSet;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;->onAppLockPackagesChangedListener:Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider$onAppLockPackagesChangedListener$1;

    invoke-virtual {v3, v0}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addOnBeforeFinalizeFilterListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeFinalizeFilterListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifInflationErrorFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addFinalizeFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifInflatingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addFinalizeFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mSettingsHelperCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const-string v3, "lock_screen_allow_private_notifications_when_unsecure"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_1
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda0;

    const-string v1, "PreparationCoordinator"

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;->mNotifUpdate:Lcom/android/systemui/statusbar/notification/collection/notifcollection/InternalNotifUpdater;

    return-void
.end method

.method public getInflaterParams(Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;
    .locals 7

    new-instance p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isMinimized:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isSnoozeEnabled:Z

    iget-boolean v4, p1, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isChildInGroup:Z

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->isGroupSummary:Z

    iget-boolean v6, p1, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustment;->needsRedaction:Z

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater$Params;-><init>(ZLjava/lang/String;ZZZZ)V

    return-object p0
.end method
