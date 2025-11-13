.class public final Lcom/android/systemui/qs/tiles/InternetTileNewImpl;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final WIFI_SETTINGS:Landroid/content/Intent;


# instance fields
.field public final accessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

.field public final internetDialogManager:Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;

.field public final mainHandler:Landroid/os/Handler;

.field public model:Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tiles/InternetTileNewImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/InternetTileNewImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/InternetTileNewImpl;->WIFI_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;Lcom/android/systemui/statusbar/connectivity/AccessPointController;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/InternetTileNewImpl;->mainHandler:Landroid/os/Handler;

    iput-object p11, p0, Lcom/android/systemui/qs/tiles/InternetTileNewImpl;->internetDialogManager:Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;

    iput-object p12, p0, Lcom/android/systemui/qs/tiles/InternetTileNewImpl;->accessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    iget-object p1, p10, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/InternetTileViewModel;->tileModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/InternetTileNewImpl;->model:Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel;

    sget-object p2, Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/InternetTileBinder;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/InternetTileBinder;

    iget-object p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    new-instance p4, Lcom/android/systemui/qs/tiles/InternetTileNewImpl$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/qs/tiles/InternetTileNewImpl$1;-><init>(Lcom/android/systemui/qs/tiles/InternetTileNewImpl;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3, p1, p4}, Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/InternetTileBinder;->bind(Landroidx/lifecycle/LifecycleRegistry;Lkotlinx/coroutines/flow/ReadonlyStateFlow;Lcom/android/systemui/qs/tiles/InternetTileNewImpl$1;)V

    return-void
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/tiles/InternetTileNewImpl;->WIFI_SETTINGS:Landroid/content/Intent;

    return-object p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f130f09

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final handleClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/tiles/InternetTileNewImpl$handleClick$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/InternetTileNewImpl$handleClick$1;-><init>(Lcom/android/systemui/qs/tiles/InternetTileNewImpl;Lcom/android/systemui/animation/Expandable;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/InternetTileNewImpl;->mainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f130f09

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    const-class p2, Landroid/widget/Switch;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/InternetTileNewImpl;->model:Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel;->getSecondaryLabel()Lcom/android/systemui/common/shared/model/Text;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/common/shared/model/Text;->Companion:Lcom/android/systemui/common/shared/model/Text$Companion;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel;->getSecondaryLabel()Lcom/android/systemui/common/shared/model/Text;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/android/systemui/common/shared/model/Text$Companion;->loadText(Lcom/android/systemui/common/shared/model/Text;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel;->getSecondaryTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    :goto_0
    sget-object v0, Lcom/android/systemui/common/shared/model/ContentDescription;->Companion:Lcom/android/systemui/common/shared/model/ContentDescription$Companion;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel;->getStateDescription()Lcom/android/systemui/common/shared/model/ContentDescription;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/android/systemui/common/shared/model/ContentDescription$Companion;->loadContentDescription(Lcom/android/systemui/common/shared/model/ContentDescription;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel;->getContentDescription()Lcom/android/systemui/common/shared/model/ContentDescription;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/systemui/common/shared/model/ContentDescription$Companion;->loadContentDescription(Lcom/android/systemui/common/shared/model/ContentDescription;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel;->getIcon()Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p2}, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel;->getIcon()Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel;->getIconId()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p2}, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel;->getIconId()Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :cond_2
    :goto_1
    instance-of p0, p2, Lcom/android/systemui/statusbar/pipeline/shared/ui/model/InternetTileModel$Active;

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    goto :goto_2

    :cond_3
    const/4 p0, 0x1

    :goto_2
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    return-void
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->forceExpandIcon:Z

    return-object p0
.end method
