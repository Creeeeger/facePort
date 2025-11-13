.class public Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/notification/row/GutContentInitializer;


# static fields
.field public static final OPTIONS_CLOSE_LOG:Landroid/metrics/LogMaker;

.field public static final OPTIONS_OPEN_LOG:Landroid/metrics/LogMaker;

.field public static final UNDO_LOG:Landroid/metrics/LogMaker;


# instance fields
.field public mCancel:Landroid/widget/TextView;

.field public final mContext:Landroid/content/Context;

.field public mDone:Landroid/widget/TextView;

.field public mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mSbn:Landroid/service/notification/StatusBarNotification;

.field public final mSnoozeOptionManager:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x476

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->OPTIONS_OPEN_LOG:Landroid/metrics/LogMaker;

    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->OPTIONS_CLOSE_LOG:Landroid/metrics/LogMaker;

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x475

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->UNDO_LOG:Landroid/metrics/LogMaker;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p2}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance p2, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionManager:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getActualHeight()I
    .locals 0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public final getContentView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionManager:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mDefaultOption:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V

    return-object p0
.end method

.method public getDefaultOption()Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionManager:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mDefaultOption:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;

    return-object p0
.end method

.method public final handleCloseControls(ZZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final initializeGutContentView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sget-object v4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v5, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-virtual {v4, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda3;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda3;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object v4, v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    iput-object v4, v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    const/4 v5, 0x1

    const v6, 0x7f0a0bc1

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v4, v7}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getPackageManagerForUser(ILandroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v7, ""

    :try_start_0
    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0xc2200

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v8, v5}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :catch_0
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_0
    const v8, 0x7f0a0bc0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v8, v4}, Lcom/android/internal/widget/CachingIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v4}, Landroid/service/notification/NotificationListenerService$Ranking;->getSnoozeCriteria()Ljava/util/List;

    move-result-object v4

    sget-object v7, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v8, Lnoticolorpicker/NotificationColorPicker;

    invoke-virtual {v7, v8}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnoticolorpicker/NotificationColorPicker;

    invoke-virtual {v7}, Lnoticolorpicker/NotificationColorPicker;->getGutsTextColor()I

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f06066d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v7}, Lnoticolorpicker/NotificationColorPicker;->getNotificationBgColor$1()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_3
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f05008a

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f06057b

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_4
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_5

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    const v6, 0x7f0a0bbf

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_6

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionManager:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    if-eqz v7, :cond_8

    move v7, v9

    :goto_2
    iget-object v10, v6, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v7, v10, :cond_8

    iget-object v10, v6, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    instance-of v11, v10, Landroid/widget/RadioButton;

    if-eqz v11, :cond_7

    check-cast v10, Landroid/widget/RadioButton;

    invoke-virtual {v10, v8}, Landroid/widget/RadioButton;->setTextColor(I)V

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_8
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mCancel:Landroid/widget/TextView;

    if-eqz v6, :cond_9

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mCancel:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_9

    instance-of v7, v6, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    const v10, 0x7f080d32

    invoke-virtual {v7, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/16 v10, 0x4c

    invoke-static {v8, v10}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v10}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mDone:Landroid/widget/TextView;

    if-eqz v6, :cond_a

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    :goto_3
    if-nez v4, :cond_b

    goto :goto_5

    :cond_b
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionManager:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptions:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->getDefaultSnoozeOptions()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_4
    if-ge v9, v6, :cond_c

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Landroid/service/notification/SnoozeCriterion;

    new-instance v7, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v12}, Landroid/service/notification/SnoozeCriterion;->getExplanation()Ljava/lang/CharSequence;

    move-result-object v8

    const v10, 0x7f0a009a

    invoke-direct {v7, v10, v8}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptions:Ljava/util/List;

    new-instance v15, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;

    invoke-virtual {v12}, Landroid/service/notification/SnoozeCriterion;->getExplanation()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v12}, Landroid/service/notification/SnoozeCriterion;->getConfirmation()Ljava/lang/CharSequence;

    move-result-object v16

    const/4 v13, 0x0

    move-object v10, v15

    move-object v11, v0

    move-object v5, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v7

    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;-><init>(Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x1

    goto :goto_4

    :cond_c
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0, v4}, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;Landroid/view/LayoutInflater;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :goto_5
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda5;

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda5;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    iput-object v0, v2, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mHeightListener:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnHeightChangedListener;

    const/4 v0, 0x1

    return v0
.end method

.method public final isLeavebehind()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final needsFalsingProtection()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    sget-object v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->OPTIONS_OPEN_LOG:Landroid/metrics/LogMaker;

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionManager:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mDefaultOption:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;

    const/16 v1, 0x471

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->logOptionSelection(ILcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->resetFalsingCheck()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionManager:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V

    :cond_1
    return-void
.end method

.method public final onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionManager:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;

    iput-object p0, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mParent:Landroid/view/ViewGroup;

    const v1, 0x7f0a0bc3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mParent:Landroid/view/ViewGroup;

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->getDefaultSnoozeOptions()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptions:Ljava/util/List;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;Landroid/view/LayoutInflater;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionManager:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mDefaultOption:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V

    const v0, 0x7f0a0bbe

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0bc4

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mDone:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mCancel:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mDone:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    :cond_1
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionManager:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getConfirmation()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f131276

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a009f

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionManager:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getAccessibilityAction()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionManager:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptions:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getAccessibilityAction()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getAccessibilityAction()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final setGutsParent(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-void
.end method

.method public final shouldBeSavedOnClose()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final willBeRemoved()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionManager:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozing:Z

    return p0
.end method
