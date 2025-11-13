.class public Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# annotations
.annotation runtime Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorScope;
.end annotation


# instance fields
.field private DEBUG:Z

.field private final SETTING_CONTENT:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final mCommonNotifCollectionLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mHighlightsController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

.field private mHighlightsSectionShowing:Z

.field private final mHighlightsSectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

.field private final mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

.field private mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field private mSettingEnabled:Z

.field private final mSettingsChangedListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mSystemSettings:Lcom/android/systemui/util/settings/SystemSettings;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCommonNotifCollectionLazy(Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;)Ldagger/Lazy;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;->mCommonNotifCollectionLazy:Ldagger/Lazy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHighlightsController(Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;)Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;->mHighlightsController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHighlightsSectionShowing(Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;->mHighlightsSectionShowing:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifPipeline(Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;)Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingEnabled(Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;->mSettingEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmHighlightsSectionShowing(Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;->mHighlightsSectionShowing:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSettingEnabled(Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;->mSettingEnabled:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/util/settings/SystemSettings;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/collection/render/NodeController;",
            "Ldagger/Lazy;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/util/settings/SystemSettings;",
            "Lcom/android/systemui/shade/ShadeExpansionStateManager;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p3, "HighlightsCoordinator"

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;->TAG:Ljava/lang/String;

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;->DEBUG:Z

    const-string p5, "noti_intelligence_priority_conversation"

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;->SETTING_CONTENT:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;->mHighlightsSectionShowing:Z

    new-instance p4, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;->mSettingsChangedListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance p4, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator$2;

    invoke-direct {p4, p0, p3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;->mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    new-instance p3, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator$3;

    const-string p4, "Highlights"

    const/4 p5, 0x4

    invoke-direct {p3, p0, p4, p5}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator$3;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;->mHighlightsSectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;->mHighlightsController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;->mCommonNotifCollectionLazy:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;->mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addFinalizeFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    return-void
.end method

.method public getHighlightsSection()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HighlightsCoordinator;->mHighlightsSectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    return-object p0
.end method

.method public onPanelStateChanged(I)V
    .locals 0

    return-void
.end method
