.class public Lcom/android/internal/app/ChooserListAdapter;
.super Lcom/android/internal/app/ResolverListAdapter;
.source "ChooserListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;,
        Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;
    }
.end annotation


# static fields
.field public static final blacklist CALLER_TARGET_SCORE_BOOST:F = 900.0f

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist MAX_CHOOSER_TARGETS_PER_APP:I = 0x2

.field private static final blacklist MAX_SUGGESTED_APP_TARGETS:I = 0x4

.field public static final blacklist NO_POSITION:I = -0x1

.field private static final blacklist PINNED_SHORTCUT_TARGET_SCORE_BOOST:F = 1000.0f

.field public static final blacklist SHORTCUT_TARGET_SCORE_BOOST:F = 90.0f

.field private static final blacklist TAG:Ljava/lang/String; = "ChooserListAdapter"

.field public static final blacklist TARGET_BAD:I = -0x1

.field public static final blacklist TARGET_CALLER:I = 0x0

.field public static final blacklist TARGET_SERVICE:I = 0x1

.field public static final blacklist TARGET_STANDARD:I = 0x2

.field public static final blacklist TARGET_STANDARD_AZ:I = 0x3


# instance fields
.field private blacklist mAppPredictor:Landroid/app/prediction/AppPredictor;

.field private blacklist mAppPredictorCallback:Landroid/app/prediction/AppPredictor$Callback;

.field private blacklist mAppPredictorCallbackWrapper:Lcom/android/internal/app/ResolverAppPredictorCallback;

.field private blacklist mApplySharingAppLimits:Z

.field private final blacklist mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

.field private final blacklist mCallerTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

.field private final blacklist mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

.field private blacklist mEnableStackedApps:Z

.field private final blacklist mIconLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/app/chooser/SelectableTargetInfo;",
            "Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mInitialIntentsUserSpace:Landroid/os/UserHandle;

.field private blacklist mListViewDataChanged:Z

.field private final blacklist mMaxShortcutTargetsPerApp:I

.field private blacklist mNumShortcutResults:I

.field private final blacklist mPinTextSpacingListener:Landroid/view/View$OnLayoutChangeListener;

.field private blacklist mPlaceHolderTargetInfo:Lcom/android/internal/app/chooser/ChooserTargetInfo;

.field private final blacklist mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

