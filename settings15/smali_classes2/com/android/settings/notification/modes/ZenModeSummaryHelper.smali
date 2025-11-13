.class public final Lcom/android/settings/notification/modes/ZenModeSummaryHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ALL_PRIORITY_CATEGORIES:[I


# instance fields
.field public final mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

.field public final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->ALL_PRIORITY_CATEGORIES:[I

    return-void

    :array_0
    .array-data 4
        0x5
        0x6
        0x7
        0x2
        0x8
        0x1
        0x0
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/modes/ZenModesBackend;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    return-void
.end method


# virtual methods
.method public final getBlockedEffectsSummary(Lcom/android/settings/notification/modes/ZenMode;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/notification/modes/ZenMode;->getPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v2

    move v3, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4, v1}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lcom/android/settings/notification/modes/ZenMode;->getPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p1

    move v2, v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3, v1}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1438c3

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1438c4

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1438c5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEnabledCategories(Landroid/service/notification/ZenPolicy;Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->ALL_PRIORITY_CATEGORIES:[I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/16 v6, 0x9

    if-ge v5, v6, :cond_1a

    aget v6, v3, v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v9, p2

    invoke-interface {v9, v8}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-virtual {v1, v6, v4}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v8

    if-eqz v8, :cond_19

    const/4 v8, 0x1

    const/4 v10, 0x3

    const/4 v11, 0x4

    if-ne v6, v11, :cond_0

    invoke-virtual {v1, v10, v4}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v12

    if-ne v12, v8, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v12, 0x2

    const/16 v13, 0x8

    if-ne v6, v13, :cond_1

    invoke-virtual {v1, v13, v4}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v14

    if-eq v14, v12, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v14, 0x5

    if-ne v6, v14, :cond_3

    if-eqz v7, :cond_2

    iget-object v6, v0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v7, 0x7f14382d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_2
    iget-object v6, v0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v7, 0x7f14382c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_3
    const/4 v14, 0x6

    if-ne v6, v14, :cond_5

    if-eqz v7, :cond_4

    iget-object v6, v0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v7, 0x7f143899

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_4
    iget-object v6, v0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v7, 0x7f143898

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_5
    const/4 v14, 0x7

    if-ne v6, v14, :cond_7

    if-eqz v7, :cond_6

    iget-object v6, v0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v7, 0x7f1438fa

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_6
    iget-object v6, v0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v7, 0x7f1438f9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_7
    const v14, 0x7f143895

    const v15, 0x7f14388e

    const v4, 0x7f14388d

    if-ne v6, v12, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v6

    if-ne v6, v8, :cond_8

    iget-object v6, v0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v4

    if-ne v4, v12, :cond_9

    iget-object v4, v0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_9
    iget-object v4, v0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_a
    if-ne v6, v13, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v13

    if-ne v13, v12, :cond_c

    if-eqz v7, :cond_b

    iget-object v4, v0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f14388f

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_b
    iget-object v4, v0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f143890

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_c
    if-ne v6, v8, :cond_e

    if-eqz v7, :cond_d

    iget-object v4, v0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f143889

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_d
    iget-object v4, v0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f143888

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_e
    if-nez v6, :cond_10

    if-eqz v7, :cond_f

    iget-object v4, v0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f1438b1

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_f
    iget-object v4, v0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f1438b0

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_10
    if-ne v6, v10, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v6

    if-ne v6, v8, :cond_12

    if-eqz v7, :cond_11

    iget-object v6, v0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_11
    iget-object v4, v0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f14382f

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v4

    if-ne v4, v12, :cond_14

    if-eqz v7, :cond_13

    iget-object v4, v0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_13
    iget-object v4, v0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f14386c

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_14
    if-eqz v7, :cond_15

    iget-object v4, v0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_15
    iget-object v4, v0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f1438ed

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_16
    if-ne v6, v11, :cond_18

    if-eqz v7, :cond_17

    iget-object v4, v0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f1438b4

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_17
    iget-object v4, v0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f1438b5

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_18
    const-string v6, ""

    :goto_1
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    :goto_2
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_1a
    return-object v2
.end method
