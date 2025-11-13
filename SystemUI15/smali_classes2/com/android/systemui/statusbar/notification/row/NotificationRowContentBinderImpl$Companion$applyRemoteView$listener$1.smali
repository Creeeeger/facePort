.class public final Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/RemoteViews$OnViewAppliedListener;


# instance fields
.field public final synthetic $applyCallback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$ApplyCallback;

.field public final synthetic $callback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

.field public final synthetic $entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final synthetic $existingView:Landroid/view/View;

.field public final synthetic $existingWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

.field public final synthetic $inflationId:I

.field public final synthetic $isMinimized:Z

.field public final synthetic $isNewView:Z

.field public final synthetic $logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

.field public final synthetic $newContentView:Landroid/widget/RemoteViews;

.field public final synthetic $parentLayout:Landroid/view/ViewGroup;

.field public final synthetic $reInflateFlags:I

.field public final synthetic $remoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

.field public final synthetic $remoteViewClickHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field public final synthetic $result:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;

.field public final synthetic $row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final synthetic $runningInflations:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;IZLcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$ApplyCallback;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;ZILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;",
            "IZ",
            "Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$ApplyCallback;",
            "Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;",
            "ZI",
            "Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;",
            "Landroid/widget/RemoteViews;",
            "Landroid/view/ViewGroup;",
            "Landroid/widget/RemoteViews$InteractionHandler;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$runningInflations:Ljava/util/HashMap;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$callback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    move v1, p6

    iput v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$inflationId:I

    move v1, p7

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$isNewView:Z

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$applyCallback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$ApplyCallback;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$existingWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$result:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;

    move v1, p12

    iput v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$reInflateFlags:I

    move-object v1, p13

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$remoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$newContentView:Landroid/widget/RemoteViews;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$parentLayout:Landroid/view/ViewGroup;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$remoteViewClickHandler:Landroid/widget/RemoteViews$InteractionHandler;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$existingView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Exception;)V
    .locals 7

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$isNewView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$newContentView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$result:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->packageContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$parentLayout:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$remoteViewClickHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$newContentView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$result:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;->packageContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$existingView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$remoteViewClickHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$existingView:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    const-string v1, "NotifContentInflater"

    const-string v2, "Async Inflation failed but normal inflation finished normally."

    invoke-static {v1, v2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->onViewApplied(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$runningInflations:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$inflationId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->Companion:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$runningInflations:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$callback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "applying view"

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;->handleInflationError(Ljava/util/HashMap;Ljava/lang/Exception;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final onViewApplied(Landroid/view/View;)V
    .locals 9

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->Companion:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;->isValidView(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$runningInflations:Ljava/util/HashMap;

    new-instance v2, Lcom/android/systemui/statusbar/notification/InflationException;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$callback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    const-string v6, "applied invalid view"

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;->handleInflationError(Ljava/util/HashMap;Ljava/lang/Exception;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$runningInflations:Ljava/util/HashMap;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$inflationId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$isNewView:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$applyCallback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$ApplyCallback;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$ApplyCallback;->setResultView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$existingWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onReinflated()V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$runningInflations:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$inflationId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$result:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$reInflateFlags:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$remoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$runningInflations:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$callback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;->finishIfDone(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;ILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)Z

    return-void
.end method

.method public final onViewInflated(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/android/internal/widget/ImageMessageConsumer;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/internal/widget/ImageMessageConsumer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion$applyRemoteView$listener$1;->$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mImageResolver:Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    invoke-interface {p1, p0}, Lcom/android/internal/widget/ImageMessageConsumer;->setImageResolver(Lcom/android/internal/widget/ImageResolver;)V

    :cond_0
    return-void
.end method
