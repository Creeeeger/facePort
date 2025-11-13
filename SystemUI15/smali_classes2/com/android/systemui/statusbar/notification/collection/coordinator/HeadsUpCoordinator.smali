.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# annotations
.annotation runtime Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorScope;
.end annotation


# static fields
.field public static final $stable:I

.field private static final BIND_TIMEOUT:J = 0x3e8L

.field public static final Companion:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$Companion;

.field private static final MAX_RANKING_UPDATE_DELAY_MS:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "HeadsUpCoordinator"


# instance fields
.field private final mActionPressListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEndLifetimeExtension:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender$OnEndLifetimeExtensionCallback;

.field private final mEntriesBindingUntil:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntriesUpdateTimes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final mFSIUpdateCandidates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mFlags:Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private final mHeadsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

.field private final mIncomingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

.field private final mLaunchFullScreenIntentProvider:Lcom/android/systemui/statusbar/notification/collection/provider/LaunchFullScreenIntentProvider;

.field private final mLifetimeExtender:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1;

.field private final mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;

.field private final mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1;

.field private mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field private final mNotifPromoter:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifPromoter$1;

.field private final mNotifsExtendingLifetime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mNow:J

.field private final mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mOnHeadsUpChangedListener$1;

.field private final mPostedEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final mSystemClock:Lcom/android/systemui/util/time/SystemClock;

.field private final mVisualInterruptionDecisionProvider:Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;

.field private final sectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->Companion:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/collection/provider/LaunchFullScreenIntentProvider;Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mHeadsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mVisualInterruptionDecisionProvider:Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mLaunchFullScreenIntentProvider:Lcom/android/systemui/statusbar/notification/collection/provider/LaunchFullScreenIntentProvider;

    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mFlags:Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;

    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mIncomingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mEntriesBindingUntil:Landroid/util/ArrayMap;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mEntriesUpdateTimes:Landroid/util/ArrayMap;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mFSIUpdateCandidates:Landroid/util/ArrayMap;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNow:J

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mPostedEntries:Ljava/util/LinkedHashMap;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotifsExtendingLifetime:Landroid/util/ArrayMap;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mActionPressListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mActionPressListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mActionPressListener:Ljava/util/function/Consumer;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mLifetimeExtender:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifPromoter$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifPromoter$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotifPromoter:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifPromoter$1;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$sectioner$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$sectioner$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->sectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mOnHeadsUpChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mOnHeadsUpChangedListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mOnHeadsUpChangedListener$1;

    return-void
.end method

