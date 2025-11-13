.class public final Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final sAccessibilityActions:[I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDefaultOption:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mParent:Landroid/view/ViewGroup;

.field public final mParser:Landroid/util/KeyValueListParser;

.field public mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

.field public mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

.field public mSnoozeOptionContainer:Landroid/view/ViewGroup;

.field public mSnoozeOptions:Ljava/util/List;

.field public mSnoozing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v0, 0x7f0a009b

    const v1, 0x7f0a009c

    const v2, 0x7f0a009e

    const v3, 0x7f0a009d

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->sAccessibilityActions:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/util/KeyValueListParser;

    const/16 v0, 0x2c

    invoke-direct {p1, v0}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mParser:Landroid/util/KeyValueListParser;

    return-void
.end method


# virtual methods
.method public final getDefaultSnoozeOptions()Ljava/util/ArrayList;
    .locals 17

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_snooze_options"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v2, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "NotificationSnooze"

    const-string v2, "Bad snooze constants"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mParser:Landroid/util/KeyValueListParser;

    const v2, 0x7f0b002c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const-string v3, "default"

    invoke-virtual {v1, v3, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v9

    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mParser:Landroid/util/KeyValueListParser;

    const v2, 0x7f030044

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const-string v2, "options_array"

    invoke-virtual {v1, v2, v0}, Landroid/util/KeyValueListParser;->getIntArray(Ljava/lang/String;[I)[I

    move-result-object v10

    array-length v0, v10

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x0

    move v13, v12

    :goto_1
    if-ge v13, v11, :cond_6

    aget v14, v10, v13

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->sAccessibilityActions:[I

    aget v0, v0, v13

    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x3c

    const/4 v3, 0x1

    if-lt v14, v2, :cond_0

    move v2, v3

    goto :goto_2

    :cond_0
    move v2, v12

    :goto_2
    if-eqz v2, :cond_1

    const v4, 0x7f131271

    goto :goto_3

    :cond_1
    const v4, 0x7f131272

    :goto_3
    if-eqz v2, :cond_2

    div-int/lit8 v2, v14, 0x3c

    goto :goto_4

    :cond_2
    move v2, v14

    :goto_4
    iget-object v5, v7, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v4, v2}, Lcom/android/systemui/util/PluralMessageFormaterKt;->icuMessageFormat(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f131278

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v6, v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    new-instance v15, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;

    const/4 v2, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move v3, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;-><init>(Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_5

    :cond_3
    new-instance v15, Landroid/text/SpannableString;

    invoke-direct {v15, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v15, v1, v0, v2, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v16, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move v3, v14

    move-object v5, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;-><init>(Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    move-object/from16 v15, v16

    :goto_5
    if-eqz v13, :cond_4

    if-ne v14, v9, :cond_5

    :cond_4
    iput-object v15, v7, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mDefaultOption:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;

    :cond_5
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    :cond_6
    return-object v8
.end method

.method public final logOptionSelection(ILcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptions:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getMinutesToSnoozeFor()I

    move-result p2

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance p2, Landroid/metrics/LogMaker;

    invoke-direct {p2, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v0, 0x474

    invoke-virtual {p1, v0, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/16 v0, 0x473

    invoke-virtual {p1, v0, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public final setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    if-eqz p2, :cond_0

    const/16 p2, 0x472

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->logOptionSelection(ILcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptions:Ljava/util/List;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozing:Z

    if-eqz p1, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptions:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_5

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    invoke-virtual {p2}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
