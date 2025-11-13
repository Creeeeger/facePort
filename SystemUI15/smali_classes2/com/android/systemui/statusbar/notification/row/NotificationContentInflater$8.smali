.class public final Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/RemoteViews$OnViewAppliedListener;


# instance fields
.field public final synthetic val$applyCallback:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;

.field public final synthetic val$callback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

.field public final synthetic val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final synthetic val$existingView:Landroid/view/View;

.field public final synthetic val$existingWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

.field public final synthetic val$inflationId:I

.field public final synthetic val$isMinimized:Z

.field public final synthetic val$isNewView:Z

.field public final synthetic val$logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

.field public final synthetic val$newContentView:Landroid/widget/RemoteViews;

.field public final synthetic val$parentLayout:Landroid/view/ViewGroup;

.field public final synthetic val$reInflateFlags:I

.field public final synthetic val$remoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

.field public final synthetic val$remoteViewClickHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field public final synthetic val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

.field public final synthetic val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final synthetic val$runningInflations:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;IZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ZILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Landroid/view/View;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$runningInflations:Ljava/util/HashMap;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$callback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    move v1, p6

    iput v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$inflationId:I

    move v1, p7

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$isNewView:Z

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$applyCallback:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    move v1, p12

    iput v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$reInflateFlags:I

    move-object v1, p13

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$remoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$existingView:Landroid/view/View;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$newContentView:Landroid/widget/RemoteViews;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$parentLayout:Landroid/view/ViewGroup;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$remoteViewClickHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Exception;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$existingView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$isNewView:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$newContentView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->packageContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$parentLayout:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$remoteViewClickHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$newContentView:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->packageContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$remoteViewClickHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {v1, v2, v0, v3}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    :goto_0
    const-string v1, "NotifContentInflater"

    const-string v2, "Async Inflation failed but normal inflation finished normally."

    invoke-static {v1, v2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->onViewApplied(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$runningInflations:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$inflationId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$runningInflations:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$callback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    const-string v7, "applying view"

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->handleInflationError(Ljava/util/HashMap;Ljava/lang/Exception;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final onViewApplied(Landroid/view/View;)V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->isValidView(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$runningInflations:Ljava/util/HashMap;

    new-instance v2, Lcom/android/systemui/statusbar/notification/InflationException;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$callback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    const-string v6, "applied invalid view"

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->handleInflationError(Ljava/util/HashMap;Ljava/lang/Exception;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$runningInflations:Ljava/util/HashMap;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$inflationId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isOngoingAcitivty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getPendingOngoingActivityData(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getOngoingActivityDataByKey(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->updateOngoingChronometer(Landroid/view/View;Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)V

    const v0, 0x1020451

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105033d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050339

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v6

    new-instance v7, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil$updateOngoingHeader$1$1;

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil$updateOngoingHeader$1$1;-><init>(Landroid/view/View;Landroid/content/Context;IIZ)V

    invoke-virtual {v0, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$isNewView:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$applyCallback:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;->setResultView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onReinflated()V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$runningInflations:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$inflationId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$reInflateFlags:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$remoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$runningInflations:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$callback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    invoke-static/range {v2 .. v9}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->finishIfDone(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)Z

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lnoticolorpicker/NotificationColorPicker;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lnoticolorpicker/NotificationColorPicker;

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/widget/CachingIconView;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    if-eqz v0, :cond_e

    sget-object v3, Lcom/android/systemui/statusbar/notification/ImageTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    const v6, 0x7f0a0521

    invoke-virtual {v0, v6, v3}, Lcom/android/internal/widget/CachingIconView;->setTag(ILjava/lang/Object;)V

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v6, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3, v6}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationAppIconEnabled()Z

    move-result v3

    if-eqz v3, :cond_d

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x402080

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Landroid/content/pm/LauncherApps;

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/LauncherApps;

    iget v10, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v9

    iget v10, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v10, v10, 0x81

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "com.samsung"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "com.sec"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_5
    const-string v10, "android"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "com.android.systemui"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    iget v7, v8, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v7, :cond_6

    move v7, v4

    goto :goto_2

    :cond_6
    :goto_1
    move v7, v5

    :goto_2
    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v10, "android.showSmallIcon"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    xor-int/2addr v7, v4

    :cond_7
    if-eqz v7, :cond_c

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v6}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isColorThemeAppIconSettingsOn()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v3}, Landroid/content/pm/LauncherActivityInfo;->semGetBadgedIconForIconTray(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    :cond_8
    invoke-virtual {v3, v8, v4}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    :cond_9
    invoke-virtual {v3, v8, v4}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_3
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/CachingIconView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/CachingIconView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v5, v5, v5, v5}, Lcom/android/internal/widget/CachingIconView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f070b1d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0}, Lcom/android/internal/widget/CachingIconView;->getMaxDrawableWidth()I

    move-result v6

    if-lez v6, :cond_a

    invoke-virtual {v0}, Lcom/android/internal/widget/CachingIconView;->getMaxDrawableWidth()I

    move-result v6

    goto :goto_4

    :cond_a
    move v6, v3

    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/widget/CachingIconView;->getMaxDrawableHeight()I

    move-result v7

    if-lez v7, :cond_b

    invoke-virtual {v0}, Lcom/android/internal/widget/CachingIconView;->getMaxDrawableHeight()I

    move-result v3

    :cond_b
    invoke-virtual {v2, v1, v6, v3}, Lnoticolorpicker/NotificationColorPicker;->resizeDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CachingIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v3, 0x7f0a0df1

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/widget/CachingIconView;->setTag(ILjava/lang/Object;)V

    instance-of v0, p1, Lcom/android/internal/widget/ConversationLayout;

    if-eqz v0, :cond_e

    invoke-virtual {v2, p1}, Lnoticolorpicker/NotificationColorPicker;->applyShawdow(Landroid/view/View;)V

    goto :goto_6

    :cond_c
    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnoticolorpicker/NotificationColorPicker;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1, p1, v3, v0}, Lnoticolorpicker/NotificationColorPicker;->updateSmallIcon(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/internal/widget/CachingIconView;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_5
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_6

    :cond_d
    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnoticolorpicker/NotificationColorPicker;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1, p1, v3, v0}, Lnoticolorpicker/NotificationColorPicker;->updateSmallIcon(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/internal/widget/CachingIconView;)V

    :cond_e
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mAnimationRunning:Z

    if-eqz v1, :cond_f

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAnimationRunning(Z)V

    goto :goto_7

    :cond_f
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setAnimationRunning(Z)V

    :goto_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8$$ExternalSyntheticLambda1;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8$$ExternalSyntheticLambda1;-><init>(Lnoticolorpicker/NotificationColorPicker;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lnoticolorpicker/NotificationColorPicker;->isNeedToUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    if-eqz v1, :cond_10

    invoke-virtual {v2, v0}, Lnoticolorpicker/NotificationColorPicker;->getAppPrimaryColor(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2, v0}, Lnoticolorpicker/NotificationColorPicker;->isGrayScaleIcon(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lnoticolorpicker/NotificationColorPicker;->updateBig(Landroid/view/View;IZLcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_10
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    if-eqz v0, :cond_11

    invoke-static {p1}, Lnoticolorpicker/NotificationColorPicker;->isCustom(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->applyHeadsUpBackground(Z)V

    :cond_11
    return-void
.end method

.method public final onViewInflated(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/android/internal/widget/ImageMessageConsumer;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/internal/widget/ImageMessageConsumer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mImageResolver:Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    invoke-interface {p1, p0}, Lcom/android/internal/widget/ImageMessageConsumer;->setImageResolver(Lcom/android/internal/widget/ImageResolver;)V

    :cond_0
    return-void
.end method