.method public static final synthetic access$cancelHeadsUpBind(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->cancelHeadsUpBind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public static final synthetic access$cleanUpEntryTimes(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->cleanUpEntryTimes()V

    return-void
.end method

.method public static final synthetic access$endNotifLifetimeExtensionIfExtended(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->endNotifLifetimeExtensionIfExtended(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public static final synthetic access$findBestTransferChild(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->findBestTransferChild(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$findHeadsUpOverride(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->findHeadsUpOverride(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getGroupLocationsByKey(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Ljava/util/List;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->getGroupLocationsByKey(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMEntriesUpdateTimes$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mEntriesUpdateTimes:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static final synthetic access$getMExecutor$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method public static final synthetic access$getMFSIUpdateCandidates$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mFSIUpdateCandidates:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static final synthetic access$getMHeadsUpManager$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-object p0
.end method

.method public static final synthetic access$getMHeadsUpViewBinder$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mHeadsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    return-object p0
.end method

.method public static final synthetic access$getMIncomingHeaderController$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mIncomingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    return-object p0
.end method

.method public static final synthetic access$getMLaunchFullScreenIntentProvider$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/statusbar/notification/collection/provider/LaunchFullScreenIntentProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mLaunchFullScreenIntentProvider:Lcom/android/systemui/statusbar/notification/collection/provider/LaunchFullScreenIntentProvider;

    return-object p0
.end method

.method public static final synthetic access$getMLogger$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;

    return-object p0
.end method

.method public static final synthetic access$getMNotifPipeline$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    return-object p0
.end method

.method public static final synthetic access$getMNotifPromoter$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifPromoter$1;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotifPromoter:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifPromoter$1;

    return-object p0
.end method

.method public static final synthetic access$getMNotifsExtendingLifetime$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotifsExtendingLifetime:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static final synthetic access$getMPostedEntries$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mPostedEntries:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static final synthetic access$getMRemoteInputManager$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    return-object p0
.end method

.method public static final synthetic access$getMSystemClock$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/util/time/SystemClock;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    return-object p0
.end method

.method public static final synthetic access$getMVisualInterruptionDecisionProvider$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mVisualInterruptionDecisionProvider:Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;

    return-object p0
.end method

.method public static final synthetic access$handlePostedEntry(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;Lcom/android/systemui/statusbar/notification/collection/coordinator/HunMutator;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->handlePostedEntry(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;Lcom/android/systemui/statusbar/notification/collection/coordinator/HunMutator;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$isCandidateForFSIReconsideration(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->isCandidateForFSIReconsideration(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isEntryBinding(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->isEntryBinding(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isGoingToShowHunNoRetract(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->isGoingToShowHunNoRetract(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isGoingToShowHunStrict(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->isGoingToShowHunStrict(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isNewEnoughForRankingUpdate(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->isNewEnoughForRankingUpdate(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isSticky(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->isSticky(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onHeadsUpViewBound(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->onHeadsUpViewBound(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public static final synthetic access$setMEndLifetimeExtension$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender$OnEndLifetimeExtensionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mEndLifetimeExtension:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender$OnEndLifetimeExtensionCallback;

    return-void
.end method

.method public static final synthetic access$shouldHunAgain(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->shouldHunAgain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method

.method private final bindForAsyncHeadsUp(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mEntriesBindingUntil:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNow:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mHeadsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$bindForAsyncHeadsUp$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$bindForAsyncHeadsUp$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->bindHeadsUpView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)V

    return-void
.end method

.method private final cancelHeadsUpBind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mEntriesBindingUntil:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mHeadsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->abortBindCallback(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method private final cleanUpEntryTimes()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    sub-long/2addr v0, v2

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mEntriesUpdateTimes:Landroid/util/ArrayMap;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v0, v6

    if-lez v4, :cond_0

    :cond_1
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mEntriesUpdateTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mFSIUpdateCandidates:Landroid/util/ArrayMap;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v0, v6

    if-lez v4, :cond_3

    :cond_4
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mFSIUpdateCandidates:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final endNotifLifetimeExtensionIfExtended(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotifsExtendingLifetime:Landroid/util/ArrayMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotifsExtendingLifetime:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mEndLifetimeExtension:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender$OnEndLifetimeExtensionCallback;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mLifetimeExtender:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda4;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda4;->onEndLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;)V

    :cond_1
    return-void
.end method

.method private final findBestTransferChild(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    sget-object p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$findBestTransferChild$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$findBestTransferChild$1;

    invoke-static {v0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$findBestTransferChild$2;

    invoke-direct {v0, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$findBestTransferChild$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$findBestTransferChild$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$findBestTransferChild$3;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)V

    sget-object p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$findBestTransferChild$4;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$findBestTransferChild$4;

    filled-new-array {p2, p0}, [Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-static {p0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareBy([Lkotlin/jvm/functions/Function1;)Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;

    move-result-object p0

    new-instance p2, Lkotlin/sequences/SequencesKt___SequencesKt$sortedWith$1;

    invoke-direct {p2, p1, p0}, Lkotlin/sequences/SequencesKt___SequencesKt$sortedWith$1;-><init>(Lkotlin/sequences/Sequence;Ljava/util/Comparator;)V

    invoke-static {p2}, Lkotlin/sequences/SequencesKt___SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method private final findHeadsUpOverride(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;",
            ">;",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {p0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    sget-object p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$findHeadsUpOverride$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$findHeadsUpOverride$1;

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$findHeadsUpOverride$$inlined$sortedBy$1;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$findHeadsUpOverride$$inlined$sortedBy$1;-><init>()V

    new-instance v0, Lkotlin/sequences/SequencesKt___SequencesKt$sortedWith$1;

    invoke-direct {v0, p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt$sortedWith$1;-><init>(Lkotlin/sequences/Sequence;Ljava/util/Comparator;)V

    invoke-static {v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;->Isolated:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method private final getGroupLocationsByKey(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;->Isolated:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    sget-object v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;->Summary:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    sget-object v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;->Child:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unhandled type "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-object p0
.end method

.method private final handlePostedEntry(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;Lcom/android/systemui/statusbar/notification/collection/coordinator/HunMutator;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;

    invoke-virtual {v0, p1, p3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;->logPostedEntryWillEvaluate(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->getWasAdded()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->getShouldHeadsUpEver()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->bindForAsyncHeadsUp(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->isHeadsUpAlready()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->getShouldHeadsUpEver()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->isHeadsUpEntry()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->getShouldHeadsUpAgain()Z

    move-result p1

    invoke-interface {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HunMutator;->updateNotification(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->isHeadsUpEntry()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HunMutator;->removeNotification(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->cancelHeadsUpBind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->getShouldHeadsUpEver()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->getShouldHeadsUpAgain()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->bindForAsyncHeadsUp(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private final isAttemptingToShowHun(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->isHeadsUpEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->isEntryBinding(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final isCandidateForFSIReconsideration(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mFSIUpdateCandidates:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p0}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v1

    const-wide/16 v1, 0x7d0

    cmp-long p0, p0, v1

    if-gtz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private final isEntryBinding(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mEntriesBindingUntil:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNow:J

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isGoingToShowHunNoRetract(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mPostedEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->getCalculateShouldBeHeadsUpNoRetract()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->isAttemptingToShowHun(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mPostedEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->isHeadsUpByBriefExpanding()Z

    move-result p0

    goto :goto_1

    :cond_1
    move p0, p1

    :goto_1
    if-eqz p0, :cond_3

    :cond_2
    const/4 p1, 0x1

    :cond_3
    return p1
.end method

.method private final isGoingToShowHunStrict(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mPostedEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->getCalculateShouldBeHeadsUpStrict()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->isAttemptingToShowHun(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private final isNewEnoughForRankingUpdate(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mEntriesUpdateTimes:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mEntriesUpdateTimes:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p0}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p0, p0, v2

    if-gtz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private final isSticky(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    check-cast p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;->isSticky()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final onHeadsUpViewBound(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->showNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mEntriesBindingUntil:Landroid/util/ArrayMap;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lnoticolorpicker/NotificationColorPicker;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnoticolorpicker/NotificationColorPicker;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lnoticolorpicker/NotificationColorPicker;->isCustom(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result p0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->applyHeadsUpBackground(Z)V

    :cond_0
    return-void
.end method

.method private final shouldHunAgain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->interruption:Z

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final addForFSIReconsideration(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;J)V
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mFSIUpdateCandidates:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mOnHeadsUpChangedListener$1;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifCollectionListener$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$attach$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$attach$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)V

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mShadeListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->requireState()V

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeTransformGroupsListeners:Lcom/android/systemui/util/NamedListenerSet;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/NamedListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$attach$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$attach$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addOnBeforeFinalizeFilterListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeFinalizeFilterListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotifPromoter:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mNotifPromoter$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addPromoter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mLifetimeExtender:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$mLifetimeExtender$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addNotificationLifetimeExtender(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mActionPressListener:Ljava/util/function/Consumer;

    iget-object p1, p1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mActionPressListeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {p1, v0}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$attach$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$attach$3;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)V

    check-cast p1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iget-object p0, p1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mCallbacks:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final bindForAsyncHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 11

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mPostedEntries:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    new-instance v10, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, v10

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZZZZZ)V

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsHeadsUpByBriefExpanding:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mPostedEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->bindForAsyncHeadsUp(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;)V

    :cond_0
    return-void
.end method

.method public final getSectioner()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->sectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    return-object p0
.end method

.method public final onBeforeFinalizeFilter(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorKt;->access$modifyHuns(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public final onBeforeTransformGroups(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p1}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNow:J

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mPostedEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeTransformGroups$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeTransformGroups$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)V

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorKt;->access$modifyHuns(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public final setUpdateTime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;J)V
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mEntriesUpdateTimes:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
