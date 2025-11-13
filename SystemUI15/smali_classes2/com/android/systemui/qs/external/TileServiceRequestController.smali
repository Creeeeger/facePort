.class public final Lcom/android/systemui/qs/external/TileServiceRequestController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final commandQueueCallback:Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1;

.field public final commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

.field public dialogCanceller:Lkotlin/jvm/functions/Function1;

.field public final dialogCreator:Lkotlin/jvm/functions/Function0;

.field public final eventLogger:Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;

.field public final iUriGrantsManager:Landroid/app/IUriGrantsManager;

.field public final qsHost:Lcom/android/systemui/qs/QSHost;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/external/TileServiceRequestController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/external/TileServiceRequestController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;Landroid/app/IUriGrantsManager;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSHost;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/statusbar/commandline/CommandRegistry;",
            "Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;",
            "Landroid/app/IUriGrantsManager;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->qsHost:Lcom/android/systemui/qs/QSHost;

    iput-object p2, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p3, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    iput-object p4, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->eventLogger:Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;

    iput-object p5, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->iUriGrantsManager:Landroid/app/IUriGrantsManager;

    iput-object p6, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->dialogCreator:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1;-><init>(Lcom/android/systemui/qs/external/TileServiceRequestController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->commandQueueCallback:Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;Landroid/app/IUriGrantsManager;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    new-instance p6, Lcom/android/systemui/qs/external/TileServiceRequestController$1;

    invoke-direct {p6, p1}, Lcom/android/systemui/qs/external/TileServiceRequestController$1;-><init>(Lcom/android/systemui/qs/QSHost;)V

    :cond_0
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/external/TileServiceRequestController;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;Landroid/app/IUriGrantsManager;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final init()V
    .locals 3

    new-instance v0, Lcom/android/systemui/qs/external/TileServiceRequestController$init$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/TileServiceRequestController$init$1;-><init>(Lcom/android/systemui/qs/external/TileServiceRequestController;)V

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    const-string/jumbo v2, "tile-service-add"

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->commandQueueCallback:Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method public final requestTileAdd$frameworks__base__packages__SystemUI__android_common__SystemUI_core(ILandroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/ComponentName;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    iget-object v7, v6, Lcom/android/systemui/qs/external/TileServiceRequestController;->eventLogger:Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;

    iget-object v0, v7, Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p2 .. p2}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v6, Lcom/android/systemui/qs/external/TileServiceRequestController;->qsHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSHost;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v0, v1, :cond_0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v5, p6

    invoke-interface {v5, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/qs/external/TileRequestDialogEvent;->TILE_REQUEST_DIALOG_TILE_ALREADY_ADDED:Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    invoke-interface {v0, v1, v11, v9, v8}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    return-void

    :cond_0
    move-object/from16 v5, p6

    new-instance v12, Lcom/android/systemui/qs/external/TileServiceRequestController$SingleShotConsumer;

    new-instance v13, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v9

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;-><init>(Lcom/android/systemui/qs/external/TileServiceRequestController;Landroid/content/ComponentName;Ljava/lang/String;Lcom/android/internal/logging/InstanceId;Ljava/util/function/Consumer;)V

    invoke-direct {v12, v13}, Lcom/android/systemui/qs/external/TileServiceRequestController$SingleShotConsumer;-><init>(Ljava/util/function/Consumer;)V

    new-instance v13, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v0, v13

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/qs/external/TileServiceRequestController$createDialog$dialogClickListener$1;

    invoke-direct {v0, v12}, Lcom/android/systemui/qs/external/TileServiceRequestController$createDialog$dialogClickListener$1;-><init>(Lcom/android/systemui/qs/external/TileServiceRequestController$SingleShotConsumer;)V

    iget-object v1, v6, Lcom/android/systemui/qs/external/TileServiceRequestController;->dialogCreator:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/qs/external/TileRequestDialog;

    iget-object v3, v6, Lcom/android/systemui/qs/external/TileServiceRequestController;->iUriGrantsManager:Landroid/app/IUriGrantsManager;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d03c7

    const/4 v14, 0x0

    invoke-virtual {v4, v5, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    new-instance v5, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f140614

    invoke-direct {v5, v14, v15}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v5, Lcom/android/systemui/qs/tileimpl/DummyTileView;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 p1, v5

    move-object/from16 p2, v14

    move-object/from16 p3, v17

    move-object/from16 p4, v18

    move/from16 p5, v15

    move-object/from16 p6, v16

    invoke-direct/range {p1 .. p6}, Lcom/android/systemui/qs/tileimpl/DummyTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Landroid/content/res/ColorStateList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v14, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v14}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    iget-object v15, v13, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->label:Ljava/lang/CharSequence;

    iput-object v15, v14, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-boolean v11, v14, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    iget-object v15, v13, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->icon:Landroid/graphics/drawable/Icon;

    if-eqz v15, :cond_1

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v11

    iget v10, v13, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->callingUid:I

    move-object/from16 v18, v8

    iget-object v8, v13, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v11, v3, v10, v8}, Landroid/graphics/drawable/Icon;->loadDrawableCheckingUriGrant(Landroid/content/Context;Landroid/app/IUriGrantsManager;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v8, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    invoke-direct {v8, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    move-object/from16 v18, v8

    :cond_2
    const v3, 0x7f080670

    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v8

    :goto_0
    iput-object v8, v14, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v3, v14, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object v3, v14, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v5, v14}, Lcom/android/systemui/qs/tileimpl/DummyTileView;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    new-instance v3, Lcom/android/systemui/qs/external/TileRequestDialog$createTileView$1;

    invoke-direct {v3, v5}, Lcom/android/systemui/qs/external/TileRequestDialog$createTileView$1;-><init>(Lcom/android/systemui/plugins/qs/QSTileView;)V

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f07005e

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v8, -0x2

    invoke-virtual {v4, v5, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setSelected(Z)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 p1, v2

    move-object/from16 p2, v4

    move/from16 p3, v3

    move/from16 p4, v3

    move/from16 p5, v3

    move/from16 p6, v5

    invoke-virtual/range {p1 .. p6}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v3, Lcom/android/systemui/qs/external/TileServiceRequestController$createDialog$1$1;

    invoke-direct {v3, v12}, Lcom/android/systemui/qs/external/TileServiceRequestController$createDialog$1$1;-><init>(Lcom/android/systemui/qs/external/TileServiceRequestController$SingleShotConsumer;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v3, Lcom/android/systemui/qs/external/TileServiceRequestController$createDialog$1$2;

    invoke-direct {v3, v12}, Lcom/android/systemui/qs/external/TileServiceRequestController$createDialog$1$2;-><init>(Lcom/android/systemui/qs/external/TileServiceRequestController$SingleShotConsumer;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const v3, 0x7f1310e3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v13, Lcom/android/systemui/qs/external/TileRequestDialog$TileData;->appName:Ljava/lang/CharSequence;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f1310d2

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v3, 0x7f1310d0

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const v3, 0x7f1310d1

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    check-cast v1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v0, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$1$1;

    invoke-direct {v0, v9, v1, v6}, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$1$1;-><init>(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/SystemUIDialog;Lcom/android/systemui/qs/external/TileServiceRequestController;)V

    iput-object v0, v6, Lcom/android/systemui/qs/external/TileServiceRequestController;->dialogCanceller:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v0, v7, Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/qs/external/TileRequestDialogEvent;->TILE_REQUEST_DIALOG_SHOWN:Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    move-object/from16 v2, v18

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v9, v2}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method
