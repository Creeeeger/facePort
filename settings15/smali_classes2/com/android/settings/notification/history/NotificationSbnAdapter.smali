.class public final Lcom/android/settings/notification/history/NotificationSbnAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBackgroundColor:I

.field public final mContext:Landroid/content/Context;

.field public final mCurrentUser:I

.field public final mEnabledProfiles:Ljava/util/List;

.field public final mInNightMode:Z

.field public final mIsSnoozed:Z

.field public final mPm:Landroid/content/pm/PackageManager;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUserBadgeCache:Ljava/util/Map;

.field public mValues:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/os/UserManager;ZLcom/android/internal/logging/UiEventLogger;)V
    .locals 4

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mEnabledProfiles:Ljava/util/List;

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mPm:Landroid/content/pm/PackageManager;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mUserBadgeCache:Ljava/util/Map;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mValues:Ljava/util/List;

    const p2, 0x1010031

    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mBackgroundColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 p2, 0x20

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mInNightMode:Z

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mCurrentUser:I

    invoke-virtual {p3, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object p1

    array-length p2, p1

    :goto_1
    if-ge v0, p2, :cond_2

    aget v2, p1, v0

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mEnabledProfiles:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    iput-boolean p4, p0, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mIsSnoozed:Z

    iput-object p5, p0, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v9, p2

    iget v2, v1, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mCurrentUser:I

    move-object/from16 v14, p1

    check-cast v14, Lcom/android/settings/notification/history/NotificationSbnViewHolder;

    iget-object v0, v1, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/service/notification/StatusBarNotification;

    const-string v3, "SbnAdapter"

    if-eqz v15, :cond_15

    iget-object v0, v1, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f080213

    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->color:I

    if-nez v4, :cond_0

    iget-object v4, v1, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mContext:Landroid/content/Context;

    const v5, 0x1010435

    invoke-static {v4, v5}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v4

    :cond_0
    iget-object v5, v1, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "current_sec_active_themepackage"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    iget v7, v1, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mBackgroundColor:I

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isCurrentThemeSupportNightTheme(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v1, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mContext:Landroid/content/Context;

    iget-boolean v8, v1, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mInNightMode:Z

    invoke-static {v5, v4, v7, v8}, Lcom/android/internal/util/ContrastColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result v4

    :cond_1
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v4, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v4, v14, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, -0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget-object v10, v1, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v10}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v11

    if-ne v11, v4, :cond_2

    move v11, v2

    :cond_2
    invoke-virtual {v0, v10, v11}, Landroid/graphics/drawable/Icon;->loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v10, :cond_3

    move-object v10, v5

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v10, v5

    :goto_0
    const-string v7, "Cannot load package icon"

    invoke-static {v3, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object v0, v14, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    :try_start_2
    iget-object v0, v1, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v8, 0x400000

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v8, v1, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v8, "Cannot load package name"

    invoke-static {v3, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v14, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->mPkgName:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    const-string v3, "android.title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v5

    :goto_3
    if-nez v0, :cond_6

    move-object v0, v5

    goto :goto_4

    :cond_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iget-object v3, v14, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v7, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v7, :cond_9

    const-string v8, "android.text"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v0, v3}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v10

    instance-of v10, v10, Landroid/app/Notification$BigTextStyle;

    if-eqz v10, :cond_7

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v0}, Landroid/app/Notification$BigTextStyle;->getBigText()Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v10

    instance-of v10, v10, Landroid/app/Notification$MessagingStyle;

    if-eqz v10, :cond_8

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_8

    invoke-static {v6, v0}, Landroidx/compose/runtime/PrioritySet$$ExternalSyntheticOutline0;->m(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    :cond_8
    :goto_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_6

    :cond_9
    move-object v7, v5

    :cond_a
    :goto_6
    if-nez v7, :cond_b

    goto :goto_7

    :cond_b
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_7
    iget-object v0, v14, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-eqz v3, :cond_c

    move v3, v7

    goto :goto_8

    :cond_c
    move v3, v8

    :goto_8
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v14, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v10

    iget-object v0, v14, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->mTime:Landroid/widget/DateTimeView;

    invoke-virtual {v0, v10, v11}, Landroid/widget/DateTimeView;->setTime(J)V

    iget-object v0, v1, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v6

    if-ge v9, v0, :cond_d

    move v0, v6

    goto :goto_9

    :cond_d
    move v0, v8

    :goto_9
    iget-object v3, v14, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_e

    move v0, v8

    goto :goto_a

    :cond_e
    move v0, v7

    :goto_a
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    if-ne v0, v4, :cond_f

    move v0, v2

    :cond_f
    iget-object v2, v1, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mUserBadgeCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, v1, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3, v8}, Landroid/content/pm/PackageManager;->getUserBadgeForDensityNoBackground(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, v1, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mUserBadgeCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget-object v2, v1, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mUserBadgeCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    iget-object v3, v14, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->mProfileBadge:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v14, Lcom/android/settings/notification/history/NotificationSbnViewHolder;->mProfileBadge:Landroid/widget/ImageView;

    if-eqz v2, :cond_11

    move v7, v8

    :cond_11
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v10

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v13

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v11, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v12

    iget-object v4, v1, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object v2, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v16

    if-eqz v11, :cond_12

    iget-object v2, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v11}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/high16 v5, 0x24000000

    invoke-static {v2, v8, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_12

    move/from16 v17, v6

    goto :goto_b

    :cond_12
    move/from16 v17, v8

    :goto_b
    if-nez v17, :cond_14

    if-eqz v16, :cond_13

    goto :goto_c

    :cond_13
    move/from16 p1, v0

    goto :goto_d

    :cond_14
    :goto_c
    iget-object v8, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v6, Lcom/android/settings/notification/history/NotificationSbnViewHolder$$ExternalSyntheticLambda0;

    iget-boolean v5, v1, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mIsSnoozed:Z

    move-object v2, v6

    move-object v3, v14

    move/from16 p1, v0

    move-object v0, v6

    move v6, v10

    move-object v10, v8

    move-object v8, v12

    move/from16 v9, p2

    move-object v12, v10

    move-object v10, v11

    move/from16 v11, v17

    move-object v1, v12

    move-object/from16 v12, v16

    invoke-direct/range {v2 .. v13}, Lcom/android/settings/notification/history/NotificationSbnViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/history/NotificationSbnViewHolder;Lcom/android/internal/logging/UiEventLogger;ZILjava/lang/String;Lcom/android/internal/logging/InstanceId;ILandroid/app/PendingIntent;ZLandroid/content/Intent;I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/notification/history/NotificationSbnViewHolder$1;

    invoke-direct {v1}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :goto_d
    iget-object v0, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/notification/history/NotificationSbnAdapter$$ExternalSyntheticLambda0;

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v1, v2, v15, v14, v3}, Lcom/android/settings/notification/history/NotificationSbnAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/history/NotificationSbnAdapter;Landroid/service/notification/StatusBarNotification;Lcom/android/settings/notification/history/NotificationSbnViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_e

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "null entry in list at position "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    const p0, 0x7f0d04d1

    const/4 p2, 0x0

    invoke-static {p1, p0, p1, p2}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/android/settings/notification/history/NotificationSbnViewHolder;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/history/NotificationSbnViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public final onRebuildComplete(Ljava/util/List;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/history/NotificationSbnAdapter;->shouldShowSbn(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mValues:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final shouldShowSbn(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mEnabledProfiles:Ljava/util/List;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    iget p1, p0, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mCurrentUser:I

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
