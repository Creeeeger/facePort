.class public final Lcom/android/systemui/qs/DNDDetailItems$Adapter$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/qs/DNDDetailItems$Adapter;

.field public final synthetic val$item:Lcom/android/systemui/qs/DNDDetailItems$Item;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/DNDDetailItems$Adapter;Lcom/android/systemui/qs/DNDDetailItems$Item;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/DNDDetailItems$Adapter$1;->this$1:Lcom/android/systemui/qs/DNDDetailItems$Adapter;

    iput-object p2, p0, Lcom/android/systemui/qs/DNDDetailItems$Adapter$1;->val$item:Lcom/android/systemui/qs/DNDDetailItems$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/android/systemui/qs/DNDDetailItems$Adapter$1;->this$1:Lcom/android/systemui/qs/DNDDetailItems$Adapter;

    iget-object v0, v0, Lcom/android/systemui/qs/DNDDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/DNDDetailItems;

    iget-object v0, v0, Lcom/android/systemui/qs/DNDDetailItems;->mCallback:Lcom/android/systemui/qs/DNDDetailItems$Callback;

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/android/systemui/qs/DNDDetailItems$Adapter$1;->val$item:Lcom/android/systemui/qs/DNDDetailItems$Item;

    check-cast v0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mItemsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/DNDDetailItems$Item;

    invoke-virtual {v0, v4, v2}, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->updateDetailItem(Lcom/android/systemui/qs/DNDDetailItems$Item;Z)V

    iget-object v4, v4, Lcom/android/systemui/qs/DNDDetailItems$Item;->line1:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/qs/DNDDetailItems$Item;->line1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mDndTile:Lcom/android/systemui/qs/tiles/DndTile;

    iput v3, v4, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSelectedItem:I

    :cond_0
    add-int/2addr v3, p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->updateDetailItem(Lcom/android/systemui/qs/DNDDetailItems$Item;Z)V

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->updateDndActivationItems(Z)V

    iget-object p0, v0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mDndTile:Lcom/android/systemui/qs/tiles/DndTile;

    iget v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSelectedItem:I

    const/4 v3, 0x0

    const-string v4, ""

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    const/4 v7, 0x5

    if-eqz v1, :cond_5

    const-string/jumbo v8, "zen_duration"

    if-eq v1, p1, :cond_3

    const/4 v9, 0x2

    if-eq v1, v9, :cond_3

    const/4 v9, 0x3

    if-eq v1, v9, :cond_3

    const/4 v9, 0x4

    if-eq v1, v9, :cond_2

    if-eq v1, v7, :cond_2

    goto/16 :goto_2

    :cond_2
    check-cast v6, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-virtual {v6, p1, v3, v5}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v8, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSummary:Ljava/lang/String;

    goto/16 :goto_2

    :cond_3
    sub-int/2addr v1, p1

    int-to-double v9, v1

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-int v1, v9

    sget v4, Lcom/android/systemui/qs/tiles/DndTile;->mZenOneHourSession:I

    mul-int/2addr v4, v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v9, 0xb

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v10, 0xc

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v9, v9, 0x3c

    add-int/2addr v9, v1

    add-int/2addr v9, v4

    int-to-long v9, v9

    const-wide/16 v11, 0x5a0

    cmp-long v1, v9, v11

    if-ltz v1, :cond_4

    sub-long/2addr v9, v11

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v9, v10}, Lcom/android/systemui/qs/tiles/DndTile;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v10, 0x7f131097

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v10, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSummary:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v9, v10}, Lcom/android/systemui/qs/tiles/DndTile;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v10, 0x7f131096

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v10, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSummary:Ljava/lang/String;

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-static {v1, v4, v9, p1}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    move-result-object v1

    iget-object v1, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    check-cast v6, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-virtual {v6, p1, v1, v5}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v8, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSelectedItem:I

    iput p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mLastDndDurationSelected:I

    goto :goto_2

    :cond_5
    check-cast v6, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-virtual {v6, v2, v3, v5}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSummary:Ljava/lang/String;

    :goto_2
    iget p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSelectedItem:I

    if-eq p1, v7, :cond_8

    const-string v10, "c"

    const-string v11, "d"

    const-string v8, "a"

    const-string v9, "b"

    const-string v12, "e"

    const-string v13, "f"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v1

    const-string v4, "on for 1 hr"

    const-string v5, "on for 2 hrs"

    const-string/jumbo v6, "turn off"

    const-string v8, "on for 4 hrs"

    const-string v9, "on until i turn it off"

    filled-new-array {v6, v4, v5, v8, v9}, [Ljava/lang/String;

    move-result-object v4

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mIsSettingsUpdated:Z

    if-eqz p1, :cond_6

    aget-object p1, v1, v7

    goto :goto_3

    :cond_6
    aget-object p1, v1, v2

    goto :goto_3

    :cond_7
    aget-object p1, v1, p1

    :goto_3
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v1

    iget v5, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSelectedItem:I

    aget-object v4, v4, v5

    const-string v5, "QPNE0301"

    invoke-static {v1, v5, p1, v4}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSelectedItem:I

    if-eqz p1, :cond_9

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/DndTile;->mIsSettingsUpdated:Z

    :cond_9
    iget-object p0, v0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mSecQSDetailController:Lcom/android/systemui/qs/SecQSDetailController;

    if-eqz p0, :cond_c

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController;->dndSummaryCallback:Lcom/android/systemui/qs/SecQSDetailController$dndSummaryCallback$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Lcom/android/systemui/qs/SecQSDetailController;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController$dndSummaryCallback$1;->this$0:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailTileSpec:Ljava/lang/String;

    const-string v0, "Dnd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailExtendedSummarContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_4

    :cond_a
    move-object p1, v3

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_c

    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailExtendedSummary:Landroid/widget/TextView;

    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetailController;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz p0, :cond_b

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getDetailAdapterSummary()Ljava/lang/String;

    move-result-object v3

    :cond_b
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    return-void
.end method
