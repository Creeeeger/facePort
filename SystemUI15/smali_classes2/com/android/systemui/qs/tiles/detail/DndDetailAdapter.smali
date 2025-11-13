.class public final Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/systemui/qs/DNDDetailItems$Callback;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDNDActivationItems:Lcom/android/systemui/qs/DNDDetailItems;

.field public final mDndMenuOptions:[Ljava/lang/String;

.field public final mDndTile:Lcom/android/systemui/qs/tiles/DndTile;

.field public final mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public final mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

.field public final mItemsList:Ljava/util/ArrayList;

.field public mMenuOptions:Landroid/view/ViewGroup;

.field public mSecQSDetailController:Lcom/android/systemui/qs/SecQSDetailController;

.field public final mSettingsObserver:Landroid/database/ContentObserver;

.field public mSummary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/DndTile;Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/util/settings/GlobalSettings;Landroid/database/ContentObserver;Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/tiles/DndTile;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
            "Lcom/android/systemui/statusbar/policy/ZenModeController;",
            "Lcom/android/systemui/util/settings/GlobalSettings;",
            "Landroid/database/ContentObserver;",
            "Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mItemsList:Ljava/util/ArrayList;

    const/4 p3, 0x6

    new-array p3, p3, [Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mDndMenuOptions:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mDndTile:Lcom/android/systemui/qs/tiles/DndTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    iput-object p6, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mSettingsObserver:Landroid/database/ContentObserver;

    iput-object p7, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    return-void
.end method


# virtual methods
.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const/16 v2, 0x3c

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object v5, v1, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0d03b4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a0701

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mSummary:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0d03a8

    invoke-virtual {v5, v6, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v0, 0x7f0a03a6

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mSummary:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    iget-object v6, v1, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v6}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserverSync(Landroid/database/ContentObserver;)V

    iget-object v6, v1, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mDndTile:Lcom/android/systemui/qs/tiles/DndTile;

    iget-object v0, v6, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v0, :cond_0

    iget-object v8, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v8, :cond_0

    move v8, v4

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    if-eqz v8, :cond_1

    iget-object v9, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v9, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v9, :cond_1

    move v9, v4

    goto :goto_1

    :cond_1
    move v9, v7

    :goto_1
    if-eqz v8, :cond_2

    iget-object v10, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v10, v10, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v10, :cond_2

    invoke-static {v10}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v4

    goto :goto_2

    :cond_2
    move v10, v7

    :goto_2
    if-eqz v0, :cond_4

    iget-object v11, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v11, :cond_4

    iget-object v11, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v12}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v12

    if-eqz v12, :cond_3

    move v11, v4

    goto :goto_3

    :cond_4
    move v11, v7

    :goto_3
    const-string/jumbo v12, "updateZenModeConfigState,isTurnOnAsManualRule: "

    const-string v13, ",isDurationForever: "

    const-string v14, ",isDurationTime: "

    invoke-static {v12, v13, v14, v8, v9}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ",isAutomaticRule:"

    const-string v13, ",mIsSettingsUpdated:"

    invoke-static {v8, v10, v12, v11, v13}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean v12, v6, Lcom/android/systemui/qs/tiles/DndTile;->mIsSettingsUpdated:Z

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v12, v6, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    if-eqz v9, :cond_8

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v6, v0}, Lcom/android/systemui/qs/tiles/DndTile;->getApplicationNameFromPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f131105

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v2, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    :cond_5
    move v14, v7

    goto/16 :goto_15

    :cond_6
    iget-boolean v0, v6, Lcom/android/systemui/qs/tiles/DndTile;->mIsSettingsUpdated:Z

    if-eqz v0, :cond_7

    :goto_4
    const/4 v14, 0x5

    goto/16 :goto_15

    :cond_7
    const/4 v14, 0x4

    goto/16 :goto_15

    :cond_8
    const/4 v9, -0x1

    const v15, 0x7f131097

    const v14, 0x7f131096

    if-eqz v10, :cond_1e

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v10

    invoke-static {v10, v11}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    move-result v0

    iget-object v8, v6, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getUserId()I

    move-result v12

    invoke-static {v8, v10, v11, v0, v12}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v0, :cond_9

    iget-object v10, v6, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v14, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_9
    iget-object v10, v6, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v15, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_5
    iget-boolean v11, v6, Lcom/android/systemui/qs/tiles/DndTile;->mIsSettingsUpdated:Z

    if-eqz v11, :cond_a

    move-object v13, v10

    goto :goto_4

    :cond_a
    iget v11, v6, Lcom/android/systemui/qs/tiles/DndTile;->mLastDndDurationSelected:I

    if-ne v11, v9, :cond_1d

    check-cast v8, Ljava/lang/String;

    :try_start_0
    iget-object v10, v6, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getUserId()I

    move-result v11

    invoke-static {v10, v11}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v10

    const-string v11, "pm"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    iget-object v12, v6, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getUserId()I

    move-result v9

    invoke-static {v12, v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v9

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const/16 v16, 0x3

    const/16 v17, 0x0

    if-eqz v12, :cond_b

    goto :goto_a

    :cond_b
    const/16 v12, 0x3a

    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-lt v12, v4, :cond_11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v15, v18, -0x1

    if-lt v12, v15, :cond_c

    goto :goto_a

    :cond_c
    if-nez v9, :cond_e

    add-int/lit8 v9, v12, -0x2

    if-ltz v9, :cond_d

    goto :goto_6

    :cond_d
    add-int/lit8 v9, v12, -0x1

    goto :goto_7

    :cond_e
    :goto_6
    add-int/lit8 v9, v12, -0x2

    :goto_7
    invoke-virtual {v8, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v15, :cond_f

    :catch_0
    const/4 v9, -0x1

    goto :goto_8

    :cond_f
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_8
    add-int/lit8 v15, v12, 0x1

    add-int/lit8 v12, v12, 0x3

    :try_start_2
    invoke-virtual {v8, v15, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v15, :cond_10

    :catch_1
    const/4 v12, -0x1

    goto :goto_9

    :cond_10
    :try_start_3
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_9
    if-ltz v9, :cond_11

    const/16 v15, 0x18

    if-ge v9, v15, :cond_11

    if-ltz v12, :cond_11

    if-ge v12, v2, :cond_11

    :try_start_4
    new-array v15, v3, [I

    aput v9, v15, v7

    aput v12, v15, v4

    move-object/from16 v17, v15

    :cond_11
    :goto_a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    const/16 v12, 0xb

    invoke-virtual {v9, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/16 v15, 0xc

    invoke-virtual {v9, v15}, Ljava/util/Calendar;->get(I)I

    move-result v9

    mul-int/2addr v12, v2

    add-int/2addr v12, v9

    if-eqz v17, :cond_18

    aget v8, v17, v7

    mul-int/lit8 v9, v8, 0x3c

    aget v15, v17, v4

    add-int/2addr v9, v15

    if-nez v0, :cond_12

    add-int/lit16 v9, v9, 0x5a0

    :cond_12
    if-ge v9, v12, :cond_13

    if-nez v10, :cond_13

    add-int/lit16 v9, v9, 0x2d0

    :cond_13
    sub-int/2addr v9, v12

    div-int/lit8 v2, v9, 0x3c
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const/16 v9, 0xa

    const-string v12, "0"

    if-ge v8, v9, :cond_14

    if-eqz v10, :cond_14

    move-object v8, v12

    goto :goto_b

    :cond_14
    move-object v8, v13

    :goto_b
    :try_start_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v17, v7

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v17, v4

    if-ge v8, v9, :cond_15

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v9, v17, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_c

    :catch_2
    move-exception v0

    goto :goto_11

    :cond_15
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_c
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v10, :cond_17

    if-eqz v11, :cond_16

    const-string v13, " pm"

    goto :goto_d

    :cond_16
    const-string v13, " am"

    :cond_17
    :goto_d
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_e

    :cond_18
    const/4 v2, 0x4

    :goto_e
    if-eqz v0, :cond_19

    iget-object v0, v6, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v14, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSummary:Ljava/lang/String;

    goto :goto_f

    :cond_19
    iget-object v0, v6, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const v9, 0x7f131097

    invoke-virtual {v0, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSummary:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :goto_f
    if-ge v2, v3, :cond_1a

    move v14, v4

    goto :goto_12

    :cond_1a
    const/4 v8, 0x4

    if-lt v2, v3, :cond_1b

    if-ge v2, v8, :cond_1b

    move v14, v3

    goto :goto_12

    :cond_1b
    if-ne v2, v8, :cond_1c

    move/from16 v14, v16

    goto :goto_12

    :cond_1c
    :goto_10
    const/4 v14, 0x5

    goto :goto_12

    :goto_11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10

    :goto_12
    iget-object v0, v6, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSummary:Ljava/lang/String;

    move-object v13, v0

    goto/16 :goto_15

    :cond_1d
    move-object v13, v10

    move v14, v11

    goto/16 :goto_15

    :cond_1e
    if-eqz v11, :cond_5

    const/4 v2, -0x1

    iput v2, v6, Lcom/android/systemui/qs/tiles/DndTile;->mLastDndDurationSelected:I

    iget-object v2, v6, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v7}, Landroid/service/notification/ZenModeConfig;->getDescription(Landroid/content/Context;ZLandroid/service/notification/ZenModeConfig;Z)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v9}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v10

    if-eqz v10, :cond_21

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_21

    iget-object v10, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    iget-object v0, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v0

    const v10, 0x7f131098

    const-string v11, "\n"

    if-eqz v0, :cond_20

    iget-object v0, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toScheduleCalendar(Landroid/net/Uri;)Landroid/service/notification/ScheduleCalendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Landroid/service/notification/ScheduleCalendar;->getNextChangeTime(J)J

    move-result-wide v12

    iget-object v0, v6, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v9

    invoke-static {v0, v12, v13, v4, v9}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v12, v13}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    move-result v9

    if-eqz v9, :cond_1f

    iget-object v9, v6, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v14, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :cond_1f
    iget-object v9, v6, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v12, 0x7f131097

    invoke-virtual {v9, v12, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v10, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    :cond_20
    iget-object v0, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/systemui/qs/tiles/DndTile;->getApplicationNameFromPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v6, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    :cond_21
    const v12, 0x7f131097

    goto/16 :goto_13

    :goto_15
    iput-object v13, v6, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSummary:Ljava/lang/String;

    iput v14, v6, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSelectedItem:I

    iget-object v0, v1, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_22

    iget-object v2, v1, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mDndTile:Lcom/android/systemui/qs/tiles/DndTile;

    iget-object v2, v2, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSummary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_22
    const v0, 0x7f0a03a5

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mMenuOptions:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/qs/DNDDetailItems;->$r8$clinit:I

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v6, 0x7f0d03aa

    invoke-virtual {v2, v6, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/DNDDetailItems;

    iput-object v0, v1, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mDNDActivationItems:Lcom/android/systemui/qs/DNDDetailItems;

    iget-object v2, v1, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mMenuOptions:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v0, v7

    :goto_16
    const/4 v2, 0x6

    if-ge v0, v2, :cond_26

    if-nez v0, :cond_23

    iget-object v2, v1, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f1310bc

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_17
    move-object v6, v2

    const/4 v2, 0x4

    goto :goto_18

    :cond_23
    const/4 v2, 0x4

    if-ge v0, v2, :cond_24

    add-int/lit8 v2, v0, -0x1

    int-to-double v8, v2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-int v2, v8

    iget-object v6, v1, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const v9, 0x7f11001c

    invoke-virtual {v6, v9, v2, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    :cond_24
    if-ne v0, v2, :cond_25

    iget-object v6, v1, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f1310be

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_18

    :cond_25
    iget-object v6, v1, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f1310bd

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_18
    iget-object v8, v1, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mDndMenuOptions:[Ljava/lang/String;

    aput-object v6, v8, v0

    add-int/2addr v0, v4

    goto :goto_16

    :cond_26
    invoke-virtual {v1, v7}, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->updateDndActivationItems(Z)V

    iget-object v0, v1, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mDNDActivationItems:Lcom/android/systemui/qs/DNDDetailItems;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "DNDDetailItems.Do not disturb"

    iput-object v2, v0, Lcom/android/systemui/qs/DNDDetailItems;->mTag:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mDNDActivationItems:Lcom/android/systemui/qs/DNDDetailItems;

    iget-object v2, v0, Lcom/android/systemui/qs/DNDDetailItems;->mHandler:Lcom/android/systemui/qs/DNDDetailItems$H;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v0, Lcom/android/systemui/qs/DNDDetailItems;->mHandler:Lcom/android/systemui/qs/DNDDetailItems$H;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object v5
.end method

.method public final getDetailAdapterSummary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mDndTile:Lcom/android/systemui/qs/tiles/DndTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSummary:Ljava/lang/String;

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x95

    return p0
.end method

.method public final getSettingsIntent()Landroid/content/Intent;
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/tiles/DndTile;->DND_SETTINGS:Landroid/content/Intent;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f130eee

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getToggleState()Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final setToggleState(Z)V
    .locals 0

    return-void
.end method

.method public final updateDetailItem(Lcom/android/systemui/qs/DNDDetailItems$Item;Z)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "sec"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    const/16 v4, 0x258

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    const/16 v4, 0x190

    invoke-static {v1, v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v1

    const v4, 0x7f060131

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const v6, 0x7f060132

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const v7, 0x7f060133

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iget-object v8, p1, Lcom/android/systemui/qs/DNDDetailItems$Item;->ctv:Landroid/widget/CheckedTextView;

    iget-object p1, p1, Lcom/android/systemui/qs/DNDDetailItems$Item;->stv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x8

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    if-eqz v8, :cond_7

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_0
    invoke-virtual {v8, p2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    if-eqz p2, :cond_2

    move v7, v4

    :cond_2
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move v4, v6

    :goto_1
    invoke-virtual {v8, v4}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f08076a

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p1, v5, v5, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v4, 0x0

    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    move-object v6, p1

    goto :goto_2

    :cond_4
    move-object v6, v4

    :goto_2
    if-eqz p2, :cond_5

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move-object p1, v4

    :goto_3
    invoke-virtual {v8, v6, v4, p1, v4}, Landroid/widget/CheckedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_6

    goto :goto_4

    :cond_6
    move-object v3, v1

    :goto_4
    invoke-virtual {v8, v3}, Landroid/widget/CheckedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mDNDActivationItems:Lcom/android/systemui/qs/DNDDetailItems;

    iget-object p1, p0, Lcom/android/systemui/qs/DNDDetailItems;->mAdapter:Lcom/android/systemui/qs/DNDDetailItems$Adapter;

    invoke-virtual {p1}, Lcom/android/systemui/qs/DNDDetailItems$Adapter;->getCount()I

    move-result p1

    if-lez p1, :cond_8

    goto :goto_5

    :cond_8
    move v2, v5

    :goto_5
    iget-object p1, p0, Lcom/android/systemui/qs/DNDDetailItems;->mHandler:Lcom/android/systemui/qs/DNDDetailItems$H;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/DNDDetailItems;->mHandler:Lcom/android/systemui/qs/DNDDetailItems$H;

    invoke-virtual {p0, p2, v2, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final updateDndActivationItems(Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mDNDActivationItems:Lcom/android/systemui/qs/DNDDetailItems;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mDndTile:Lcom/android/systemui/qs/tiles/DndTile;

    iget v1, v1, Lcom/android/systemui/qs/tiles/DndTile;->mDndMenuSelectedItem:I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mDndMenuOptions:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    const/4 v6, 0x2

    if-eq v1, v6, :cond_2

    if-eq v1, v3, :cond_2

    const/4 v6, 0x4

    if-eq v1, v6, :cond_1

    const/4 v6, 0x5

    if-eq v1, v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/DNDDetailItems;->updateQSPanelOptions(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/DNDDetailItems;->updateQSPanelOptions(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/DNDDetailItems;->updateQSPanelOptions(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/DNDDetailItems;->updateQSPanelOptions(I)V

    :goto_0
    iput-object v2, v0, Lcom/android/systemui/qs/DNDDetailItems;->mSelectedMenu:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mDNDActivationItems:Lcom/android/systemui/qs/DNDDetailItems;

    iget-object v1, v0, Lcom/android/systemui/qs/DNDDetailItems;->mAdapter:Lcom/android/systemui/qs/DNDDetailItems$Adapter;

    invoke-virtual {v1}, Lcom/android/systemui/qs/DNDDetailItems$Adapter;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    move v1, v5

    :goto_1
    iget-object v2, v0, Lcom/android/systemui/qs/DNDDetailItems;->mHandler:Lcom/android/systemui/qs/DNDDetailItems$H;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v0, Lcom/android/systemui/qs/DNDDetailItems;->mHandler:Lcom/android/systemui/qs/DNDDetailItems$H;

    invoke-virtual {v0, v3, v1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    new-instance v0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mDNDActivationItems:Lcom/android/systemui/qs/DNDDetailItems;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/DndDetailAdapter;->mItemsList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/systemui/qs/DNDDetailItems$Item;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/systemui/qs/DNDDetailItems$Item;

    iget-object v0, p1, Lcom/android/systemui/qs/DNDDetailItems;->mHandler:Lcom/android/systemui/qs/DNDDetailItems$H;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p1, Lcom/android/systemui/qs/DNDDetailItems;->mHandler:Lcom/android/systemui/qs/DNDDetailItems$H;

    invoke-virtual {p1, v4, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_2
    return-void
.end method
