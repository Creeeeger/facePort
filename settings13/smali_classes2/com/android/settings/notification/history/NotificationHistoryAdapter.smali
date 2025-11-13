.class public Lcom/android/settings/notification/history/NotificationHistoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NotificationHistoryAdapter.java"

# interfaces
.implements Lcom/android/settings/notification/history/NotificationHistoryRecyclerView$OnItemSwipeDeleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/history/NotificationHistoryAdapter$OnItemDeletedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/notification/history/NotificationHistoryViewHolder;",
        ">;",
        "Lcom/android/settings/notification/history/NotificationHistoryRecyclerView$OnItemSwipeDeleteListener;"
    }
.end annotation


# static fields
.field private static final ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final HEIGHT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static TAG:Ljava/lang/String; = "NotiHistoryAdapter"


# instance fields
.field mCollapseAnimator:Landroid/animation/ValueAnimator;

.field mExpandAnimator:Landroid/animation/ValueAnimator;

.field mFadeInAnimator:Landroid/animation/ValueAnimator;

.field private mListener:Lcom/android/settings/notification/history/NotificationHistoryAdapter$OnItemDeletedListener;

.field private mNm:Landroid/app/INotificationManager;

.field private mRecyclerView:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

.field private mTotalHeight:I

.field private mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/NotificationHistory$HistoricalNotification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$10eJAcJ8Rdtk9OBGlmThzDeTNPg(Landroid/view/View$OnClickListener;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->lambda$onBindViewHolder$1(Landroid/view/View$OnClickListener;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HFLtNxtZUHTjiU1fBju4xTRK9to(Lcom/android/settings/notification/history/NotificationHistoryAdapter;Landroid/app/NotificationHistory$HistoricalNotification;ILcom/android/settings/notification/history/NotificationHistoryViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->lambda$onBindViewHolder$0(Landroid/app/NotificationHistory$HistoricalNotification;ILcom/android/settings/notification/history/NotificationHistoryViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hgzoS40ifa-gaRlEf6vOgLPiE4c(Lcom/android/settings/notification/history/NotificationHistoryAdapter;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->lambda$setAnimators$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jWb4WXGbftn3Zi1kr6hevXBQtRE(Lcom/android/settings/notification/history/NotificationHistoryAdapter;Landroid/view/ViewGroup$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->lambda$setAnimators$4(Landroid/view/ViewGroup$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$krqzPqnONTUR9gf2xiTbIAXHfmA(Lcom/android/settings/notification/history/NotificationHistoryAdapter;Landroid/view/ViewGroup$LayoutParams;ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->lambda$handleItemRemoval$6(Landroid/view/ViewGroup$LayoutParams;ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o7kdZzkrsHi6qca2LxWdSxPy368(Lcom/android/settings/notification/history/NotificationHistoryAdapter;Landroid/view/ViewGroup$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->lambda$setAnimators$3(Landroid/view/ViewGroup$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$okIKzSay2JOKFgItTlG1W99VAm0(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/app/NotificationHistory$HistoricalNotification;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->lambda$onRebuildComplete$2(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/app/NotificationHistory$HistoricalNotification;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecyclerView(Lcom/android/settings/notification/history/NotificationHistoryAdapter;)Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mRecyclerView:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmValues(Lcom/android/settings/notification/history/NotificationHistoryAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetAnimators(Lcom/android/settings/notification/history/NotificationHistoryAdapter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->setAnimators(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 68
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f19999a    # 0.6f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->HEIGHT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 69
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v3, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/INotificationManager;Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;Lcom/android/settings/notification/history/NotificationHistoryAdapter$OnItemDeletedListener;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mTotalHeight:I

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 78
    invoke-virtual {p2, p0}, Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;->setOnItemSwipeDeleteListener(Lcom/android/settings/notification/history/NotificationHistoryRecyclerView$OnItemSwipeDeleteListener;)V

    .line 79
    iput-object p2, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mRecyclerView:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    .line 80
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v0, Lcom/android/settings/notification/history/NotificationHistoryAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/history/NotificationHistoryAdapter$1;-><init>(Lcom/android/settings/notification/history/NotificationHistoryAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 87
    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mNm:Landroid/app/INotificationManager;

    .line 88
    iput-object p3, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mListener:Lcom/android/settings/notification/history/NotificationHistoryAdapter$OnItemDeletedListener;

    .line 89
    iput-object p4, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method private handleItemRemoval(I)V
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mRecyclerView:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 257
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mRecyclerView:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sub-int p1, v1, p1

    .line 259
    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mRecyclerView:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v1, v3, v0

    const/4 v0, 0x1

    aput p1, v3, v0

    .line 260
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 261
    new-instance v1, Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v2, p1}, Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/notification/history/NotificationHistoryAdapter;Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 269
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 271
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$handleItemRemoval$6(Landroid/view/ViewGroup$LayoutParams;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 262
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 263
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p3, p2, :cond_0

    const/4 p2, 0x1

    .line 265
    invoke-direct {p0, p2}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->setAnimators(Z)V

    .line 267
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mRecyclerView:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/app/NotificationHistory$HistoricalNotification;ILcom/android/settings/notification/history/NotificationHistoryViewHolder;Landroid/view/View;)V
    .locals 2

    .line 112
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p4, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_OLDER_ITEM_CLICK:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    .line 113
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getUid()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-interface {p0, p4, v0, v1, p2}, Lcom/android/internal/logging/UiEventLogger;->logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V

    .line 114
    new-instance p0, Landroid/content/Intent;

    const-string p2, "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object p2

    const-string p4, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {p0, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 116
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object p2

    const-string p4, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {p0, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 117
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object p2

    const-string p4, "android.provider.extra.CONVERSATION_ID"

    invoke-virtual {p0, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 118
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getUserId()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private static synthetic lambda$onBindViewHolder$1(Landroid/view/View$OnClickListener;Landroid/view/View;)Z
    .locals 0

    .line 122
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$onRebuildComplete$2(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/app/NotificationHistory$HistoricalNotification;)I
    .locals 2

    .line 159
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$setAnimators$3(Landroid/view/ViewGroup$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 200
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 201
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez p2, :cond_0

    .line 203
    iget-object p2, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mRecyclerView:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 205
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mRecyclerView:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$setAnimators$4(Landroid/view/ViewGroup$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 211
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 212
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez p2, :cond_0

    .line 214
    iget-object p2, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mRecyclerView:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 215
    iget-object p2, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mRecyclerView:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 217
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mRecyclerView:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$setAnimators$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 223
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 224
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mRecyclerView:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method private setAnimators(Z)V
    .locals 8

    .line 192
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mRecyclerView:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mTotalHeight:I

    .line 193
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mRecyclerView:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez p1, :cond_0

    .line 195
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mRecyclerView:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 196
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mRecyclerView:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x2

    new-array v1, p1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 198
    iget v3, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mTotalHeight:I

    const/4 v4, 0x1

    aput v3, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mExpandAnimator:Landroid/animation/ValueAnimator;

    .line 199
    new-instance v3, Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/notification/history/NotificationHistoryAdapter;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 207
    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mExpandAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x190

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 208
    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mExpandAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->HEIGHT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v1, p1, [I

    .line 209
    iget v7, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mTotalHeight:I

    aput v7, v1, v2

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mCollapseAnimator:Landroid/animation/ValueAnimator;

    .line 210
    new-instance v2, Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/notification/history/NotificationHistoryAdapter;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 219
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mCollapseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 220
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mCollapseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p1, p1, [F

    .line 221
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 222
    new-instance v0, Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/notification/history/NotificationHistoryAdapter;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 226
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 228
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    sget-object p1, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public collapseWithAnimation()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mRecyclerView:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 245
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 246
    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mRecyclerView:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mRecyclerView:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public expandWithAnimation()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mRecyclerView:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mRecyclerView:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mRecyclerView:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 239
    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mRecyclerView:Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->hashCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 49
    check-cast p1, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->onBindViewHolder(Lcom/android/settings/notification/history/NotificationHistoryViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/notification/history/NotificationHistoryViewHolder;I)V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationHistory$HistoricalNotification;

    .line 108
    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;->setPostedTime(J)V

    .line 111
    new-instance v1, Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/history/NotificationHistoryAdapter;Landroid/app/NotificationHistory$HistoricalNotification;ILcom/android/settings/notification/history/NotificationHistoryViewHolder;)V

    .line 120
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda2;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 125
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/android/settings/notification/history/NotificationHistoryAdapter$2;

    invoke-direct {p2, p0, v0}, Lcom/android/settings/notification/history/NotificationHistoryAdapter$2;-><init>(Lcom/android/settings/notification/history/NotificationHistoryAdapter;Landroid/app/NotificationHistory$HistoricalNotification;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/notification/history/NotificationHistoryViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/notification/history/NotificationHistoryViewHolder;
    .locals 1

    .line 94
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/android/settings/R$layout;->notification_history_log_row:I

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 96
    new-instance p1, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onItemSwipeDeleted(I)V
    .locals 6

    .line 165
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 166
    sget-object v0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to swipe element out of list: position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " size? "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    .line 167
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 166
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 170
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->handleItemRemoval(I)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationHistory$HistoricalNotification;

    if-eqz v0, :cond_1

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mNm:Landroid/app/INotificationManager;

    .line 175
    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getUid()I

    move-result v3

    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v4

    .line 174
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/app/INotificationManager;->deleteNotificationHistoryItem(Ljava/lang/String;IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 177
    sget-object v2, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Failed to delete item"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_OLDER_ITEM_DELETE:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    .line 180
    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getUid()I

    move-result v3

    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-interface {v1, v2, v3, v0, p1}, Lcom/android/internal/logging/UiEventLogger;->logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mListener:Lcom/android/settings/notification/history/NotificationHistoryAdapter$OnItemDeletedListener;

    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/settings/notification/history/NotificationHistoryAdapter$OnItemDeletedListener;->onItemDeleted(I)V

    .line 184
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public onRebuildComplete(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/NotificationHistory$HistoricalNotification;",
            ">;)V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    .line 159
    new-instance v0, Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 160
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
