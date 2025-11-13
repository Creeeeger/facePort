.class public final Lcom/android/settingslib/notification/EnableZenModeDialog;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field protected static final COUNTDOWN_ALARM_CONDITION_INDEX:I = 0x2

.field protected static final COUNTDOWN_CONDITION_INDEX:I = 0x1

.field public static final DEBUG:Z

.field public static final DEFAULT_BUCKET_INDEX:I

.field protected static final FOREVER_CONDITION_INDEX:I

.field public static final MAX_BUCKET_MINUTES:I

.field public static final MINUTE_BUCKETS:[I

.field public static final MIN_BUCKET_MINUTES:I


# instance fields
.field public final MAX_MANUAL_DND_OPTIONS:I

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mBucketIndex:I

.field public final mCancelIsNeutral:Z

.field protected mContext:Landroid/content/Context;

.field protected mForeverId:Landroid/net/Uri;

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field public final mMetricsLogger:Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;

.field protected mNotificationManager:Landroid/app/NotificationManager;

.field public final mThemeResId:I

.field public mUserId:I

.field protected mZenAlarmWarning:Landroid/widget/TextView;

.field public mZenRadioGroup:Landroid/widget/RadioGroup;

.field protected mZenRadioGroupContent:Landroid/widget/LinearLayout;


# direct methods
.method public static -$$Nest$monClickTimeButton(Lcom/android/settingslib/notification/EnableZenModeDialog;Landroid/view/View;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;ZI)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    iget-object v3, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mMetricsLogger:Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;

    invoke-virtual {v3, v2}, Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;->logOnClickTimeButton(Z)V

    sget-object v3, Lcom/android/settingslib/notification/EnableZenModeDialog;->MINUTE_BUCKETS:[I

    array-length v4, v3

    iget v5, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    if-ne v5, v8, :cond_7

    iget-object v5, v1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    const/4 v8, 0x0

    if-eqz v5, :cond_0

    iget-object v5, v5, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    move-object v5, v8

    :goto_0
    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move v5, v6

    :goto_1
    if-ge v5, v4, :cond_5

    if-eqz v2, :cond_1

    move v13, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v13, v4, -0x1

    sub-int/2addr v13, v5

    :goto_2
    aget v17, v3, v13

    const v14, 0xea60

    mul-int v14, v14, v17

    int-to-long v14, v14

    add-long v15, v11, v14

    if-eqz v2, :cond_2

    cmp-long v14, v15, v9

    if-gtz v14, :cond_3

    :cond_2
    if-nez v2, :cond_4

    cmp-long v14, v15, v9

    if-gez v14, :cond_4

    :cond_3
    iput v13, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    iget-object v14, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v18

    const/16 v19, 0x0

    invoke-static/range {v14 .. v19}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v8

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    if-nez v8, :cond_6

    sget v2, Lcom/android/settingslib/notification/EnableZenModeDialog;->DEFAULT_BUCKET_INDEX:I

    iput v2, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    iget-object v4, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    aget v2, v3, v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {v4, v2, v3}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v8

    :cond_6
    :goto_4
    move-object/from16 v2, p1

    move/from16 v3, p4

    goto :goto_5

    :cond_7
    sub-int/2addr v4, v7

    if-eqz v2, :cond_8

    move v8, v7

    :cond_8
    add-int/2addr v5, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    iget-object v4, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    aget v2, v3, v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {v4, v2, v3}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v8

    goto :goto_4

    :goto_5
    invoke-virtual {v0, v8, v2, v3}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    iget-object v2, v1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/notification/EnableZenModeDialog;->computeAlarmWarningText(Landroid/service/notification/Condition;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenAlarmWarning:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenAlarmWarning:Landroid/widget/TextView;

    if-nez v2, :cond_9

    const/16 v6, 0x8

    :cond_9
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "EnableZenModeDialog"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->DEBUG:Z

    sget-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    sput-object v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->MINUTE_BUCKETS:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    sput v1, Lcom/android/settingslib/notification/EnableZenModeDialog;->MIN_BUCKET_MINUTES:I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    sput v1, Lcom/android/settingslib/notification/EnableZenModeDialog;->MAX_BUCKET_MINUTES:I

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    sput v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->DEFAULT_BUCKET_INDEX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/notification/EnableZenModeDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;

    invoke-direct {v0, p1}, Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/settingslib/notification/EnableZenModeDialog;-><init>(Landroid/content/Context;IZLcom/android/settingslib/notification/ZenModeDialogMetricsLogger;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLcom/android/settingslib/notification/ZenModeDialogMetricsLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->MAX_MANUAL_DND_OPTIONS:I

    iput-object p1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mThemeResId:I

    iput-boolean p3, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mCancelIsNeutral:Z

    iput-object p4, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mMetricsLogger:Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;

    return-void
.end method


# virtual methods
.method public bind(Landroid/service/notification/Condition;Landroid/view/View;I)V
    .locals 10

    if-eqz p1, :cond_14

    iget v0, p1, Landroid/service/notification/Condition;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    invoke-direct {v3}, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;-><init>()V

    :goto_1
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, v3, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    if-nez v4, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, p3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, v3, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    :cond_3
    iput-object p1, v3, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    iget-object v4, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    sget-boolean v6, Lcom/android/settingslib/notification/EnableZenModeDialog;->DEBUG:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bind i="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v7, p2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " first="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " condition="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EnableZenModeDialog"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v5, v3, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v5, v3, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    new-instance v6, Lcom/android/settingslib/notification/EnableZenModeDialog$2;

    invoke-direct {v6, p0, v3, v4}, Lcom/android/settingslib/notification/EnableZenModeDialog$2;-><init>(Lcom/android/settingslib/notification/EnableZenModeDialog;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v5, v3, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->lines:Landroid/view/View;

    if-nez v5, :cond_5

    const v5, 0x1020002

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->lines:Landroid/view/View;

    :cond_5
    iget-object v5, v3, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->line1:Landroid/widget/TextView;

    if-nez v5, :cond_6

    const v5, 0x1020014

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->line1:Landroid/widget/TextView;

    :cond_6
    iget-object v5, v3, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->line2:Landroid/widget/TextView;

    if-nez v5, :cond_7

    const v5, 0x1020015

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->line2:Landroid/widget/TextView;

    :cond_7
    iget-object v5, p1, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p1, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    goto :goto_3

    :cond_8
    iget-object v5, p1, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    :goto_3
    iget-object v6, p1, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->line1:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v3, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->line2:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_9
    iget-object v5, v3, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->line2:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, v3, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->line2:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v5, v3, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->lines:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v5, v3, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->lines:Landroid/view/View;

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v0, :cond_a

    move v0, v6

    goto :goto_5

    :cond_a
    const v0, 0x3ecccccd    # 0.4f

    :goto_5
    invoke-virtual {v5, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v3, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->lines:Landroid/view/View;

    new-instance v5, Lcom/android/settingslib/notification/EnableZenModeDialog$3;

    invoke-direct {v5, p0, v3}, Lcom/android/settingslib/notification/EnableZenModeDialog$3;-><init>(Lcom/android/settingslib/notification/EnableZenModeDialog;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v4

    const v0, 0x1020019

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v7, 0x102001a

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    if-ne p3, v2, :cond_11

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_11

    new-instance v8, Lcom/android/settingslib/notification/EnableZenModeDialog$4;

    invoke-direct {v8, p0, p2, v3, p3}, Lcom/android/settingslib/notification/EnableZenModeDialog$4;-><init>(Lcom/android/settingslib/notification/EnableZenModeDialog;Landroid/view/View;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;I)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lcom/android/settingslib/notification/EnableZenModeDialog$5;

    invoke-direct {v8, p0, p2, v3, p3}, Lcom/android/settingslib/notification/EnableZenModeDialog$5;-><init>(Lcom/android/settingslib/notification/EnableZenModeDialog;Landroid/view/View;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;I)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget p3, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    const/4 v3, -0x1

    if-le p3, v3, :cond_d

    if-lez p3, :cond_b

    move p1, v2

    goto :goto_6

    :cond_b
    move p1, v1

    :goto_6
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    sget-object p1, Lcom/android/settingslib/notification/EnableZenModeDialog;->MINUTE_BUCKETS:[I

    array-length p1, p1

    sub-int/2addr p1, v2

    if-ge p0, p1, :cond_c

    goto :goto_7

    :cond_c
    move v2, v1

    :goto_7
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_9

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v4, v8

    sget p3, Lcom/android/settingslib/notification/EnableZenModeDialog;->MIN_BUCKET_MINUTES:I

    const v3, 0xea60

    mul-int/2addr p3, v3

    int-to-long v8, p3

    cmp-long p3, v4, v8

    if-lez p3, :cond_e

    move p3, v2

    goto :goto_8

    :cond_e
    move p3, v1

    :goto_8
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/settingslib/notification/EnableZenModeDialog;->MAX_BUCKET_MINUTES:I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {p0, p3, v3}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object p0

    iget-object p1, p1, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    iget-object p0, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v2

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_9
    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    if-eqz p0, :cond_f

    move p0, v6

    goto :goto_a

    :cond_f
    move p0, p1

    :goto_a
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {v7}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_b

    :cond_10
    move v6, p1

    :goto_b
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_c

    :cond_11
    if-eqz v0, :cond_12

    move-object p0, p2

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_12
    if-eqz v7, :cond_13

    move-object p0, p2

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_13
    :goto_c
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "condition must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bindConditions(Landroid/service/notification/Condition;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->forever()Landroid/service/notification/Condition;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bindGenericCountdown()V

    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getTimeUntilNextAlarmCondition()Landroid/service/notification/Condition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bindNextAlarm(Landroid/service/notification/Condition;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->isForever(Landroid/service/notification/Condition;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getConditionTagAt(I)Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    move-result-object p1

    iget-object p1, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bindGenericCountdown()V

    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getTimeUntilNextAlarmCondition()Landroid/service/notification/Condition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bindNextAlarm(Landroid/service/notification/Condition;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->isAlarm(Landroid/service/notification/Condition;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bindGenericCountdown()V

    invoke-virtual {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bindNextAlarm(Landroid/service/notification/Condition;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getConditionTagAt(I)Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    move-result-object p0

    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->isCountdown(Landroid/service/notification/Condition;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getTimeUntilNextAlarmCondition()Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bindNextAlarm(Landroid/service/notification/Condition;)V

    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    invoke-virtual {p0, v1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getConditionTagAt(I)Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    move-result-object p0

    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Invalid manual condition: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EnableZenModeDialog"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public bindGenericCountdown()V
    .locals 3

    sget v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->DEFAULT_BUCKET_INDEX:I

    iput v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    iget-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/settingslib/notification/EnableZenModeDialog;->MINUTE_BUCKETS:[I

    aget v0, v2, v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v1, v0, v2}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    return-void
.end method

.method public bindNextAlarm(Landroid/service/notification/Condition;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p0, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public computeAlarmWarningText(Landroid/service/notification/Condition;)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mAlarmManager:Landroid/app/AlarmManager;

    iget v4, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mUserId:I

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v4

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    :goto_0
    cmp-long v0, v4, v2

    if-gez v0, :cond_2

    return-object v1

    :cond_2
    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->isForever(Landroid/service/notification/Condition;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v6

    cmp-long p1, v6, v2

    if-lez p1, :cond_4

    cmp-long p1, v4, v6

    if-gez p1, :cond_4

    const p1, 0x7f131595

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const p1, 0x7f131596

    :goto_2
    if-nez p1, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getTime(JJ)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final createDialog()Landroid/app/AlertDialog;
    .locals 8

    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/service/notification/Condition;->newId(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "forever"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mForeverId:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mUserId:I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mThemeResId:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1315a1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f13159b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/notification/EnableZenModeDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settingslib/notification/EnableZenModeDialog$1;-><init>(Lcom/android/settingslib/notification/EnableZenModeDialog;)V

    const v2, 0x7f13159d

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mCancelIsNeutral:Z

    const v2, 0x7f130352

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d0581

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a02ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    const v3, 0x7f0a0eea

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0a0eeb

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0ee5

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenAlarmWarning:Landroid/widget/TextView;

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    iget v4, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->MAX_MANUAL_DND_OPTIONS:I

    if-ge v3, v4, :cond_2

    iget-object v5, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0d0580

    iget-object v7, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v5, v6, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setId(I)V

    iget-object v5, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0d057e

    iget-object v7, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    add-int/2addr v4, v3

    invoke-virtual {v5, v4}, Landroid/view/View;->setId(I)V

    iget-object v4, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    :goto_2
    const/16 v4, 0x8

    if-ge v2, v3, :cond_3

    iget-object v5, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenAlarmWarning:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->forever()Landroid/service/notification/Condition;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bindConditions(Landroid/service/notification/Condition;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public final forever()Landroid/service/notification/Condition;
    .locals 9

    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/service/notification/Condition;->newId(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "forever"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/service/notification/Condition;

    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f13159e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0
.end method

.method public getConditionTagAt(I)Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    return-object p0
.end method

.method public getTime(JJ)Ljava/lang/String;
    .locals 2

    sub-long p3, p1, p3

    const-wide/32 v0, 0x5265c00

    cmp-long p3, p3, v0

    if-gez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget-object p4, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {p4, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p4

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    const-string p4, "Hm"

    goto :goto_1

    :cond_1
    const-string p4, "hma"

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    const-string p4, "EEEHm"

    goto :goto_1

    :cond_3
    const-string p4, "EEEhma"

    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p3, :cond_4

    const p2, 0x7f13019b

    goto :goto_2

    :cond_4
    const p2, 0x7f13019c

    :goto_2
    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimeUntilNextAlarmCondition()Landroid/service/notification/Condition;
    .locals 11

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xe

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v6, 0x5

    const/4 v7, 0x6

    invoke-virtual {v0, v6, v7}, Ljava/util/GregorianCalendar;->add(II)V

    iget-object v6, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mAlarmManager:Landroid/app/AlarmManager;

    iget v7, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mUserId:I

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v9

    goto :goto_0

    :cond_0
    move-wide v9, v7

    :goto_0
    cmp-long v6, v9, v7

    if-lez v6, :cond_1

    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-direct {v6}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v6, v9, v10}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    invoke-virtual {v6, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v6, v3, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v6, v4, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v6, v5, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {p0, v9, v10, v0}, Landroid/service/notification/ZenModeConfig;->toNextAlarmCondition(Landroid/content/Context;JI)Landroid/service/notification/Condition;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public isAlarm(Landroid/service/notification/Condition;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->isValidCountdownToAlarmConditionId(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCountdown(Landroid/service/notification/Condition;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isForever(Landroid/service/notification/Condition;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mForeverId:Landroid/net/Uri;

    iget-object p1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
