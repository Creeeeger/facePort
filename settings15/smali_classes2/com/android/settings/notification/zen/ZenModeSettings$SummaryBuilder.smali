.class public final Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ALL_PRIORITY_CATEGORIES:[I


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->ALL_PRIORITY_CATEGORIES:[I

    return-void

    :array_0
    .array-data 4
        0x20
        0x40
        0x80
        0x4
        0x100
        0x2
        0x1
        0x8
        0x10
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z
    .locals 0

    iget p0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final getCallsSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const p1, 0x7f1438a2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f143868

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f143869

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledAutomaticRulesCount()I
    .locals 2

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AutomaticZenRule;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->ALL_PRIORITY_CATEGORIES:[I

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x9

    if-ge v4, v5, :cond_1a

    aget v5, v3, v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v8, p2

    invoke-interface {v8, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-static {v1, v5}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v7

    if-eqz v7, :cond_19

    const/16 v7, 0x8

    const/16 v9, 0x10

    if-ne v5, v9, :cond_0

    invoke-static {v1, v7}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v10

    if-eqz v10, :cond_0

    iget v10, v1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-nez v10, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v10, 0x2

    const/16 v11, 0x100

    if-ne v5, v11, :cond_1

    invoke-static {v1, v11}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v12

    if-eqz v12, :cond_1

    iget v12, v1, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    if-eq v12, v10, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v12, 0x20

    if-ne v5, v12, :cond_3

    if-eqz v6, :cond_2

    iget-object v5, v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f14382b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_2
    iget-object v5, v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f14382c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_3
    const/16 v12, 0x40

    if-ne v5, v12, :cond_5

    if-eqz v6, :cond_4

    iget-object v5, v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f143897

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_4
    iget-object v5, v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f143898

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_5
    const/16 v12, 0x80

    if-ne v5, v12, :cond_7

    if-eqz v6, :cond_6

    iget-object v5, v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f1438f8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_6
    iget-object v5, v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f1438f9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_7
    const/4 v12, 0x1

    const/4 v13, 0x4

    const v14, 0x7f143895

    const v15, 0x7f14388e

    const v9, 0x7f14388d

    if-ne v5, v13, :cond_a

    iget v5, v1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    if-nez v5, :cond_8

    iget-object v5, v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_8
    if-ne v5, v12, :cond_9

    iget-object v5, v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_9
    iget-object v5, v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_a
    if-ne v5, v11, :cond_c

    iget v11, v1, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    if-ne v11, v10, :cond_c

    if-eqz v6, :cond_b

    iget-object v5, v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f14388f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_b
    iget-object v5, v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f143890

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_c
    if-ne v5, v10, :cond_e

    if-eqz v6, :cond_d

    iget-object v5, v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f143887

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_d
    iget-object v5, v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f143888

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_e
    if-ne v5, v12, :cond_10

    if-eqz v6, :cond_f

    iget-object v5, v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f1428fe

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_f
    iget-object v5, v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f1438b0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_10
    if-ne v5, v7, :cond_16

    iget v5, v1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-nez v5, :cond_12

    if-eqz v6, :cond_11

    iget-object v5, v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_11
    iget-object v5, v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f14382f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_12
    if-ne v5, v12, :cond_14

    if-eqz v6, :cond_13

    iget-object v5, v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_13
    iget-object v5, v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f14386c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_14
    if-eqz v6, :cond_15

    iget-object v5, v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_15
    iget-object v5, v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f1438ed

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_16
    const/16 v7, 0x10

    if-ne v5, v7, :cond_18

    if-eqz v6, :cond_17

    iget-object v5, v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f1438b4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_17
    iget-object v5, v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f1438b5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_18
    const-string v5, ""

    :goto_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_1a
    return-object v2
.end method

.method public final getMessagesSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const p1, 0x7f1438a3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f143869

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