.field private final blacklist mServiceTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/ChooserTargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSortedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallerTargets(Lcom/android/internal/app/ChooserListAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChooserListCommunicator(Lcom/android/internal/app/ChooserListAdapter;)Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnableStackedApps(Lcom/android/internal/app/ChooserListAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/ChooserListAdapter;->mEnableStackedApps:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSortedList(Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;Landroid/content/pm/PackageManager;Lcom/android/internal/app/ChooserActivityLogger;Landroid/os/UserHandle;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z",
            "Lcom/android/internal/app/ResolverListController;",
            "Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;",
            "Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/internal/app/ChooserActivityLogger;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move-object/from16 v13, p9

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p11

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/app/ResolverListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;ZLandroid/os/UserHandle;)V

    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/internal/app/ChooserListAdapter;->mEnableStackedApps:Z

    const/4 v2, 0x0

    iput v2, v11, Lcom/android/internal/app/ChooserListAdapter;->mNumShortcutResults:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v11, Lcom/android/internal/app/ChooserListAdapter;->mIconLoaders:Ljava/util/Map;

    new-instance v0, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;

    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;-><init>()V

    iput-object v0, v11, Lcom/android/internal/app/ChooserListAdapter;->mPlaceHolderTargetInfo:Lcom/android/internal/app/chooser/ChooserTargetInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v11, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v11, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    new-instance v0, Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;-><init>()V

    iput-object v0, v11, Lcom/android/internal/app/ChooserListAdapter;->mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    iput-boolean v2, v11, Lcom/android/internal/app/ChooserListAdapter;->mListViewDataChanged:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v11, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    new-instance v0, Lcom/android/internal/app/ChooserListAdapter$1;

    invoke-direct {v0, v11}, Lcom/android/internal/app/ChooserListAdapter$1;-><init>(Lcom/android/internal/app/ChooserListAdapter;)V

    iput-object v0, v11, Lcom/android/internal/app/ChooserListAdapter;->mPinTextSpacingListener:Landroid/view/View$OnLayoutChangeListener;

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e00dd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v11, Lcom/android/internal/app/ChooserListAdapter;->mMaxShortcutTargetsPerApp:I

    move-object/from16 v3, p7

    iput-object v3, v11, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ChooserListAdapter;->createPlaceHolders()V

    move-object/from16 v4, p8

    iput-object v4, v11, Lcom/android/internal/app/ChooserListAdapter;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    move-object/from16 v5, p10

    iput-object v5, v11, Lcom/android/internal/app/ChooserListAdapter;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    move-object/from16 v6, p11

    iput-object v6, v11, Lcom/android/internal/app/ChooserListAdapter;->mInitialIntentsUserSpace:Landroid/os/UserHandle;

    if-eqz v12, :cond_a

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    array-length v0, v12

    if-ge v7, v0, :cond_9

    aget-object v8, v12, v7

    if-nez v8, :cond_0

    move-object/from16 v15, p1

    goto/16 :goto_5

    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    if-eqz v14, :cond_1

    :try_start_0
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v13, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    move-object v10, v0

    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object v9, v0

    iput-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_1
    :goto_1
    if-nez v10, :cond_4

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v15, Landroid/content/Intent;

    if-ne v0, v15, :cond_2

    move-object v0, v8

    goto :goto_2

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :goto_2
    const/high16 v15, 0x10000

    invoke-virtual {v13, v0, v15}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v15, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    :goto_3
    move-object v10, v15

    :cond_4
    if-nez v10, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "No activity found for "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v15, "ChooserListAdapter"

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v15, p1

    goto :goto_5

    :cond_5
    nop

    const-string/jumbo v0, "user"

    move-object/from16 v15, p1

    invoke-virtual {v15, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    instance-of v2, v8, Landroid/content/pm/LabeledIntent;

    if-eqz v2, :cond_6

    move-object v2, v8

    check-cast v2, Landroid/content/pm/LabeledIntent;

    invoke-virtual {v2}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v1

    iput v1, v9, Landroid/content/pm/ResolveInfo;->labelRes:I

    invoke-virtual {v2}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v9, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v1

    iput v1, v9, Landroid/content/pm/ResolveInfo;->icon:I

    iget v1, v9, Landroid/content/pm/ResolveInfo;->icon:I

    iput v1, v9, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    :cond_6
    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    iput-boolean v1, v9, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    const/4 v1, 0x0

    iput v1, v9, Landroid/content/pm/ResolveInfo;->icon:I

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    iget-object v2, v11, Lcom/android/internal/app/ChooserListAdapter;->mInitialIntentsUserSpace:Landroid/os/UserHandle;

    iput-object v2, v9, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    iget-object v2, v11, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-object/from16 v16, v0

    invoke-virtual {v11, v9}, Lcom/android/internal/app/ChooserListAdapter;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v0

    invoke-direct {v1, v8, v9, v8, v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v11, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    goto :goto_6

    :cond_8
    :goto_5
    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_9
    move-object/from16 v15, p1

    goto :goto_6

    :cond_a
    move-object/from16 v15, p1

    :goto_6
    const-string/jumbo v0, "systemui"

    const-string v1, "apply_sharing_app_limits_in_sysui"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v11, Lcom/android/internal/app/ChooserListAdapter;->mApplySharingAppLimits:Z

    return-void
.end method

.method private blacklist createPlaceHolders()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mNumShortcutResults:I

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mPlaceHolderTargetInfo:Lcom/android/internal/app/chooser/ChooserTargetInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist insertServiceTarget(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    invoke-interface {p1, v3}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->isSimilar(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getModifiedScore()F

    move-result v3

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v5}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v4, v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    if-nez v5, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v1, v4, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_3
    invoke-interface {v5}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getModifiedScore()F

    move-result v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_4

    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v1, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v4}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v4

    if-ge v0, v4, :cond_6

    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2

    :cond_6
    return v1
.end method

.method static synthetic blacklist lambda$completeServiceTargetLoading$0(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z
    .locals 1

    instance-of v0, p0, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;

    return v0
.end method

.method private blacklist loadDirectShareIcon(Lcom/android/internal/app/chooser/SelectableTargetInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mIconLoaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserListAdapter;->createLoadDirectShareIconTask(Lcom/android/internal/app/chooser/SelectableTargetInfo;)Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mIconLoaders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;->loadIcon()V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist addServiceResults(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;ILjava/util/Map;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;I",
            "Ljava/util/Map<",
            "Landroid/service/chooser/ChooserTarget;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    move-object/from16 v3, p1

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/app/ChooserListAdapter;->getBaseScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;I)F

    move-result v11

    iget-object v4, v0, Lcom/android/internal/app/ChooserListAdapter;->mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v12, 0x0

    const/4 v4, 0x2

    const/4 v13, 0x1

    if-eq v2, v4, :cond_2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v12

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v13

    :goto_1
    move v14, v5

    if-eqz v14, :cond_3

    iget v4, v0, Lcom/android/internal/app/ChooserListAdapter;->mMaxShortcutTargetsPerApp:I

    goto :goto_2

    :cond_3
    nop

    :goto_2
    move v15, v4

    iget-boolean v4, v0, Lcom/android/internal/app/ChooserListAdapter;->mApplySharingAppLimits:Z

    if-eqz v4, :cond_4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4, v15}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_3

    :cond_4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    :goto_3
    move/from16 v16, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v10, v16

    move/from16 v17, v4

    move/from16 v18, v5

    move v9, v6

    :goto_4
    if-ge v9, v10, :cond_9

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v8}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v4

    iget-boolean v5, v0, Lcom/android/internal/app/ChooserListAdapter;->mApplySharingAppLimits:Z

    if-eqz v5, :cond_5

    mul-float/2addr v4, v11

    if-lez v9, :cond_5

    cmpl-float v5, v4, v17

    if-ltz v5, :cond_5

    const v5, 0x3f733333    # 0.95f

    mul-float v4, v17, v5

    :cond_5
    if-eqz v14, :cond_6

    move-object/from16 v7, p4

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    goto :goto_5

    :cond_6
    move-object/from16 v7, p4

    const/4 v5, 0x0

    :goto_5
    move-object/from16 v19, v5

    if-eqz v19, :cond_7

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v5

    if-eqz v5, :cond_7

    const/high16 v5, 0x447a0000    # 1000.0f

    add-float/2addr v4, v5

    move/from16 v20, v4

    goto :goto_6

    :cond_7
    move/from16 v20, v4

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    iget-object v4, v0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6, v12}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v21

    new-instance v5, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    iget-object v4, v0, Lcom/android/internal/app/ChooserListAdapter;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    move-object/from16 v22, v4

    move-object v4, v5

    move-object v12, v5

    move-object/from16 v5, v21

    move-object/from16 v23, v6

    move-object/from16 v6, p1

    move-object v7, v8

    move-object/from16 v24, v8

    move/from16 v8, v20

    move/from16 v25, v9

    move-object/from16 v9, v22

    move/from16 v22, v10

    move-object/from16 v10, v19

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/app/chooser/SelectableTargetInfo;-><init>(Landroid/content/Context;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/service/chooser/ChooserTarget;FLcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;Landroid/content/pm/ShortcutInfo;)V

    invoke-direct {v0, v12}, Lcom/android/internal/app/ChooserListAdapter;->insertServiceTarget(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v14, :cond_8

    iget v5, v0, Lcom/android/internal/app/ChooserListAdapter;->mNumShortcutResults:I

    add-int/2addr v5, v13

    iput v5, v0, Lcom/android/internal/app/ChooserListAdapter;->mNumShortcutResults:I

    :cond_8
    or-int v18, v18, v4

    move/from16 v17, v20

    add-int/lit8 v9, v25, 0x1

    move/from16 v10, v22

    const/4 v12, 0x0

    goto :goto_4

    :cond_9
    move/from16 v25, v9

    move/from16 v22, v10

    if-eqz v18, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    :cond_a
    return-void
.end method

.method protected blacklist alwaysShowSubLabel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist completeServiceTargetLoading()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ChooserListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/app/ChooserListAdapter$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;

    invoke-direct {v1}, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    invoke-interface {v0}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetEmptyDirectShareRow()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected blacklist createLoadDirectShareIconTask(Lcom/android/internal/app/chooser/SelectableTargetInfo;)Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;
    .locals 2

    new-instance v0, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask;-><init>(Lcom/android/internal/app/ChooserListAdapter;Lcom/android/internal/app/chooser/SelectableTargetInfo;Lcom/android/internal/app/ChooserListAdapter$LoadDirectShareIconTask-IA;)V

    return-object v0
.end method

.method blacklist createSortingTask(Z)Landroid/os/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/os/AsyncTask<",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;",
            "Ljava/lang/Void;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/app/ChooserListAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ChooserListAdapter$3;-><init>(Lcom/android/internal/app/ChooserListAdapter;Z)V

    return-object v0
.end method

.method public blacklist destroyAppPredictor()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getAppPredictor()Landroid/app/prediction/AppPredictor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getAppPredictor()Landroid/app/prediction/AppPredictor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictorCallback:Landroid/app/prediction/AppPredictor$Callback;

    invoke-virtual {v0, v1}, Landroid/app/prediction/AppPredictor;->unregisterPredictionUpdates(Landroid/app/prediction/AppPredictor$Callback;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getAppPredictor()Landroid/app/prediction/AppPredictor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/prediction/AppPredictor;->destroy()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserListAdapter;->setAppPredictor(Landroid/app/prediction/AppPredictor;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictorCallbackWrapper:Lcom/android/internal/app/ResolverAppPredictorCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictorCallbackWrapper:Lcom/android/internal/app/ResolverAppPredictorCallback;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverAppPredictorCallback;->destroy()V

    :cond_1
    return-void
.end method

.method blacklist getAlphaTargetCount()I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v2}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v2

    if-le v1, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method blacklist getAppPredictor()Landroid/app/prediction/AppPredictor;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictor:Landroid/app/prediction/AppPredictor;

    return-object v0
.end method

.method public blacklist getBaseScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;I)F
    .locals 2

    if-nez p1, :cond_0

    const/high16 v0, 0x44610000    # 900.0f

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->getScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;)F

    move-result v0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/high16 v1, 0x42b40000    # 90.0f

    mul-float/2addr v1, v0

    return v1
.end method

.method public blacklist getCallerTargetCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getChooserTargetForValue(I)Landroid/service/chooser/ChooserTarget;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    invoke-interface {v0}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getItem(I)Lcom/android/internal/app/chooser/TargetInfo;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object p1

    return-object p1
.end method

.method blacklist getNumServiceTargetsForExpand()I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mNumShortcutResults:I

    return v0
.end method

.method public blacklist getPositionTargetType(I)I
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getServiceTargetCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v2

    sub-int v3, p1, v0

    if-ge v3, v2, :cond_1

    const/4 v3, 0x0

    return v3

    :cond_1
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v3

    sub-int v4, p1, v0

    if-ge v4, v3, :cond_2

    const/4 v4, 0x2

    return v4

    :cond_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result v4

    sub-int v5, p1, v0

    if-ge v5, v4, :cond_3

    const/4 v5, 0x3

    return v5

    :cond_3
    const/4 v5, -0x1

    return v5
.end method

.method public blacklist getRankedTargetCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-super {p0}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public blacklist getSelectableServiceTargetCount()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    instance-of v3, v2, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    goto :goto_0

    :cond_1
    return v0
.end method

.method public blacklist getServiceTargetCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->shouldShowServiceTargets()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSurfacedTargetInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/ChooserTargetInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getUnfilteredCount()I
    .locals 3

    invoke-super {p0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public blacklist handlePackagesChanged()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserListAdapter;->createPlaceHolders()V

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v0, p0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V

    return-void
.end method

.method public whitelist notifyDataSetChanged()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mListViewDataChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->sendListViewUpdateMessage(Landroid/os/UserHandle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mListViewDataChanged:Z

    :cond_0
    return-void
.end method

.method protected blacklist onBindView(Landroid/view/View;Lcom/android/internal/app/chooser/TargetInfo;I)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    if-nez p2, :cond_0

    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x1080948

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->alwaysShowSubLabel()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0, p2}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindIcon(Lcom/android/internal/app/chooser/TargetInfo;)V

    instance-of v1, p2, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDisplayResolveInfo()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v5

    const-string v6, ""

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v7, v6

    :goto_0
    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/CharSequence;

    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v4

    if-eqz v8, :cond_2

    move-object v6, v8

    :cond_2
    aput-object v6, v9, v3

    aput-object v7, v9, v2

    const-string v6, " "

    invoke-static {v6, v9}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->updateContentDescription(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->hasDisplayIcon()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-direct {p0, v1}, Lcom/android/internal/app/ChooserListAdapter;->loadDirectShareIcon(Lcom/android/internal/app/chooser/SelectableTargetInfo;)V

    goto :goto_1

    :cond_3
    instance-of v1, p2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v1, :cond_4

    move-object v1, p2

    check-cast v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserListAdapter;->loadIcon(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    goto :goto_2

    :cond_4
    :goto_1
    nop

    :cond_5
    :goto_2
    instance-of v1, p2, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;

    const/4 v5, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x10500c3

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v6, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v6, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x10802b6

    invoke-virtual {v7, v9, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_6
    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v6, 0x7fffffff

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v6, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->defaultItemViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/app/ChooserListAdapter;->mPinTextSpacingListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    instance-of v1, p2, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x10802b8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2, v4, v4, v3, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_7
    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, p3}, Lcom/android/internal/app/ChooserListAdapter;->getPositionTargetType(I)I

    move-result v1

    if-eq v1, v2, :cond_8

    invoke-virtual {p0, p3}, Lcom/android/internal/app/ChooserListAdapter;->getPositionTargetType(I)I

    move-result v1

    if-ne v1, v3, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x10802b9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/ChooserListAdapter;->mPinTextSpacingListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_4

    :cond_9
    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :goto_4
    return-void
.end method

.method blacklist onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x109011b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method blacklist refreshListView()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mListViewDataChanged:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/internal/app/ResolverListAdapter;->notifyDataSetChanged()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mListViewDataChanged:Z

    return-void
.end method

.method public blacklist setAppPredictor(Landroid/app/prediction/AppPredictor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictor:Landroid/app/prediction/AppPredictor;

    return-void
.end method

.method public blacklist setAppPredictorCallback(Landroid/app/prediction/AppPredictor$Callback;Lcom/android/internal/app/ResolverAppPredictorCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictorCallback:Landroid/app/prediction/AppPredictor$Callback;

    iput-object p2, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictorCallbackWrapper:Lcom/android/internal/app/ResolverAppPredictorCallback;

    return-void
.end method

.method protected blacklist shouldAddResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/chooser/TargetInfo;

    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->shouldAddResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z

    move-result v0

    return v0
.end method

.method public blacklist targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getServiceTargetCount()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v2

    :goto_0
    nop

    if-ge p1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/chooser/TargetInfo;

    return-object v1

    :cond_2
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v3

    sub-int v4, p1, v0

    if-ge v4, v3, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    sub-int v4, p1, v0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/chooser/TargetInfo;

    return-object v1

    :cond_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v4

    sub-int v5, p1, v0

    if-ge v5, v4, :cond_5

    if-eqz p2, :cond_4

    sub-int v1, p1, v0

    invoke-super {p0, v1}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v1

    goto :goto_1

    :cond_4
    sub-int v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserListAdapter;->getDisplayResolveInfo(I)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_5
    add-int/2addr v0, v4

    sub-int v5, p1, v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result v6

    if-ge v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    sub-int v5, p1, v0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/chooser/TargetInfo;

    return-object v1

    :cond_6
    return-object v1
.end method

.method blacklist updateAlphabeticalList()V
    .locals 2

    new-instance v0, Lcom/android/internal/app/ChooserListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserListAdapter$2;-><init>(Lcom/android/internal/app/ChooserListAdapter;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserListAdapter$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
