.class public Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/ZenModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SummaryBuilder"
.end annotation


# static fields
.field private static final ALL_PRIORITY_CATEGORIES:[I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$X2V0wrsnrfKvaIzsMaYV4b0kEm0(Ljava/lang/Integer;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->lambda$getCallsSettingSummary$1(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$cJHlRy7SFTBEdznxaTr_02yeBRU(Ljava/lang/Integer;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->lambda$getMessagesSettingSummary$2(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yrG1p8e8ZfsdipetDNHiEOhgzoA(Ljava/lang/Integer;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->lambda$semGetSoundSummary$3(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 230
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

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getCategory(ILandroid/app/NotificationManager$Policy;Z)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_0

    .line 506
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_alarms:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 508
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_alarms_list:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v0, 0x40

    if-ne p1, v0, :cond_3

    if-eqz p3, :cond_2

    .line 512
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_media_sound_summary:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 514
    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_media_list:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 v0, 0x80

    if-ne p1, v0, :cond_5

    if-eqz p3, :cond_4

    .line 518
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_system:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 520
    :cond_4
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_system_list:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    .line 523
    iget p1, p2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    if-nez p1, :cond_6

    .line 524
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_from_anyone:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    if-ne p1, v1, :cond_7

    .line 526
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_from_contacts:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 528
    :cond_7
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_from_starred:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const/16 v0, 0x100

    const/4 v2, 0x2

    if-ne p1, v0, :cond_a

    .line 530
    iget v0, p2, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    if-ne v0, v2, :cond_a

    if-eqz p3, :cond_9

    .line 534
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_from_important_conversations:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 536
    :cond_9
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_from_important_conversations_second:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    if-ne p1, v2, :cond_c

    if-eqz p3, :cond_b

    .line 541
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_events:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 543
    :cond_b
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_events_list:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    if-ne p1, v1, :cond_e

    if-eqz p3, :cond_d

    .line 548
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->sec_zen_mode_reminders:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 552
    :cond_d
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_reminders_list:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    const/16 v0, 0x8

    if-ne p1, v0, :cond_14

    .line 555
    iget p1, p2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-nez p1, :cond_10

    if-eqz p3, :cond_f

    .line 557
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_from_anyone:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 559
    :cond_f
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_all_callers:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    if-ne p1, v1, :cond_12

    if-eqz p3, :cond_11

    .line 562
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_from_contacts:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 564
    :cond_11
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_contacts_callers:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    if-eqz p3, :cond_13

    .line 567
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_from_starred:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 569
    :cond_13
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_starred_callers:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    const/16 p2, 0x10

    if-ne p1, p2, :cond_16

    if-eqz p3, :cond_15

    .line 573
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_repeat_callers:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 575
    :cond_15
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_repeat_callers_list:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const-string p0, ""

    return-object p0
.end method

.method private getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager$Policy;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 474
    sget-object v1, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->ALL_PRIORITY_CATEGORIES:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget v5, v1, v4

    if-eqz p3, :cond_0

    .line 475
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v3

    .line 476
    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {p0, p1, v5}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x10

    if-ne v5, v7, :cond_1

    const/16 v7, 0x8

    .line 478
    invoke-direct {p0, p1, v7}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    const/16 v7, 0x100

    if-ne v5, v7, :cond_2

    .line 486
    invoke-direct {p0, p1, v7}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, p1, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    goto :goto_2

    .line 492
    :cond_2
    invoke-direct {p0, v5, p1, v6}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->getCategory(ILandroid/app/NotificationManager$Policy;Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z
    .locals 0

    .line 499
    iget p0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr p0, p2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getCallsSettingSummary$1(Ljava/lang/Integer;)Z
    .locals 2

    .line 290
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v1, v0, :cond_1

    const/16 v0, 0x10

    .line 291
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v0, p0, :cond_0

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

.method private static synthetic lambda$getMessagesSettingSummary$2(Ljava/lang/Integer;)Z
    .locals 2

    .line 307
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-eq v1, v0, :cond_1

    const/16 v0, 0x100

    .line 308
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v0, p0, :cond_0

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

.method private static synthetic lambda$semGetSoundSummary$3(Ljava/lang/Integer;)Z
    .locals 3

    .line 427
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x20

    if-eq v2, v0, :cond_1

    const/16 v0, 0x40

    .line 428
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v0, v2, :cond_1

    const/16 v0, 0x80

    .line 429
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 430
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    .line 431
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method getBlockedEffectsSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->zen_mode_restrict_notifications_hide_summary:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getCallsSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 5

    .line 289
    new-instance v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;Z)Ljava/util/List;

    move-result-object p1

    .line 292
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_none_calls:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 296
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->zen_mode_calls_summary_one:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 297
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v2

    .line 296
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 299
    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->zen_mode_calls_summary_two:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 300
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    .line 301
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v3, v1

    .line 299
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getEnabledAutomaticRulesCount()I
    .locals 2

    .line 458
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    .line 459
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 461
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

    .line 462
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AutomaticZenRule;

    if-eqz v1, :cond_0

    .line 463
    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method getMessagesSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 5

    .line 306
    new-instance v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder$$ExternalSyntheticLambda1;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;Z)Ljava/util/List;

    move-result-object p1

    .line 309
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_none_messages:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 313
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 317
    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->zen_mode_calls_summary_two:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 318
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    .line 319
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v3, v1

    .line 317
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getPeopleSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 8

    .line 394
    invoke-virtual {p1}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object v0

    .line 395
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 396
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 397
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 398
    aget-object v4, v4, v2

    .line 399
    iget-object v5, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/android/settings/notification/zen/ZenUtil;->isContactDeleted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 400
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 403
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 404
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/notification/zen/ZenUtil;->setExceptionContact(Ljava/util/List;Landroid/content/Context;)V

    .line 405
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    .line 406
    invoke-direct {p0, p1, v1}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v3

    const/16 v4, 0x10

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-nez v3, :cond_2

    invoke-direct {p0, p1, v5}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x100

    invoke-direct {p0, p1, v3}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, p1, v4}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    move v3, v6

    goto :goto_1

    :cond_2
    move v3, v2

    .line 407
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-nez v7, :cond_3

    .line 408
    invoke-direct {p0, p1, v5}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    if-nez v7, :cond_3

    if-lez v0, :cond_3

    move v7, v6

    goto :goto_2

    :cond_3
    move v7, v2

    .line 410
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, p1, v5}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, p1, v4}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result p1

    if-nez p1, :cond_4

    move p1, v6

    goto :goto_3

    :cond_4
    move p1, v2

    :goto_3
    if-eqz v3, :cond_5

    .line 412
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->sec_zen_people_summery_allow_none:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    if-eqz v7, :cond_6

    .line 415
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->sec_zen_people_summery_allow_all:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    if-eqz p1, :cond_7

    if-lez v0, :cond_7

    .line 417
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$plurals;->sec_dnd_select_contact:I

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 419
    :cond_7
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->sec_zen_people_summery_allow_some:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public semGetSoundSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 7

    .line 426
    new-instance v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder$$ExternalSyntheticLambda2;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;Z)Ljava/util/List;

    move-result-object p1

    .line 433
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 435
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->sec_zen_people_summery_allow_none:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 437
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->sec_zen_people_summery_allow_all:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 439
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_zen_items_one_allowed:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 440
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v2

    .line 439
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 442
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_zen_items_two_allowed:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 443
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    .line 444
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v3, v1

    .line 442
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-le v0, v3, :cond_4

    .line 446
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->sec_zen_items_more_allowed:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 447
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    .line 448
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v5, v1

    sub-int/2addr v0, v3

    .line 449
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v3

    .line 446
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p0, ""

    return-object p0
.end method
