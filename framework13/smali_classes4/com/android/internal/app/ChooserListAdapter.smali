.class public Lcom/android/internal/app/ChooserListAdapter;
.super Lcom/android/internal/app/ResolverListAdapter;
.source "ChooserListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;
    }
.end annotation


# static fields
.field public static final blacklist CALLER_TARGET_SCORE_BOOST:F = 900.0f

.field private static final blacklist DEBUG:Z = false

.field public static final blacklist DEVICE_TARGET_UPDATE_TYPE_ALL_DIRECT_SHARE:I = 0x1

.field public static final blacklist DEVICE_TARGET_UPDATE_TYPE_ALL_LIST:I = 0x0

.field public static final blacklist DEVICE_TARGET_UPDATE_TYPE_QUICK_SHARE_BADGE:I = 0x2

.field private static final blacklist MAX_CHOOSER_TARGETS_PER_APP:I = 0x2

.field public static final blacklist MAX_DEFAULT_FAVORITE_COUNT:I = 0xc

.field public static blacklist MAX_DEVICE_TARGETS:I = 0x0

.field public static final blacklist MAX_SERVICE_TARGET_COUNT:I = 0xa

.field private static final blacklist MAX_SUGGESTED_APP_TARGETS:I = 0x4

.field public static final blacklist NO_POSITION:I = -0x1

.field private static final blacklist PINNED_SHORTCUT_TARGET_SCORE_BOOST:F = 1000.0f

.field public static final blacklist PRELOAD_TYPE_COPY:I = 0x3

.field public static final blacklist PRELOAD_TYPE_LINKSHARE_TEMP:I = 0x4

.field public static final blacklist PRELOAD_TYPE_LINK_SHARING:I = 0x0

.field public static final blacklist PRELOAD_TYPE_NEARBY_SHARE:I = 0x1

.field public static final blacklist PRELOAD_TYPE_PRIVATE_SHARE:I = 0x2

.field public static final blacklist SEM_DEVICE_TARGET_APPLICATION_ITEM_SCORE:I = 0x186a0

.field public static final blacklist SEM_PRIVATE_SHARE_FOR_SECURE_FOLDER_SHORTCUT_TARGET_SCORE_BOOST:F = 100.0f

.field public static final blacklist SHORTCUT_TARGET_SCORE_BOOST:F = 1.3f

.field private static final blacklist TAG:Ljava/lang/String; = "ChooserListAdapter"

.field public static final blacklist TARGET_BAD:I = -0x1

.field public static final blacklist TARGET_CALLER:I = 0x0

.field public static final blacklist TARGET_DEVICE:I = 0x4

.field public static final blacklist TARGET_SERVICE:I = 0x1

.field public static final blacklist TARGET_STANDARD:I = 0x2

.field public static final blacklist TARGET_STANDARD_AZ:I = 0x3


# instance fields
.field private blacklist mAppPredictor:Landroid/app/prediction/AppPredictor;

.field private blacklist mAppPredictorCallback:Landroid/app/prediction/AppPredictor$Callback;

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

.field private final blacklist mDeviceTargetComparator:Lcom/android/internal/app/ChooserActivity$SemDeviceTargetComparator;

.field private final blacklist mDeviceTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/ChooserTargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mDeviceTargetsBadgeNumber:I

.field private blacklist mEnableStackedApps:Z

.field private blacklist mFavoriteTargetMaxCount:I

.field private blacklist mFavoriteTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIconLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            "Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mListViewDataChanged:Z

.field private final blacklist mMaxShortcutTargetsPerApp:I

.field private blacklist mNumShortcutResults:I

.field private blacklist mOldDeviceTargetsCount:I

.field private final blacklist mPinTextSpacingListener:Landroid/view/View$OnLayoutChangeListener;

.field private blacklist mPlaceHolderTargetInfo:Lcom/android/internal/app/chooser/ChooserTargetInfo;

.field private blacklist mPreloadAppTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRankedTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mSStarMaxAccessTargetPerApp:I

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

.field private blacklist mShareLiveShareId:Ljava/lang/String;

.field private final blacklist mShareStarTargetComparator:Lcom/android/internal/app/ChooserActivity$SemShareStarTargetComparator;

.field private blacklist mSortedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUWBFocusComparator:Lcom/android/internal/app/ChooserActivity$SemUWBFocusComparator;


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

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 207
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/app/ChooserListAdapter;->MAX_DEVICE_TARGETS:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;Landroid/content/pm/PackageManager;Lcom/android/internal/app/ChooserActivityLogger;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "filterLastUsed"    # Z
    .param p6, "resolverListController"    # Lcom/android/internal/app/ResolverListController;
    .param p7, "chooserListCommunicator"    # Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;
    .param p8, "selectableTargetInfoCommunicator"    # Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;
    .param p9, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p10, "chooserActivityLogger"    # Lcom/android/internal/app/ChooserActivityLogger;
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
            ")V"
        }
    .end annotation

    .line 242
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p3

    move-object/from16 v12, p9

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/app/ResolverListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;Z)V

    .line 95
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/internal/app/ChooserListAdapter;->mEnableStackedApps:Z

    .line 152
    const/4 v2, 0x0

    iput v2, v10, Lcom/android/internal/app/ChooserListAdapter;->mNumShortcutResults:I

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mIconLoaders:Ljava/util/Map;

    .line 157
    new-instance v0, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;

    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;-><init>()V

    iput-object v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mPlaceHolderTargetInfo:Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    .line 162
    new-instance v0, Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;-><init>()V

    iput-object v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    .line 164
    iput-boolean v2, v10, Lcom/android/internal/app/ChooserListAdapter;->mListViewDataChanged:Z

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    .line 175
    new-instance v0, Lcom/android/internal/app/ChooserListAdapter$1;

    invoke-direct {v0, v10}, Lcom/android/internal/app/ChooserListAdapter$1;-><init>(Lcom/android/internal/app/ChooserListAdapter;)V

    iput-object v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mPinTextSpacingListener:Landroid/view/View$OnLayoutChangeListener;

    .line 208
    iput v2, v10, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargetsBadgeNumber:I

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargets:Ljava/util/List;

    .line 211
    new-instance v0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetComparator;

    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetComparator;-><init>()V

    iput-object v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargetComparator:Lcom/android/internal/app/ChooserActivity$SemDeviceTargetComparator;

    .line 213
    new-instance v0, Lcom/android/internal/app/ChooserActivity$SemUWBFocusComparator;

    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivity$SemUWBFocusComparator;-><init>()V

    iput-object v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mUWBFocusComparator:Lcom/android/internal/app/ChooserActivity$SemUWBFocusComparator;

    .line 217
    const/16 v0, 0xa

    iput v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mSStarMaxAccessTargetPerApp:I

    .line 218
    new-instance v0, Lcom/android/internal/app/ChooserActivity$SemShareStarTargetComparator;

    invoke-direct {v0}, Lcom/android/internal/app/ChooserActivity$SemShareStarTargetComparator;-><init>()V

    iput-object v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mShareStarTargetComparator:Lcom/android/internal/app/ChooserActivity$SemShareStarTargetComparator;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mPreloadAppTargets:Ljava/util/List;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mFavoriteTargets:Ljava/util/List;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mRankedTargets:Ljava/util/List;

    .line 230
    const/16 v0, 0xc

    iput v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mFavoriteTargetMaxCount:I

    .line 247
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v0

    .line 246
    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    .line 248
    .local v3, "isDualAppActivated":Z
    const/4 v0, 0x0

    .line 249
    .local v0, "sDAInstance":Lcom/samsung/android/app/SemDualAppManager;
    if-eqz v3, :cond_0

    .line 250
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lcom/samsung/android/app/SemDualAppManager;->clearDuplicateMaps()V

    move-object v4, v0

    goto :goto_0

    .line 249
    :cond_0
    move-object v4, v0

    .line 255
    .end local v0    # "sDAInstance":Lcom/samsung/android/app/SemDualAppManager;
    .local v4, "sDAInstance":Lcom/samsung/android/app/SemDualAppManager;
    :goto_0
    nop

    .line 256
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x10e00c7

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mMaxShortcutTargetsPerApp:I

    .line 257
    move-object/from16 v5, p7

    iput-object v5, v10, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserListAdapter;->semIsSupportDirectShare()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ChooserListAdapter;->createPlaceHolders()V

    .line 268
    :cond_1
    move-object/from16 v6, p8

    iput-object v6, v10, Lcom/android/internal/app/ChooserListAdapter;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    .line 269
    move-object/from16 v7, p10

    iput-object v7, v10, Lcom/android/internal/app/ChooserListAdapter;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    .line 271
    if-eqz v11, :cond_c

    .line 272
    const/4 v0, 0x0

    move v8, v0

    .local v8, "i":I
    :goto_1
    array-length v0, v11

    if-ge v8, v0, :cond_c

    .line 273
    aget-object v9, v11, v8

    .line 274
    .local v9, "ii":Landroid/content/Intent;
    if-nez v9, :cond_2

    .line 275
    goto/16 :goto_6

    .line 282
    :cond_2
    const/4 v13, 0x0

    .line 283
    .local v13, "ri":Landroid/content/pm/ResolveInfo;
    const/4 v14, 0x0

    .line 284
    .local v14, "ai":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    .line 285
    .local v15, "cn":Landroid/content/ComponentName;
    if-eqz v15, :cond_3

    .line 287
    :try_start_0
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v12, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    move-object v14, v0

    .line 288
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object v13, v0

    .line 289
    iput-object v14, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    goto :goto_2

    .line 290
    :catch_0
    move-exception v0

    .line 294
    :cond_3
    :goto_2
    if-nez v14, :cond_6

    .line 296
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Landroid/content/Intent;

    if-ne v0, v2, :cond_4

    move-object v0, v9

    goto :goto_3

    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 297
    .local v0, "rii":Landroid/content/Intent;
    :goto_3
    const/high16 v2, 0x10000

    invoke-virtual {v12, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v13

    .line 298
    if-eqz v13, :cond_5

    iget-object v2, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    move-object v14, v2

    .line 300
    .end local v0    # "rii":Landroid/content/Intent;
    :cond_6
    const-string v0, "ChooserListAdapter"

    if-nez v14, :cond_7

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No activity found for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    goto/16 :goto_6

    .line 304
    :cond_7
    nop

    .line 305
    const-string/jumbo v1, "user"

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 306
    .local v1, "userManager":Landroid/os/UserManager;
    instance-of v2, v9, Landroid/content/pm/LabeledIntent;

    if-eqz v2, :cond_8

    .line 307
    move-object v2, v9

    check-cast v2, Landroid/content/pm/LabeledIntent;

    .line 308
    .local v2, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual {v2}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v13, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 309
    invoke-virtual {v2}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v5

    iput v5, v13, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 310
    invoke-virtual {v2}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v13, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 311
    invoke-virtual {v2}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v5

    iput v5, v13, Landroid/content/pm/ResolveInfo;->icon:I

    .line 312
    iget v5, v13, Landroid/content/pm/ResolveInfo;->icon:I

    iput v5, v13, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 314
    .end local v2    # "li":Landroid/content/pm/LabeledIntent;
    :cond_8
    invoke-virtual {v1}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 315
    const/4 v2, 0x1

    iput-boolean v2, v13, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 316
    const/4 v2, 0x0

    iput v2, v13, Landroid/content/pm/ResolveInfo;->icon:I

    goto :goto_5

    .line 314
    :cond_9
    const/4 v2, 0x0

    .line 318
    :goto_5
    new-instance v5, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v10, v13}, Lcom/android/internal/app/ChooserListAdapter;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v2

    invoke-direct {v5, v9, v13, v9, v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    move-object v2, v5

    .line 319
    .local v2, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    .end local v1    # "userManager":Landroid/os/UserManager;
    .local v16, "userManager":Landroid/os/UserManager;
    const-string v1, "Add DisplayResolveInfo from Initial intent = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", intent component: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 320
    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v1, v10, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    if-eqz v3, :cond_a

    iget-object v1, v10, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-virtual {v4, v12, v1, v14, v9}, Lcom/samsung/android/app/SemDualAppManager;->isDuplicateEntry(Landroid/content/pm/PackageManager;Ljava/util/List;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate activity found for "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_a
    iget-object v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    goto :goto_7

    .line 272
    .end local v2    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v9    # "ii":Landroid/content/Intent;
    .end local v13    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v15    # "cn":Landroid/content/ComponentName;
    .end local v16    # "userManager":Landroid/os/UserManager;
    :cond_b
    :goto_6
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, p7

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_1

    .line 330
    .end local v8    # "i":I
    :cond_c
    :goto_7
    const-string/jumbo v0, "systemui"

    const-string v1, "apply_sharing_app_limits_in_sysui"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v10, Lcom/android/internal/app/ChooserListAdapter;->mApplySharingAppLimits:Z

    .line 334
    return-void
.end method

.method private blacklist createPlaceHolders()V
    .locals 1

    .line 369
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mNumShortcutResults:I

    .line 370
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 381
    return-void
.end method

.method private blacklist insertServiceTarget(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z
    .locals 7
    .param p1, "chooserTargetInfo"    # Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 1074
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    .line 1075
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;

    if-eqz v0, :cond_0

    .line 1076
    return v1

    .line 1080
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

    .line 1081
    .local v3, "otherTargetInfo":Lcom/android/internal/app/chooser/ChooserTargetInfo;
    invoke-interface {p1, v3}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->isSimilar(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1082
    return v1

    .line 1084
    .end local v3    # "otherTargetInfo":Lcom/android/internal/app/chooser/ChooserTargetInfo;
    :cond_1
    goto :goto_0

    .line 1086
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1087
    .local v0, "currentSize":I
    invoke-interface {p1}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getModifiedScore()F

    move-result v3

    .line 1088
    .local v3, "newScore":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 1091
    iget-object v5, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 1092
    .local v5, "serviceTarget":Lcom/android/internal/app/chooser/ChooserTargetInfo;
    if-nez v5, :cond_3

    .line 1093
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v1, v4, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1094
    return v2

    .line 1095
    :cond_3
    invoke-interface {v5}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getModifiedScore()F

    move-result v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_4

    .line 1096
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v1, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1097
    return v2

    .line 1090
    .end local v5    # "serviceTarget":Lcom/android/internal/app/chooser/ChooserTargetInfo;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1101
    .end local v4    # "i":I
    :cond_5
    if-ge v0, v5, :cond_6

    .line 1103
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1104
    return v2

    .line 1107
    :cond_6
    return v1
.end method

.method static synthetic blacklist lambda$addServiceResults$0(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z
    .locals 1
    .param p0, "o"    # Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 907
    instance-of v0, p0, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;

    return v0
.end method

.method static synthetic blacklist lambda$addServiceResults$1(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z
    .locals 1
    .param p0, "o"    # Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 995
    instance-of v0, p0, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;

    return v0
.end method

.method static synthetic blacklist lambda$completeServiceTargetLoading$2(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z
    .locals 1
    .param p0, "o"    # Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 1058
    instance-of v0, p0, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;

    return v0
.end method

.method static synthetic blacklist lambda$semAddDeviceTargetResults$3(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z
    .locals 1
    .param p0, "o"    # Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 1450
    instance-of v0, p0, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;

    return v0
.end method


# virtual methods
.method public blacklist addServiceResults(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;ILjava/util/Map;)V
    .locals 31
    .param p1, "origTarget"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p3, "targetType"    # I
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

    .line 823
    .local p2, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    .local p4, "directShareToShortcutInfos":Ljava/util/Map;, "Ljava/util/Map<Landroid/service/chooser/ChooserTarget;Landroid/content/pm/ShortcutInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserListAdapter;->semIsSupportDirectShare()Z

    move-result v1

    const-string v2, "ChooserListAdapter"

    if-nez v1, :cond_0

    .line 824
    const-string v1, "Direct share setting is off"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    return-void

    .line 833
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 834
    return-void

    .line 836
    :cond_1
    const/4 v1, 0x0

    .line 838
    .local v1, "shouldNotify":Z
    iget-object v3, v0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v3}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->semSStarGetFavoriteDirectInfos()Ljava/util/ArrayList;

    move-result-object v12

    .line 839
    .local v12, "sstarFavoriteDirects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;>;"
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v12, :cond_13

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    move/from16 v21, v1

    move-object/from16 v25, v12

    const/4 v12, 0x1

    goto/16 :goto_b

    .line 922
    :cond_2
    const-string v5, "Use ShareStar favorite item"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-virtual {v0, v8, v10}, Lcom/android/internal/app/ChooserListAdapter;->getBaseScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;I)F

    move-result v16

    .line 926
    .local v16, "baseScore":F
    if-eq v10, v4, :cond_4

    if-ne v10, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v3, 0x1

    :goto_1
    move/from16 v17, v3

    .line 929
    .local v17, "isShortcutResult":Z
    iget v6, v0, Lcom/android/internal/app/ChooserListAdapter;->mSStarMaxAccessTargetPerApp:I

    .line 930
    .local v6, "maxTargets":I
    const/4 v3, 0x0

    .line 933
    .local v3, "lastScore":F
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v4

    .line 934
    .local v5, "shareStarTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ShareStarTarget;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-ge v4, v7, :cond_b

    .line 935
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/chooser/ChooserTarget;

    .line 938
    .local v7, "target":Landroid/service/chooser/ChooserTarget;
    new-instance v13, Lcom/android/internal/app/ResolverActivity$ShareStarTarget;

    invoke-direct {v13, v7}, Lcom/android/internal/app/ResolverActivity$ShareStarTarget;-><init>(Landroid/service/chooser/ChooserTarget;)V

    .line 941
    .local v13, "shareStarTarget":Lcom/android/internal/app/ResolverActivity$ShareStarTarget;
    const/16 v19, 0x0

    move/from16 v15, v19

    .local v15, "j":I
    :goto_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v15, v14, :cond_a

    .line 942
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;

    .line 943
    .local v14, "ssii":Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;
    if-eqz v14, :cond_6

    move/from16 v21, v1

    .end local v1    # "shouldNotify":Z
    .local v21, "shouldNotify":Z
    iget-object v1, v14, Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v7}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v7}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 944
    iget-object v1, v14, Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v22

    move/from16 v23, v3

    .end local v3    # "lastScore":F
    .local v23, "lastScore":F
    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 945
    invoke-virtual {v7}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, v14, Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;->mItemLabel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 946
    iget-wide v8, v14, Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;->mScore:D

    double-to-float v1, v8

    iput v1, v13, Lcom/android/internal/app/ResolverActivity$ShareStarTarget;->mShareStarScore:F

    goto :goto_7

    .line 943
    .end local v23    # "lastScore":F
    .restart local v3    # "lastScore":F
    :cond_5
    move/from16 v23, v3

    .end local v3    # "lastScore":F
    .restart local v23    # "lastScore":F
    goto :goto_4

    .end local v21    # "shouldNotify":Z
    .end local v23    # "lastScore":F
    .restart local v1    # "shouldNotify":Z
    .restart local v3    # "lastScore":F
    :cond_6
    move/from16 v21, v1

    move/from16 v23, v3

    .line 949
    .end local v1    # "shouldNotify":Z
    .end local v3    # "lastScore":F
    .restart local v21    # "shouldNotify":Z
    .restart local v23    # "lastScore":F
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalied Name Package : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "ssi null"

    goto :goto_6

    .line 951
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v14, Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " targetComponent : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 950
    invoke-virtual {v7}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " title : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 951
    invoke-virtual {v7}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 949
    :goto_6
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    .end local v14    # "ssii":Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;
    :cond_9
    :goto_7
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v1, v21

    move/from16 v3, v23

    goto/16 :goto_3

    .end local v21    # "shouldNotify":Z
    .end local v23    # "lastScore":F
    .restart local v1    # "shouldNotify":Z
    .restart local v3    # "lastScore":F
    :cond_a
    move/from16 v21, v1

    move/from16 v23, v3

    .line 954
    .end local v1    # "shouldNotify":Z
    .end local v3    # "lastScore":F
    .end local v15    # "j":I
    .restart local v21    # "shouldNotify":Z
    .restart local v23    # "lastScore":F
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 934
    .end local v7    # "target":Landroid/service/chooser/ChooserTarget;
    .end local v13    # "shareStarTarget":Lcom/android/internal/app/ResolverActivity$ShareStarTarget;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    goto/16 :goto_2

    .end local v21    # "shouldNotify":Z
    .end local v23    # "lastScore":F
    .restart local v1    # "shouldNotify":Z
    .restart local v3    # "lastScore":F
    :cond_b
    move/from16 v21, v1

    move/from16 v23, v3

    .line 958
    .end local v1    # "shouldNotify":Z
    .end local v3    # "lastScore":F
    .end local v4    # "i":I
    .restart local v21    # "shouldNotify":Z
    .restart local v23    # "lastScore":F
    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mShareStarTargetComparator:Lcom/android/internal/app/ChooserActivity$SemShareStarTargetComparator;

    invoke-static {v5, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 960
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v9, v1

    .end local v1    # "i":I
    .local v8, "count":I
    .local v9, "i":I
    :goto_8
    if-ge v9, v8, :cond_12

    .line 961
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$ShareStarTarget;

    iget-object v13, v1, Lcom/android/internal/app/ResolverActivity$ShareStarTarget;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    .line 963
    .local v13, "target":Landroid/service/chooser/ChooserTarget;
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$ShareStarTarget;

    iget v14, v1, Lcom/android/internal/app/ResolverActivity$ShareStarTarget;->mShareStarScore:F

    .line 964
    .local v14, "shareStarScore":F
    invoke-virtual {v13}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v1

    .line 965
    .local v1, "targetScore":F
    mul-float v1, v1, v16

    .line 966
    if-lez v9, :cond_c

    cmpl-float v2, v1, v23

    if-ltz v2, :cond_c

    .line 969
    const v2, 0x3f733333    # 0.95f

    mul-float v1, v23, v2

    .line 973
    :cond_c
    const/4 v2, 0x0

    cmpl-float v2, v14, v2

    if-lez v2, :cond_d

    .line 974
    move v1, v14

    .line 977
    :cond_d
    if-eqz v17, :cond_e

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    goto :goto_9

    .line 978
    :cond_e
    const/4 v2, 0x0

    :goto_9
    move-object v15, v2

    .line 979
    .local v15, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    if-eqz v15, :cond_f

    invoke-virtual {v15}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 980
    const/high16 v2, 0x447a0000    # 1000.0f

    add-float/2addr v1, v2

    move/from16 v22, v1

    goto :goto_a

    .line 982
    :cond_f
    move/from16 v22, v1

    .end local v1    # "targetScore":F
    .local v22, "targetScore":F
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    .line 983
    .local v7, "userHandle":Landroid/os/UserHandle;
    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v24

    .line 984
    .local v24, "contextAsUser":Landroid/content/Context;
    new-instance v4, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    iget-object v3, v0, Lcom/android/internal/app/ChooserListAdapter;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    move-object v1, v4

    move-object/from16 v2, v24

    move-object/from16 v25, v3

    move-object/from16 v3, p1

    move/from16 v26, v8

    move-object v8, v4

    .end local v8    # "count":I
    .local v26, "count":I
    move-object v4, v13

    move-object/from16 v27, v5

    .end local v5    # "shareStarTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ShareStarTarget;>;"
    .local v27, "shareStarTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ShareStarTarget;>;"
    move/from16 v5, v22

    move/from16 v28, v6

    .end local v6    # "maxTargets":I
    .local v28, "maxTargets":I
    move-object/from16 v6, v25

    move-object/from16 v18, v7

    move-object/from16 v25, v12

    const/4 v12, 0x1

    .end local v7    # "userHandle":Landroid/os/UserHandle;
    .end local v12    # "sstarFavoriteDirects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;>;"
    .local v18, "userHandle":Landroid/os/UserHandle;
    .local v25, "sstarFavoriteDirects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;>;"
    move-object v7, v15

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/chooser/SelectableTargetInfo;-><init>(Landroid/content/Context;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/service/chooser/ChooserTarget;FLcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;Landroid/content/pm/ShortcutInfo;)V

    invoke-direct {v0, v8}, Lcom/android/internal/app/ChooserListAdapter;->insertServiceTarget(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z

    move-result v1

    .line 989
    .local v1, "isInserted":Z
    if-eqz v1, :cond_10

    if-eqz v17, :cond_10

    .line 990
    iget v2, v0, Lcom/android/internal/app/ChooserListAdapter;->mNumShortcutResults:I

    add-int/2addr v2, v12

    iput v2, v0, Lcom/android/internal/app/ChooserListAdapter;->mNumShortcutResults:I

    .line 993
    :cond_10
    if-eqz v1, :cond_11

    .line 994
    iget-object v2, v0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    new-instance v3, Lcom/android/internal/app/ChooserListAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lcom/android/internal/app/ChooserListAdapter$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 998
    :cond_11
    or-int v21, v21, v1

    .line 1009
    move/from16 v23, v22

    .line 960
    .end local v1    # "isInserted":Z
    .end local v13    # "target":Landroid/service/chooser/ChooserTarget;
    .end local v14    # "shareStarScore":F
    .end local v15    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    .end local v18    # "userHandle":Landroid/os/UserHandle;
    .end local v22    # "targetScore":F
    .end local v24    # "contextAsUser":Landroid/content/Context;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v12, v25

    move/from16 v8, v26

    move-object/from16 v5, v27

    move/from16 v6, v28

    goto/16 :goto_8

    .end local v25    # "sstarFavoriteDirects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;>;"
    .end local v26    # "count":I
    .end local v27    # "shareStarTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ShareStarTarget;>;"
    .end local v28    # "maxTargets":I
    .restart local v5    # "shareStarTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ShareStarTarget;>;"
    .restart local v6    # "maxTargets":I
    .restart local v8    # "count":I
    .restart local v12    # "sstarFavoriteDirects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;>;"
    :cond_12
    move-object/from16 v27, v5

    move/from16 v28, v6

    move/from16 v26, v8

    move-object/from16 v25, v12

    .end local v5    # "shareStarTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ShareStarTarget;>;"
    .end local v6    # "maxTargets":I
    .end local v8    # "count":I
    .end local v12    # "sstarFavoriteDirects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;>;"
    .restart local v25    # "sstarFavoriteDirects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;>;"
    .restart local v26    # "count":I
    .restart local v27    # "shareStarTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ShareStarTarget;>;"
    .restart local v28    # "maxTargets":I
    move-object/from16 v8, p1

    move-object/from16 v13, p2

    goto/16 :goto_18

    .line 839
    .end local v9    # "i":I
    .end local v16    # "baseScore":F
    .end local v17    # "isShortcutResult":Z
    .end local v21    # "shouldNotify":Z
    .end local v23    # "lastScore":F
    .end local v25    # "sstarFavoriteDirects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;>;"
    .end local v26    # "count":I
    .end local v27    # "shareStarTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ShareStarTarget;>;"
    .end local v28    # "maxTargets":I
    .local v1, "shouldNotify":Z
    .restart local v12    # "sstarFavoriteDirects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;>;"
    :cond_13
    move/from16 v21, v1

    move-object/from16 v25, v12

    const/4 v12, 0x1

    .line 841
    .end local v1    # "shouldNotify":Z
    .end local v12    # "sstarFavoriteDirects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;>;"
    .restart local v21    # "shouldNotify":Z
    .restart local v25    # "sstarFavoriteDirects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;>;"
    :goto_b
    move-object/from16 v8, p1

    invoke-virtual {v0, v8, v10}, Lcom/android/internal/app/ChooserListAdapter;->getBaseScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;I)F

    move-result v9

    .line 842
    .local v9, "baseScore":F
    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    move-object/from16 v13, p2

    invoke-static {v13, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 844
    if-eq v10, v4, :cond_15

    if-ne v10, v3, :cond_14

    goto :goto_c

    :cond_14
    const/4 v7, 0x0

    goto :goto_d

    :cond_15
    :goto_c
    move v7, v12

    :goto_d
    move v14, v7

    .line 848
    .local v14, "isShortcutResult":Z
    if-eqz v14, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v1

    if-ge v1, v12, :cond_16

    .line 849
    iget v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mMaxShortcutTargetsPerApp:I

    add-int/lit8 v4, v1, 0x1

    goto :goto_e

    :cond_16
    iget v4, v0, Lcom/android/internal/app/ChooserListAdapter;->mMaxShortcutTargetsPerApp:I

    goto :goto_e

    .line 850
    :cond_17
    nop

    :goto_e
    move v15, v4

    .line 852
    .local v15, "maxTargets":I
    iget-boolean v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mApplySharingAppLimits:Z

    if-eqz v1, :cond_18

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, v15}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_f

    .line 853
    :cond_18
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    :goto_f
    nop

    .line 854
    .local v1, "targetsLimit":I
    const/4 v3, 0x0

    .line 855
    .restart local v3    # "lastScore":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "maxTargets = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", service target = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    sget-boolean v4, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_SUPPORT_SECURE_FOLDER_PRIVATE_SHARE:Z

    const-string v7, "com.samsung.android.privateshare"

    if-eqz v4, :cond_19

    .line 858
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 859
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 860
    const/4 v1, 0x1

    .line 861
    sput v12, Lcom/android/internal/app/ChooserListAdapter;->MAX_DEVICE_TARGETS:I

    .line 862
    const-string v4, "Shortcut for private share is added. MAX_DEVICE_TARGETS is changed"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v1

    goto :goto_10

    .line 866
    :cond_19
    move/from16 v16, v1

    .end local v1    # "targetsLimit":I
    .local v16, "targetsLimit":I
    :goto_10
    const/4 v1, 0x0

    .local v1, "i":I
    move/from16 v6, v16

    move v5, v1

    move/from16 v17, v3

    .end local v1    # "i":I
    .end local v3    # "lastScore":F
    .local v5, "i":I
    .local v6, "count":I
    .local v17, "lastScore":F
    :goto_11
    if-ge v5, v6, :cond_22

    .line 867
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/service/chooser/ChooserTarget;

    .line 868
    .local v4, "target":Landroid/service/chooser/ChooserTarget;
    invoke-virtual {v4}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v1

    .line 869
    .local v1, "targetScore":F
    iget-boolean v2, v0, Lcom/android/internal/app/ChooserListAdapter;->mApplySharingAppLimits:Z

    if-eqz v2, :cond_1b

    .line 870
    mul-float/2addr v1, v9

    .line 871
    if-lez v5, :cond_1a

    cmpl-float v2, v1, v17

    if-ltz v2, :cond_1a

    .line 874
    const v18, 0x3f733333    # 0.95f

    mul-float v1, v17, v18

    goto :goto_12

    .line 871
    :cond_1a
    const v18, 0x3f733333    # 0.95f

    goto :goto_12

    .line 869
    :cond_1b
    const v18, 0x3f733333    # 0.95f

    .line 878
    :goto_12
    iget-object v2, v0, Lcom/android/internal/app/ChooserListAdapter;->mFavoriteTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1d

    .line 879
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_13
    iget-object v3, v0, Lcom/android/internal/app/ChooserListAdapter;->mFavoriteTargets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 880
    iget-object v3, v0, Lcom/android/internal/app/ChooserListAdapter;->mFavoriteTargets:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 881
    invoke-virtual {v4}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 880
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 882
    iget-object v3, v0, Lcom/android/internal/app/ChooserListAdapter;->mFavoriteTargets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 883
    goto :goto_14

    .line 879
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    const/4 v12, 0x1

    goto :goto_13

    .line 888
    .end local v2    # "j":I
    :cond_1d
    :goto_14
    sget-boolean v2, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_SUPPORT_SECURE_FOLDER_PRIVATE_SHARE:Z

    if-eqz v2, :cond_1e

    .line 889
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 890
    invoke-virtual {v4}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 891
    const/high16 v2, 0x42c80000    # 100.0f

    add-float/2addr v1, v2

    move v12, v1

    goto :goto_15

    .line 895
    :cond_1e
    move v12, v1

    .end local v1    # "targetScore":F
    .local v12, "targetScore":F
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 896
    .local v3, "userHandle":Landroid/os/UserHandle;
    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v19

    .line 897
    .local v19, "contextAsUser":Landroid/content/Context;
    new-instance v1, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    move/from16 v20, v6

    .end local v6    # "count":I
    .local v20, "count":I
    iget-object v6, v0, Lcom/android/internal/app/ChooserListAdapter;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    .line 899
    if-eqz v14, :cond_1f

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ShortcutInfo;

    goto :goto_16

    :cond_1f
    const/16 v23, 0x0

    :goto_16
    move-object/from16 v24, v1

    move/from16 v26, v2

    move-object/from16 v2, v19

    move-object/from16 v27, v3

    .end local v3    # "userHandle":Landroid/os/UserHandle;
    .local v27, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v3, p1

    move-object/from16 v28, v4

    .end local v4    # "target":Landroid/service/chooser/ChooserTarget;
    .local v28, "target":Landroid/service/chooser/ChooserTarget;
    move/from16 v29, v5

    .end local v5    # "i":I
    .local v29, "i":I
    move v5, v12

    move-object/from16 v30, v7

    move-object/from16 v7, v23

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/chooser/SelectableTargetInfo;-><init>(Landroid/content/Context;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/service/chooser/ChooserTarget;FLcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;Landroid/content/pm/ShortcutInfo;)V

    .line 897
    invoke-direct {v0, v1}, Lcom/android/internal/app/ChooserListAdapter;->insertServiceTarget(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z

    move-result v1

    .line 901
    .local v1, "isInserted":Z
    if-eqz v1, :cond_20

    if-eqz v14, :cond_20

    .line 902
    iget v2, v0, Lcom/android/internal/app/ChooserListAdapter;->mNumShortcutResults:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/internal/app/ChooserListAdapter;->mNumShortcutResults:I

    goto :goto_17

    .line 901
    :cond_20
    const/4 v3, 0x1

    .line 905
    :goto_17
    if-eqz v1, :cond_21

    .line 906
    iget-object v2, v0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    new-instance v4, Lcom/android/internal/app/ChooserListAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lcom/android/internal/app/ChooserListAdapter$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 910
    :cond_21
    or-int v21, v21, v1

    .line 918
    move/from16 v17, v12

    .line 866
    .end local v1    # "isInserted":Z
    .end local v12    # "targetScore":F
    .end local v19    # "contextAsUser":Landroid/content/Context;
    .end local v27    # "userHandle":Landroid/os/UserHandle;
    .end local v28    # "target":Landroid/service/chooser/ChooserTarget;
    add-int/lit8 v5, v29, 0x1

    move v12, v3

    move/from16 v6, v20

    move-object/from16 v7, v30

    .end local v29    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_11

    .end local v20    # "count":I
    .restart local v6    # "count":I
    :cond_22
    move/from16 v29, v5

    move/from16 v20, v6

    .line 920
    .end local v5    # "i":I
    .end local v6    # "count":I
    .end local v9    # "baseScore":F
    .end local v14    # "isShortcutResult":Z
    .end local v15    # "maxTargets":I
    .end local v16    # "targetsLimit":I
    .end local v17    # "lastScore":F
    nop

    .line 1014
    :goto_18
    if-eqz v21, :cond_23

    .line 1015
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    .line 1017
    :cond_23
    return-void
.end method

.method protected blacklist alwaysShowSubLabel()Z
    .locals 1

    .line 1116
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist bindView(ILandroid/view/View;I)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "adapterType"    # I

    .line 1533
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/internal/app/ChooserListAdapter;->onBindView(Landroid/view/View;Lcom/android/internal/app/chooser/TargetInfo;I)V

    .line 1534
    return-void
.end method

.method public blacklist completeServiceTargetLoading()V
    .locals 3

    .line 1057
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ChooserListAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/internal/app/ChooserListAdapter$$ExternalSyntheticLambda3;-><init>()V

    .line 1058
    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 1059
    .local v0, "bNeedUpdate":Z
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1060
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    new-instance v2, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;

    invoke-direct {v2}, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    invoke-interface {v1}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetEmptyDirectShareRow()V

    .line 1062
    const/4 v0, 0x1

    .line 1066
    :cond_0
    if-eqz v0, :cond_1

    .line 1068
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    .line 1070
    :cond_1
    return-void
.end method

.method blacklist createSortingTask(Z)Landroid/os/AsyncTask;
    .locals 1
    .param p1, "doPostProcessing"    # Z
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

    .line 1132
    new-instance v0, Lcom/android/internal/app/ChooserListAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ChooserListAdapter$3;-><init>(Lcom/android/internal/app/ChooserListAdapter;Z)V

    return-object v0
.end method

.method public final blacklist createViewForSelectApp(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 1711
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090158

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1712
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1715
    .local v1, "holder":Lcom/android/internal/app/ResolverListAdapter$ViewHolder;
    iget-object v2, v1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v3, 0x1050469

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ChooserListAdapter;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    .line 1716
    iget-object v2, v1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const v3, 0x105046a

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ChooserListAdapter;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    .line 1719
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1720
    return-object v0
.end method

.method public blacklist destroyAppPredictor()V
    .locals 2

    .line 1182
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getAppPredictor()Landroid/app/prediction/AppPredictor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1183
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getAppPredictor()Landroid/app/prediction/AppPredictor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictorCallback:Landroid/app/prediction/AppPredictor$Callback;

    invoke-virtual {v0, v1}, Landroid/app/prediction/AppPredictor;->unregisterPredictionUpdates(Landroid/app/prediction/AppPredictor$Callback;)V

    .line 1184
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getAppPredictor()Landroid/app/prediction/AppPredictor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/prediction/AppPredictor;->destroy()V

    .line 1185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserListAdapter;->setAppPredictor(Landroid/app/prediction/AppPredictor;)V

    .line 1187
    :cond_0
    return-void
.end method

.method blacklist getAlphaTargetCount()I
    .locals 3

    .line 663
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 664
    .local v0, "groupedCount":I
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 665
    .local v1, "ungroupedCount":I
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

    .line 337
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictor:Landroid/app/prediction/AppPredictor;

    return-object v0
.end method

.method public blacklist getBaseScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;I)F
    .locals 2
    .param p1, "target"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p2, "targetType"    # I

    .line 1041
    if-nez p1, :cond_0

    .line 1042
    const/high16 v0, 0x44610000    # 900.0f

    return v0

    .line 1044
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->getScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;)F

    move-result v0

    .line 1045
    .local v0, "score":F
    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    goto :goto_0

    .line 1049
    :cond_1
    return v0

    .line 1047
    :cond_2
    :goto_0
    const v1, 0x3fa66666    # 1.3f

    mul-float/2addr v1, v0

    return v1
.end method

.method public blacklist getCallerTargetCount()I
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getChooserTargetForValue(I)Landroid/service/chooser/ChooserTarget;
    .locals 1
    .param p1, "value"    # I

    .line 1111
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

    .line 611
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->semGetSortedTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 613
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->semGetDeviceTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 615
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 611
    return v0
.end method

.method public blacklist getItem(I)Lcom/android/internal/app/chooser/TargetInfo;
    .locals 1
    .param p1, "position"    # I

    .line 720
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist getItem(I)Ljava/lang/Object;
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object p1

    return-object p1
.end method

.method blacklist getNumServiceTargetsForExpand()I
    .locals 1

    .line 1026
    iget v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mNumShortcutResults:I

    return v0
.end method

.method public blacklist getPositionTargetType(I)I
    .locals 6
    .param p1, "position"    # I

    .line 682
    const/4 v0, 0x0

    .line 684
    .local v0, "offset":I
    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_NEARBY_SHARING:Z

    if-eqz v1, :cond_1

    .line 685
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->semGetDeviceTargetCount()I

    move-result v1

    .line 686
    .local v1, "deviceTargetCount":I
    sub-int v2, p1, v0

    if-ge v2, v1, :cond_0

    .line 687
    const/4 v2, 0x4

    return v2

    .line 689
    :cond_0
    add-int/2addr v0, v1

    .line 692
    .end local v1    # "deviceTargetCount":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getServiceTargetCount()I

    move-result v1

    .line 693
    .local v1, "serviceTargetCount":I
    sub-int v2, p1, v0

    if-ge v2, v1, :cond_2

    .line 694
    const/4 v2, 0x1

    return v2

    .line 696
    :cond_2
    add-int/2addr v0, v1

    .line 698
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v2

    .line 699
    .local v2, "callerTargetCount":I
    sub-int v3, p1, v0

    if-ge v3, v2, :cond_3

    .line 700
    const/4 v3, 0x0

    return v3

    .line 702
    :cond_3
    add-int/2addr v0, v2

    .line 704
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v3

    .line 705
    .local v3, "rankedTargetCount":I
    sub-int v4, p1, v0

    if-ge v4, v3, :cond_4

    .line 706
    const/4 v4, 0x2

    return v4

    .line 708
    :cond_4
    add-int/2addr v0, v3

    .line 710
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->semGetSortedTargetCount()I

    move-result v4

    .line 711
    .local v4, "standardTargetCount":I
    sub-int v5, p1, v0

    if-ge v5, v4, :cond_5

    .line 712
    const/4 v5, 0x3

    return v5

    .line 715
    :cond_5
    const/4 v5, -0x1

    return v5
.end method

.method public blacklist getRankedTargetCount()I
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mRankedTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mRankedTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public blacklist getSelectableServiceTargetCount()I
    .locals 4

    .line 636
    const/4 v0, 0x0

    .line 637
    .local v0, "count":I
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

    .line 638
    .local v2, "info":Lcom/android/internal/app/chooser/ChooserTargetInfo;
    instance-of v3, v2, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    if-eqz v3, :cond_0

    .line 639
    add-int/lit8 v0, v0, 0x1

    .line 641
    .end local v2    # "info":Lcom/android/internal/app/chooser/ChooserTargetInfo;
    :cond_0
    goto :goto_0

    .line 642
    :cond_1
    return v0
.end method

.method public blacklist getServiceTargetCount()I
    .locals 2

    .line 646
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 655
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

    .line 810
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v0

    .line 811
    .local v0, "maxSurfacedTargets":I
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    .line 812
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 811
    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getUnfilteredCount()I
    .locals 3

    .line 620
    invoke-super {p0}, Lcom/android/internal/app/ResolverListAdapter;->getUnfilteredCount()I

    move-result v0

    .line 621
    .local v0, "appTargets":I
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 622
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v1

    add-int/2addr v0, v1

    .line 624
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 625
    sget-boolean v2, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_NEARBY_SHARING:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->semGetDeviceTargetCount()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 624
    return v1
.end method

.method public blacklist handlePackagesChanged()V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semGetOldItemCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getPlaceholderCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/android/internal/app/ChooserListAdapter;->createPlaceHolders()V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v0, p0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 350
    return-void
.end method

.method synthetic blacklist lambda$semUpdateRankedAppsMoreAppsList$4$com-android-internal-app-ChooserListAdapter(Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/chooser/DisplayResolveInfo;)I
    .locals 2
    .param p1, "a"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p2, "b"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1605
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ChooserListAdapter;->getScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserListAdapter;->getScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$semUpdateRankedAppsMoreAppsList$5$com-android-internal-app-ChooserListAdapter(Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/chooser/DisplayResolveInfo;)I
    .locals 2
    .param p1, "a"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p2, "b"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1698
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ChooserListAdapter;->getScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserListAdapter;->getScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public whitelist notifyDataSetChanged()V
    .locals 2

    .line 354
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mListViewDataChanged:Z

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->sendListViewUpdateMessage(Landroid/os/UserHandle;)V

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mListViewDataChanged:Z

    .line 358
    :cond_0
    return-void
.end method

.method protected blacklist onBindView(Landroid/view/View;Lcom/android/internal/app/chooser/TargetInfo;I)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p3, "position"    # I

    .line 401
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 403
    .local v0, "holder":Lcom/android/internal/app/ResolverListAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 404
    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x1080828

    .line 405
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 404
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    return-void

    .line 410
    :cond_0
    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->cn:Landroid/content/ComponentName;

    .line 411
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ChooserListAdapter;->getPositionTargetType(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->viewType:I

    .line 412
    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->userId:I

    .line 415
    instance-of v1, p2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v1, :cond_5

    .line 416
    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->alwaysShowSubLabel()Z

    move-result v7

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 417
    invoke-virtual {v0, p2}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindIcon(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 419
    instance-of v1, p2, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    if-eqz v1, :cond_8

    .line 421
    move-object v1, p2

    check-cast v1, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDisplayResolveInfo()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v1

    .line 422
    .local v1, "rInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    const-string v6, ""

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v7, v6

    .line 423
    .local v7, "appName":Ljava/lang/CharSequence;
    :goto_0
    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v8

    .line 424
    .local v8, "extendedInfo":Ljava/lang/CharSequence;
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/CharSequence;

    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v5

    .line 425
    if-eqz v8, :cond_2

    move-object v6, v8

    :cond_2
    aput-object v6, v9, v3

    aput-object v7, v9, v4

    .line 424
    const-string v6, " "

    invoke-static {v6, v9}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 426
    .local v6, "contentDescription":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->updateContentDescription(Ljava/lang/String;)V

    .line 429
    iget-object v9, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->badge:Landroid/widget/ImageView;

    if-eqz v9, :cond_4

    .line 430
    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->semGetBadgeIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 431
    .local v9, "badge":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_3

    .line 432
    iget-object v10, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 433
    iget-object v10, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->semGetBadgeContentDescription()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v10, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 436
    :cond_3
    iget-object v10, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 440
    .end local v1    # "rInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v6    # "contentDescription":Ljava/lang/String;
    .end local v7    # "appName":Ljava/lang/CharSequence;
    .end local v8    # "extendedInfo":Ljava/lang/CharSequence;
    .end local v9    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_1
    goto :goto_3

    .line 442
    :cond_5
    move-object v1, p2

    check-cast v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 443
    .local v1, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->alwaysShowSubLabel()Z

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 445
    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->semIsNonePackageItem()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 446
    invoke-virtual {v0, p2}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindIcon(Lcom/android/internal/app/chooser/TargetInfo;)V

    goto :goto_3

    .line 449
    :cond_6
    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v6

    if-nez v6, :cond_7

    .line 451
    :try_start_0
    new-instance v6, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;

    invoke-direct {v6, p0, v1, v0}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;-><init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter$ViewHolder;)V

    .line 452
    .local v6, "iconTask":Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;
    sget-object v7, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v8, v5, [Ljava/lang/Void;

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 453
    invoke-virtual {v6}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->semSetCheckViewHolder()V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "iconTask":Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;
    goto :goto_2

    .line 454
    :catch_0
    move-exception v6

    .line 455
    .local v6, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v7, "ChooserListAdapter"

    const-string v8, "LoadIconTask failed!!"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    .end local v6    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_2
    goto :goto_3

    .line 458
    :cond_7
    invoke-virtual {v0, p2}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindIcon(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 476
    .end local v1    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :cond_8
    :goto_3
    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_NEARBY_SHARING:Z

    const/4 v6, 0x0

    if-eqz v1, :cond_d

    instance-of v1, p2, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    if-eqz v1, :cond_d

    move-object v1, p2

    check-cast v1, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    .line 478
    invoke-virtual {v1}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->isDeviceTarget()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 479
    move-object v1, p2

    check-cast v1, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDeviceShareStatusLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 481
    .local v1, "statusLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 482
    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 484
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v4, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 485
    iget-object v3, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 486
    iget-object v3, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v3, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 489
    move-object v3, p2

    check-cast v3, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDeviceShareStatus()I

    move-result v3

    .line 490
    .local v3, "status":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_b

    const/4 v4, 0x5

    if-ne v3, v4, :cond_9

    goto :goto_4

    .line 492
    :cond_9
    const/4 v4, 0x4

    if-ne v3, v4, :cond_a

    .line 493
    iget-object v4, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const v5, 0x10602e9

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 495
    :cond_a
    iget-object v4, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const v5, 0x1060358

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 491
    :cond_b
    :goto_4
    iget-object v4, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const v5, 0x10602e8

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 497
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "status":I
    :goto_5
    goto :goto_6

    .line 498
    :cond_c
    iget-object v3, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLines(I)V

    .line 499
    iget-object v3, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 500
    iget-object v3, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    .end local v1    # "statusLabel":Ljava/lang/CharSequence;
    :goto_6
    goto/16 :goto_9

    .line 503
    :cond_d
    instance-of v1, p2, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;

    if-eqz v1, :cond_e

    .line 504
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 506
    .local v1, "maxWidth":I
    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 507
    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1080267

    iget-object v9, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    .line 508
    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    .line 507
    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 510
    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 511
    .end local v1    # "maxWidth":I
    goto :goto_7

    .line 512
    :cond_e
    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 513
    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 514
    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->defaultItemViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 524
    :goto_7
    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_SUPPORT_SECURE_FOLDER_PRIVATE_SHARE:Z

    if-nez v1, :cond_12

    .line 525
    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0, p3}, Lcom/android/internal/app/ChooserListAdapter;->getPositionTargetType(I)I

    move-result v1

    if-eq v1, v4, :cond_f

    .line 526
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ChooserListAdapter;->getPositionTargetType(I)I

    move-result v1

    if-ne v1, v3, :cond_12

    .line 529
    :cond_f
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x10808ce

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 530
    .local v1, "bkg":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_11

    .line 531
    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMinLines()I

    move-result v2

    if-ne v2, v4, :cond_10

    .line 532
    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    goto :goto_8

    .line 534
    :cond_10
    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 536
    :goto_8
    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 537
    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/ChooserListAdapter;->mPinTextSpacingListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 539
    .end local v1    # "bkg":Landroid/graphics/drawable/Drawable;
    :cond_11
    goto :goto_9

    .line 540
    :cond_12
    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 541
    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 544
    :goto_9
    return-void
.end method

.method blacklist onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 390
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090151

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method blacklist refreshListView()V
    .locals 1

    .line 361
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mListViewDataChanged:Z

    if-eqz v0, :cond_0

    .line 362
    invoke-super {p0}, Lcom/android/internal/app/ResolverListAdapter;->notifyDataSetChanged()V

    .line 364
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mListViewDataChanged:Z

    .line 365
    return-void
.end method

.method public blacklist sem(I)Ljava/util/List;
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/ChooserTargetInfo;",
            ">;"
        }
    .end annotation

    .line 1301
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargets:Ljava/util/List;

    return-object v0
.end method

.method blacklist semAddCopyButton(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .locals 5
    .param p1, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1796
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mPreloadAppTargets:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;

    .line 1797
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v1, v3, p1, v2, v4}, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;-><init>(ILcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1796
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1798
    return-void
.end method

.method public blacklist semAddCustomTargets()V
    .locals 3

    .line 1254
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_NEARBY_SHARING:Z

    if-eqz v0, :cond_0

    .line 1255
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mShareLiveDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mShareLiveDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1267
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mShareLiveDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1271
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_CHIP_BUTTON_FOR_NEARBY:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->semIsNeedCopyButton()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1272
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mCopyButtonDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-nez v0, :cond_2

    .line 1273
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->semCreateCopyButtonResolveInfo()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mCopyButtonDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1275
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mCopyButtonDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1276
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mCopyButtonDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1280
    :cond_3
    return-void
.end method

.method public blacklist semAddDeviceTargetResults(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;)V
    .locals 23
    .param p1, "origTarget"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;)V"
        }
    .end annotation

    .line 1305
    .local p2, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserListAdapter;->semIsSupportDirectShare()Z

    move-result v1

    const-string v2, "ChooserListAdapter"

    if-nez v1, :cond_0

    .line 1306
    const-string v1, "Direct share setting is off"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    return-void

    .line 1310
    :cond_0
    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->semIsExifProgressExecuted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1311
    return-void

    .line 1314
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 1315
    const-string v1, "addDeviceTargetResults: targets size is 0"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    return-void

    .line 1319
    :cond_2
    if-nez v8, :cond_3

    .line 1320
    const-string v1, "addDeviceTargetResults: origTarget is null"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    return-void

    .line 1327
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    .line 1328
    .local v10, "userHandle":Landroid/os/UserHandle;
    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v12

    .line 1329
    .local v12, "contextAsUser":Landroid/content/Context;
    const/4 v13, 0x0

    .line 1331
    .local v13, "bNeedUpdate":Z
    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v1, v8}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->semIsDeviceTargetComponent(Lcom/android/internal/app/chooser/TargetInfo;)Z

    move-result v1

    const/4 v14, 0x1

    if-eqz v1, :cond_11

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_11

    .line 1332
    sget v15, Lcom/android/internal/app/ChooserListAdapter;->MAX_DEVICE_TARGETS:I

    .line 1333
    .local v15, "maxDeviceCountToShow":I
    const/4 v1, 0x0

    .line 1334
    .local v1, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    iget-object v3, v0, Lcom/android/internal/app/ChooserListAdapter;->mNearbyShareDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v3, :cond_4

    .line 1335
    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mNearbyShareDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-object/from16 v16, v1

    goto :goto_0

    .line 1336
    :cond_4
    iget-object v3, v0, Lcom/android/internal/app/ChooserListAdapter;->mShareLiveDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v3, :cond_5

    .line 1337
    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mShareLiveDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-object/from16 v16, v1

    goto :goto_0

    .line 1336
    :cond_5
    move-object/from16 v16, v1

    .line 1340
    .end local v1    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .local v16, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :goto_0
    if-nez v16, :cond_6

    .line 1341
    const-string v1, "addDeviceTargetResults: dri is null"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    return-void

    .line 1345
    :cond_6
    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    invoke-static {v9, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1347
    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mOldDeviceTargetsCount:I

    .line 1349
    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/android/internal/app/ChooserListAdapter;->MAX_DEVICE_TARGETS:I

    if-lt v1, v2, :cond_c

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/android/internal/app/ChooserListAdapter;->MAX_DEVICE_TARGETS:I

    if-ge v1, v2, :cond_c

    .line 1350
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v14, :cond_11

    .line 1351
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/service/chooser/ChooserTarget;

    .line 1352
    .local v7, "target":Landroid/service/chooser/ChooserTarget;
    invoke-virtual {v7}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 1354
    .local v6, "extras":Landroid/os/Bundle;
    if-eqz v6, :cond_b

    .line 1355
    const/4 v1, -0x1

    .line 1356
    .local v1, "deviceTobeUpdated":I
    const-string v2, "deviceId"

    const-string v3, ""

    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1357
    .local v5, "devId":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    iget-object v3, v0, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 1358
    iget-object v3, v0, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargets:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    .line 1359
    .local v3, "prevSti":Lcom/android/internal/app/chooser/SelectableTargetInfo;
    invoke-virtual {v3}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDeviceShareId()Ljava/lang/String;

    move-result-object v4

    .line 1361
    .local v4, "prevDevId":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1362
    move v1, v2

    .line 1363
    move v4, v1

    goto :goto_2

    .line 1357
    .end local v3    # "prevSti":Lcom/android/internal/app/chooser/SelectableTargetInfo;
    .end local v4    # "prevDevId":Ljava/lang/String;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    move v4, v1

    .line 1368
    .end local v1    # "deviceTobeUpdated":I
    .end local v2    # "index":I
    .local v4, "deviceTobeUpdated":I
    :goto_2
    const/4 v3, -0x1

    if-eq v4, v3, :cond_9

    invoke-virtual {v0, v4, v7}, Lcom/android/internal/app/ChooserListAdapter;->semCompareWithPreviousDeviceItems(ILandroid/service/chooser/ChooserTarget;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1369
    return-void

    .line 1372
    :cond_9
    invoke-virtual {v7}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v17

    .line 1373
    .local v17, "targetScore":F
    new-instance v18, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    iget-object v2, v0, Lcom/android/internal/app/ChooserListAdapter;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    const/16 v19, 0x0

    move-object/from16 v1, v18

    move-object/from16 v20, v2

    move-object v2, v12

    move v14, v3

    move-object/from16 v3, p1

    move v11, v4

    .end local v4    # "deviceTobeUpdated":I
    .local v11, "deviceTobeUpdated":I
    move-object v4, v7

    move-object/from16 v21, v5

    .end local v5    # "devId":Ljava/lang/String;
    .local v21, "devId":Ljava/lang/String;
    move/from16 v5, v17

    move-object/from16 v22, v6

    .end local v6    # "extras":Landroid/os/Bundle;
    .local v22, "extras":Landroid/os/Bundle;
    move-object/from16 v6, v20

    move-object/from16 v20, v7

    .end local v7    # "target":Landroid/service/chooser/ChooserTarget;
    .local v20, "target":Landroid/service/chooser/ChooserTarget;
    move-object/from16 v7, v19

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/chooser/SelectableTargetInfo;-><init>(Landroid/content/Context;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/service/chooser/ChooserTarget;FLcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;Landroid/content/pm/ShortcutInfo;)V

    .line 1375
    .local v1, "curSti":Lcom/android/internal/app/chooser/SelectableTargetInfo;
    const/4 v2, 0x1

    .line 1377
    .end local v13    # "bNeedUpdate":Z
    .local v2, "bNeedUpdate":Z
    iget-object v3, v0, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargets:Ljava/util/List;

    if-eq v11, v14, :cond_a

    move v4, v11

    goto :goto_3

    :cond_a
    const/4 v4, 0x0

    :goto_3
    invoke-interface {v3, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v13, v2

    goto :goto_4

    .line 1354
    .end local v1    # "curSti":Lcom/android/internal/app/chooser/SelectableTargetInfo;
    .end local v2    # "bNeedUpdate":Z
    .end local v11    # "deviceTobeUpdated":I
    .end local v17    # "targetScore":F
    .end local v20    # "target":Landroid/service/chooser/ChooserTarget;
    .end local v21    # "devId":Ljava/lang/String;
    .end local v22    # "extras":Landroid/os/Bundle;
    .restart local v6    # "extras":Landroid/os/Bundle;
    .restart local v7    # "target":Landroid/service/chooser/ChooserTarget;
    .restart local v13    # "bNeedUpdate":Z
    :cond_b
    move-object/from16 v22, v6

    move-object/from16 v20, v7

    .line 1379
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v7    # "target":Landroid/service/chooser/ChooserTarget;
    :goto_4
    goto/16 :goto_8

    .line 1381
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserListAdapter;->semDeviceTargetIsEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1382
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, v0, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_d

    .line 1383
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v15, :cond_10

    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargets:Ljava/util/List;

    .line 1384
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v15, :cond_10

    .line 1404
    :cond_d
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v14, v13

    move v13, v1

    .end local v1    # "i":I
    .local v11, "N":I
    .local v13, "i":I
    .local v14, "bNeedUpdate":Z
    :goto_5
    if-ge v13, v11, :cond_f

    .line 1405
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/service/chooser/ChooserTarget;

    .line 1406
    .restart local v7    # "target":Landroid/service/chooser/ChooserTarget;
    invoke-virtual {v7}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v17

    .line 1408
    .restart local v17    # "targetScore":F
    invoke-virtual {v0, v13, v7}, Lcom/android/internal/app/ChooserListAdapter;->semCompareWithPreviousDeviceItems(ILandroid/service/chooser/ChooserTarget;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1409
    goto :goto_6

    .line 1412
    :cond_e
    new-instance v18, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    iget-object v6, v0, Lcom/android/internal/app/ChooserListAdapter;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    const/16 v19, 0x0

    move-object/from16 v1, v18

    move-object v2, v12

    move-object/from16 v3, p1

    move-object v4, v7

    move/from16 v5, v17

    move-object/from16 v20, v7

    .end local v7    # "target":Landroid/service/chooser/ChooserTarget;
    .restart local v20    # "target":Landroid/service/chooser/ChooserTarget;
    move-object/from16 v7, v19

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/chooser/SelectableTargetInfo;-><init>(Landroid/content/Context;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/service/chooser/ChooserTarget;FLcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;Landroid/content/pm/ShortcutInfo;)V

    .line 1414
    .local v1, "curSti":Lcom/android/internal/app/chooser/SelectableTargetInfo;
    const/4 v14, 0x1

    .line 1415
    iget-object v2, v0, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargets:Ljava/util/List;

    invoke-interface {v2, v13, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1404
    .end local v1    # "curSti":Lcom/android/internal/app/chooser/SelectableTargetInfo;
    .end local v17    # "targetScore":F
    .end local v20    # "target":Landroid/service/chooser/ChooserTarget;
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_f
    move v13, v14

    .end local v11    # "N":I
    .end local v13    # "i":I
    goto :goto_8

    .line 1418
    .end local v14    # "bNeedUpdate":Z
    .local v13, "bNeedUpdate":Z
    :cond_10
    const/4 v13, 0x1

    .line 1421
    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1434
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v14, v1

    .end local v1    # "i":I
    .restart local v11    # "N":I
    .local v14, "i":I
    :goto_7
    if-ge v14, v11, :cond_11

    .line 1435
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroid/service/chooser/ChooserTarget;

    .line 1436
    .local v17, "target":Landroid/service/chooser/ChooserTarget;
    invoke-virtual/range {v17 .. v17}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v18

    .line 1438
    .local v18, "targetScore":F
    new-instance v19, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    iget-object v6, v0, Lcom/android/internal/app/ChooserListAdapter;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    const/4 v7, 0x0

    move-object/from16 v1, v19

    move-object v2, v12

    move-object/from16 v3, p1

    move-object/from16 v4, v17

    move/from16 v5, v18

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/chooser/SelectableTargetInfo;-><init>(Landroid/content/Context;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/service/chooser/ChooserTarget;FLcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;Landroid/content/pm/ShortcutInfo;)V

    .line 1441
    .local v1, "curSti":Lcom/android/internal/app/chooser/SelectableTargetInfo;
    iget-object v2, v0, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1442
    invoke-virtual {v1}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getShareId()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/ChooserListAdapter;->mShareLiveShareId:Ljava/lang/String;

    .line 1434
    .end local v1    # "curSti":Lcom/android/internal/app/chooser/SelectableTargetInfo;
    .end local v17    # "target":Landroid/service/chooser/ChooserTarget;
    .end local v18    # "targetScore":F
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 1448
    .end local v11    # "N":I
    .end local v14    # "i":I
    .end local v15    # "maxDeviceCountToShow":I
    .end local v16    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :cond_11
    :goto_8
    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_12

    .line 1449
    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    new-instance v2, Lcom/android/internal/app/ChooserListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/app/ChooserListAdapter$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_9

    .line 1451
    :cond_12
    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1452
    iget-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    new-instance v2, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;

    invoke-direct {v2}, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1453
    const/4 v13, 0x1

    .line 1457
    :cond_13
    :goto_9
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, v0, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1458
    .local v1, "badgeNum":I
    iget v2, v0, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargetsBadgeNumber:I

    .line 1459
    .local v2, "oldBadgeNum":I
    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargetsBadgeNumber:I

    .line 1460
    if-eq v4, v2, :cond_14

    .line 1461
    iget-object v3, v0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->semNotifyDirectShareDataChanged(I)V

    .line 1464
    :cond_14
    if-eqz v13, :cond_16

    .line 1465
    iget-object v3, v0, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, v0, Lcom/android/internal/app/ChooserListAdapter;->mOldDeviceTargetsCount:I

    if-eq v3, v4, :cond_15

    .line 1466
    iget-object v3, v0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->semNotifyDirectShareDataChanged(I)V

    goto :goto_a

    .line 1468
    :cond_15
    iget-object v3, v0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->semNotifyDirectShareDataChanged(I)V

    .line 1471
    :cond_16
    :goto_a
    return-void
.end method

.method blacklist semAddLinkSharingButton(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .locals 6
    .param p1, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1831
    const/4 v0, 0x0

    .line 1838
    .local v0, "extraStr":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1839
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mPreloadAppTargets:Ljava/util/List;

    new-instance v3, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;

    iget-object v4, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    .line 1840
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, p1, v4, v0}, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;-><init>(ILcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1839
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1841
    return-void
.end method

.method blacklist semAddNearbyShareButton(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .locals 5
    .param p1, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1826
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mPreloadAppTargets:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;

    .line 1827
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v3, p1, v2, v4}, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;-><init>(ILcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1826
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1828
    return-void
.end method

.method blacklist semAddPrivateShareButton(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .locals 5
    .param p1, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1806
    const/4 v0, 0x0

    .line 1821
    .local v0, "extraStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mPreloadAppTargets:Ljava/util/List;

    new-instance v2, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;

    .line 1822
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v4, p1, v3, v0}, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;-><init>(ILcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1821
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1823
    return-void
.end method

.method blacklist semAddTempLinkShareButton(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .locals 5
    .param p1, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1801
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mPreloadAppTargets:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;

    .line 1802
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v1, v3, p1, v2, v4}, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;-><init>(ILcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1801
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1803
    return-void
.end method

.method blacklist semCompareWithPreviousDeviceItems(ILandroid/service/chooser/ChooserTarget;)Z
    .locals 12
    .param p1, "index"    # I
    .param p2, "target"    # Landroid/service/chooser/ChooserTarget;

    .line 1487
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    .line 1488
    .local v0, "prevSti":Lcom/android/internal/app/chooser/SelectableTargetInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDeviceShareStatus()I

    move-result v1

    .line 1489
    .local v1, "prevStatus":I
    invoke-virtual {v0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDeviceShareProgress()I

    move-result v2

    .line 1490
    .local v2, "prevProgress":I
    invoke-virtual {v0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDeviceShareStatusLabel()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1491
    .local v3, "prevStatusLabel":Ljava/lang/CharSequence;
    invoke-virtual {v0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDeviceShareId()Ljava/lang/String;

    move-result-object v4

    .line 1493
    .local v4, "prevDevId":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 1494
    .local v5, "extras":Landroid/os/Bundle;
    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 1495
    const-string v7, "com.samsung.intent.chooser.SHARE_STATUS"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 1496
    .local v7, "curStatus":I
    const-string v8, "com.samsung.intent.chooser.SHARE_PROGRESS"

    invoke-virtual {v5, v8, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1497
    .local v8, "curProgress":I
    const/4 v9, 0x0

    const-string v10, "com.samsung.intent.chooser.SHARE_STATUS_LABEL"

    invoke-virtual {v5, v10, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1498
    .local v9, "curStatusLabel":Ljava/lang/CharSequence;
    const-string v10, "deviceId"

    const-string v11, ""

    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1500
    .local v10, "curDevId":Ljava/lang/String;
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    if-ne v1, v7, :cond_0

    if-ne v2, v8, :cond_0

    .line 1502
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addDeviceTargetResults: ["

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "] curDevId: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ", don\'t need to update"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v11, "ChooserListAdapter"

    invoke-static {v11, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    const/4 v6, 0x1

    return v6

    .line 1507
    .end local v7    # "curStatus":I
    .end local v8    # "curProgress":I
    .end local v9    # "curStatusLabel":Ljava/lang/CharSequence;
    .end local v10    # "curDevId":Ljava/lang/String;
    :cond_0
    return v6
.end method

.method blacklist semDeviceTargetIsEmpty()Z
    .locals 3

    .line 1537
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1538
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->semGetDeviceTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    nop

    .line 1537
    :goto_0
    return v1
.end method

.method public blacklist semGetAllDisplayList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1728
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist semGetCallerTarget(I)Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 1
    .param p1, "index"    # I

    .line 1724
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object v0
.end method

.method public blacklist semGetDeviceTargetCount()I
    .locals 1

    .line 1294
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->semDeviceTargetIsEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public blacklist semGetDeviceTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/ChooserTargetInfo;",
            ">;"
        }
    .end annotation

    .line 1289
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargets:Ljava/util/List;

    return-object v0
.end method

.method public blacklist semGetFavoriteTargetCount()I
    .locals 1

    .line 1542
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mFavoriteTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method blacklist semGetFavoriteTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1546
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mFavoriteTargets:Ljava/util/List;

    return-object v0
.end method

.method public blacklist semGetPreloadAppTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;",
            ">;"
        }
    .end annotation

    .line 1844
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mPreloadAppTargets:Ljava/util/List;

    return-object v0
.end method

.method public blacklist semGetRankedTargetCountForHorizontal()I
    .locals 2

    .line 1516
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist semGetServiceTargetCountForHorizontal()I
    .locals 2

    .line 1520
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1521
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1525
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist semGetServiceTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/ChooserTargetInfo;",
            ">;"
        }
    .end annotation

    .line 1529
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    return-object v0
.end method

.method public blacklist semGetShareLiveShareId()Ljava/lang/String;
    .locals 1

    .line 1732
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mShareLiveShareId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist semGetSortedList(I)Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 1
    .param p1, "index"    # I

    .line 1242
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object v0
.end method

.method public blacklist semGetSortedTargetCount()I
    .locals 1

    .line 1246
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public blacklist semIsDeviceTargetShowing()Z
    .locals 2

    .line 1285
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method blacklist semIsOnlyEmptyTargetService()Z
    .locals 3

    .line 659
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

    move v1, v2

    :cond_0
    return v1
.end method

.method public blacklist semIsSupportDirectShare()Z
    .locals 3

    .line 1250
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_share"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method blacklist semMakeGroupedTargets(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 1848
    .local p1, "sourceTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    .local p2, "groupedTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1849
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1850
    return-void

    .line 1853
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1854
    .local v0, "consolidated":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1855
    .local v2, "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->semIsNonePackageItem()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1856
    goto :goto_0

    .line 1859
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1861
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1862
    .local v4, "appUserId":I
    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1863
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1867
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1868
    .local v5, "multiDri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    if-nez v5, :cond_3

    .line 1869
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1870
    :cond_3
    instance-of v6, v5, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    if-eqz v6, :cond_4

    .line 1871
    move-object v6, v5

    check-cast v6, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    invoke-virtual {v6, v2}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->addTarget(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    goto :goto_1

    .line 1874
    :cond_4
    new-instance v6, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    invoke-direct {v6, v3, v5}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 1876
    .local v6, "multiDisplayResolveInfo":Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;
    invoke-virtual {v6, v2}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->addTarget(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 1877
    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1879
    .end local v2    # "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "appUserId":I
    .end local v5    # "multiDri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v6    # "multiDisplayResolveInfo":Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;
    :goto_1
    goto :goto_0

    .line 1881
    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1882
    return-void
.end method

.method blacklist semSetDeviceIconBadgeShow(Landroid/content/Context;Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;ZZ)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p4, "add"    # Z
    .param p5, "showBadge"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1474
    .local p3, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v0, p2}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->semConvertToChooserTargetForDeviceTarget(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Landroid/service/chooser/ChooserTarget;

    move-result-object v0

    .line 1475
    .local v0, "ct":Landroid/service/chooser/ChooserTarget;
    new-instance v8, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    iget-object v6, p0, Lcom/android/internal/app/ChooserListAdapter;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    const v5, 0x47c35000    # 100000.0f

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/chooser/SelectableTargetInfo;-><init>(Landroid/content/Context;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/service/chooser/ChooserTarget;FLcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;Landroid/content/pm/ShortcutInfo;)V

    .line 1477
    .local v1, "sti":Lcom/android/internal/app/chooser/SelectableTargetInfo;
    invoke-virtual {v1, p5}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->setDeviceBadgeShow(Z)V

    .line 1479
    if-eqz p4, :cond_0

    .line 1480
    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1482
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargets:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1484
    :goto_0
    return-void
.end method

.method public blacklist semSetupFavoriteAppTargets()V
    .locals 9

    .line 1736
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->semGetFavoriteSetFromProvider()Ljava/util/ArrayList;

    move-result-object v0

    .line 1737
    .local v0, "favoriteSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ChooserActivity$SemFavoriteAppSource;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semSetupFavoriteAppTargets: favoriteSet size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChooserListAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mFavoriteTargets:Ljava/util/List;

    .line 1739
    .local v1, "favoriteApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1740
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ChooserActivity$SemFavoriteAppSource;

    .line 1741
    .local v3, "favoriteItem":Lcom/android/internal/app/ChooserActivity$SemFavoriteAppSource;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1742
    iget-object v5, p0, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1743
    .local v5, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v5}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 1744
    .local v6, "appCn":Landroid/content/ComponentName;
    invoke-virtual {v5}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1746
    .local v7, "appUserId":I
    iget-object v8, v3, Lcom/android/internal/app/ChooserActivity$SemFavoriteAppSource;->cn:Landroid/content/ComponentName;

    invoke-virtual {v6, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, v3, Lcom/android/internal/app/ChooserActivity$SemFavoriteAppSource;->userId:I

    if-ne v7, v8, :cond_0

    .line 1747
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1741
    .end local v5    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v6    # "appCn":Landroid/content/ComponentName;
    .end local v7    # "appUserId":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1750
    .end local v3    # "favoriteItem":Lcom/android/internal/app/ChooserActivity$SemFavoriteAppSource;
    .end local v4    # "i":I
    :cond_1
    goto :goto_0

    .line 1751
    :cond_2
    return-void
.end method

.method public blacklist semSetupPreloadAppTargets()V
    .locals 9

    .line 1754
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mPreloadAppTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1756
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->semIsNeedCopyButton()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1757
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->semCreateCopyButtonResolveInfo()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1758
    .local v0, "copyButtonDri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mShareLiveDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v2}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->semIsNeedTempLinkShareButton()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1759
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->semCreateTempLinkShareButtonResolveInfo()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v1

    goto :goto_1

    :cond_1
    nop

    .line 1760
    .local v1, "linkButtonDri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->semGetSimpleSharingDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v2

    .line 1761
    .local v2, "simpleSharingDri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbySharingChipBtnDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v3

    .line 1762
    .local v3, "nearbyShareDri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->semGetPrivateShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v4

    .line 1764
    .local v4, "privateShareDri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    if-eqz v0, :cond_2

    .line 1765
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserListAdapter;->semAddCopyButton(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    goto :goto_2

    .line 1766
    :cond_2
    if-eqz v2, :cond_3

    .line 1767
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ChooserListAdapter;->semAddLinkSharingButton(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    goto :goto_2

    .line 1769
    :cond_3
    if-eqz v1, :cond_4

    sget-boolean v5, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_SMART_TIP_REPEAT:Z

    if-nez v5, :cond_4

    .line 1770
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserListAdapter;->semAddTempLinkShareButton(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 1774
    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    .line 1775
    invoke-virtual {p0, v4}, Lcom/android/internal/app/ChooserListAdapter;->semAddPrivateShareButton(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 1778
    :cond_5
    if-eqz v3, :cond_6

    .line 1779
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ChooserListAdapter;->semAddNearbyShareButton(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    goto :goto_5

    .line 1781
    :cond_6
    const/4 v5, 0x0

    .line 1782
    .local v5, "bFoundLinkSharing":Z
    iget-object v6, p0, Lcom/android/internal/app/ChooserListAdapter;->mPreloadAppTargets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;

    .line 1783
    .local v7, "targets":Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;
    iget v8, v7, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;->preloadType:I

    if-nez v8, :cond_7

    .line 1784
    const/4 v5, 0x1

    .line 1785
    goto :goto_4

    .line 1787
    .end local v7    # "targets":Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;
    :cond_7
    goto :goto_3

    .line 1789
    :cond_8
    :goto_4
    if-nez v5, :cond_9

    if-eqz v2, :cond_9

    .line 1790
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ChooserListAdapter;->semAddLinkSharingButton(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 1793
    .end local v5    # "bFoundLinkSharing":Z
    :cond_9
    :goto_5
    return-void
.end method

.method blacklist semSortFavoriteAppsForRankedList()V
    .locals 12

    .line 1550
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mFavoriteTargets:Ljava/util/List;

    .line 1551
    .local v0, "favoriteDris":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1552
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1553
    .local v1, "rankInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1555
    .local v2, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1556
    .local v4, "favoriteDri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v4}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .line 1557
    .local v5, "favoriteCn":Landroid/content/ComponentName;
    invoke-virtual {v4}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1559
    .local v6, "favoriteCnUid":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 1560
    iget-object v8, p0, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1561
    .local v8, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v8}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v9

    .line 1562
    .local v9, "cn":Landroid/content/ComponentName;
    invoke-virtual {v8}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 1564
    .local v10, "userId":I
    invoke-virtual {v9, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    if-ne v10, v6, :cond_0

    .line 1565
    iget-object v11, p0, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1566
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1567
    goto :goto_2

    .line 1559
    .end local v8    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v9    # "cn":Landroid/content/ComponentName;
    .end local v10    # "userId":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1570
    .end local v4    # "favoriteDri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v5    # "favoriteCn":Landroid/content/ComponentName;
    .end local v6    # "favoriteCnUid":I
    .end local v7    # "i":I
    :cond_1
    :goto_2
    goto :goto_0

    .line 1571
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1573
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1574
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_3
    if-ltz v3, :cond_3

    .line 1575
    iget-object v4, p0, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1574
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 1579
    .end local v3    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1581
    .end local v1    # "rankInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    .end local v2    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    return-void
.end method

.method blacklist semUpdateRankedAppsMoreAppsList()V
    .locals 18

    .line 1584
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1585
    .local v1, "sortedGroupedRankedTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1586
    .local v2, "sortedGroupedMoreAppsTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1588
    .local v3, "allTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    iget-object v4, v0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v4}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->semIsDestroyed()Z

    move-result v4

    const-string v5, "ChooserListAdapter"

    if-nez v4, :cond_11

    iget-object v4, v0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v4}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->semIsFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v17, v3

    goto/16 :goto_d

    .line 1593
    :cond_0
    iget-object v4, v0, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1596
    iget-object v4, v0, Lcom/android/internal/app/ChooserListAdapter;->mFavoriteTargets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1598
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1599
    .local v4, "groupedTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/app/ChooserListAdapter;->semMakeGroupedTargets(Ljava/util/List;Ljava/util/List;)V

    .line 1603
    new-instance v6, Lcom/android/internal/app/ChooserActivity$AzInfoComparator;

    iget-object v7, v0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/internal/app/ChooserActivity$AzInfoComparator;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1604
    new-instance v6, Lcom/android/internal/app/ChooserListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lcom/android/internal/app/ChooserListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/ChooserListAdapter;)V

    .line 1606
    .local v6, "byScore":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    new-instance v7, Lcom/android/internal/app/ChooserActivity$SemRankedAppsComparator;

    iget-object v8, v0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/android/internal/app/ChooserListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-direct {v7, v8, v6, v9}, Lcom/android/internal/app/ChooserActivity$SemRankedAppsComparator;-><init>(Landroid/content/Context;Ljava/util/Comparator;Lcom/android/internal/app/ResolverListController;)V

    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1609
    const/4 v7, 0x0

    .line 1610
    .local v7, "appNumWithChooserScore":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    const/16 v10, 0xc

    if-ge v8, v9, :cond_3

    .line 1611
    if-ne v8, v10, :cond_1

    .line 1612
    goto :goto_1

    .line 1614
    :cond_1
    iget-object v9, v0, Lcom/android/internal/app/ChooserListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v10}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/app/ResolverListController;->semGetChooserCount(Landroid/content/ComponentName;)F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    .line 1615
    add-int/lit8 v7, v7, 0x1

    .line 1610
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1622
    .end local v8    # "i":I
    :cond_3
    :goto_1
    iget-object v8, v0, Lcom/android/internal/app/ChooserListAdapter;->mChooserListCommunicator:Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    invoke-interface {v8}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->semGetShareActionCount()I

    move-result v8

    const/16 v9, 0xa

    if-gt v8, v9, :cond_4

    .line 1623
    iput v9, v0, Lcom/android/internal/app/ChooserListAdapter;->mFavoriteTargetMaxCount:I

    goto :goto_2

    .line 1625
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v8

    add-int/2addr v8, v7

    const/16 v9, 0x8

    if-gt v8, v9, :cond_5

    .line 1626
    iput v9, v0, Lcom/android/internal/app/ChooserListAdapter;->mFavoriteTargetMaxCount:I

    goto :goto_2

    .line 1628
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v8

    add-int/2addr v8, v7

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v0, Lcom/android/internal/app/ChooserListAdapter;->mFavoriteTargetMaxCount:I

    .line 1633
    .end local v7    # "appNumWithChooserScore":I
    :goto_2
    iget v7, v0, Lcom/android/internal/app/ChooserListAdapter;->mFavoriteTargetMaxCount:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1635
    .local v7, "rankedListCount":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v7, :cond_6

    .line 1636
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1635
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1638
    .end local v8    # "i":I
    :cond_6
    move v8, v7

    .restart local v8    # "i":I
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 1639
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1638
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1641
    .end local v4    # "groupedTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    .end local v6    # "byScore":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    .end local v7    # "rankedListCount":I
    .end local v8    # "i":I
    :cond_7
    move-object/from16 v17, v3

    goto/16 :goto_c

    .line 1643
    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1644
    .local v4, "rankedAppsTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1645
    .local v6, "moreAppsTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1646
    .local v7, "groupedRankedAppsTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1648
    .local v8, "groupedMoreAppsTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .local v9, "i":I
    :goto_5
    if-ltz v9, :cond_d

    .line 1649
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1650
    .local v10, "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v10}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->semIsNonePackageItem()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1651
    goto :goto_8

    .line 1654
    :cond_9
    invoke-virtual {v10}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1655
    .local v11, "appUserId":I
    const/4 v12, 0x0

    .line 1656
    .local v12, "isSameComponentAsFavorite":Z
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_6
    iget-object v14, v0, Lcom/android/internal/app/ChooserListAdapter;->mFavoriteTargets:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_b

    .line 1657
    iget-object v14, v0, Lcom/android/internal/app/ChooserListAdapter;->mFavoriteTargets:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1658
    .local v14, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v14}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v15

    .line 1659
    .local v15, "cn":Landroid/content/ComponentName;
    move/from16 v16, v12

    .end local v12    # "isSameComponentAsFavorite":Z
    .local v16, "isSameComponentAsFavorite":Z
    invoke-virtual {v14}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 1661
    .local v12, "userId":I
    move-object/from16 v17, v14

    .end local v14    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .local v17, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v10}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v15, v14}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    if-ne v12, v11, :cond_a

    .line 1662
    const/4 v14, 0x1

    .line 1663
    .end local v16    # "isSameComponentAsFavorite":Z
    .local v14, "isSameComponentAsFavorite":Z
    move v12, v14

    goto :goto_7

    .line 1656
    .end local v12    # "userId":I
    .end local v14    # "isSameComponentAsFavorite":Z
    .end local v15    # "cn":Landroid/content/ComponentName;
    .end local v17    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .restart local v16    # "isSameComponentAsFavorite":Z
    :cond_a
    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v16

    goto :goto_6

    .end local v16    # "isSameComponentAsFavorite":Z
    .local v12, "isSameComponentAsFavorite":Z
    :cond_b
    move/from16 v16, v12

    .line 1666
    .end local v13    # "j":I
    :goto_7
    if-eqz v12, :cond_c

    .line 1667
    const/4 v13, 0x0

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-interface {v4, v13, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1668
    invoke-interface {v3, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1648
    .end local v10    # "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v11    # "appUserId":I
    .end local v12    # "isSameComponentAsFavorite":Z
    :cond_c
    :goto_8
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    .line 1671
    .end local v9    # "i":I
    :cond_d
    invoke-interface {v6, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1674
    invoke-virtual {v0, v4, v7}, Lcom/android/internal/app/ChooserListAdapter;->semMakeGroupedTargets(Ljava/util/List;Ljava/util/List;)V

    .line 1675
    invoke-virtual {v0, v6, v8}, Lcom/android/internal/app/ChooserListAdapter;->semMakeGroupedTargets(Ljava/util/List;Ljava/util/List;)V

    .line 1678
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_9
    iget-object v10, v0, Lcom/android/internal/app/ChooserListAdapter;->mFavoriteTargets:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_10

    .line 1679
    iget-object v10, v0, Lcom/android/internal/app/ChooserListAdapter;->mFavoriteTargets:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1680
    .restart local v10    # "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v10}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1682
    .restart local v11    # "appUserId":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    .local v12, "j":I
    :goto_a
    if-ltz v12, :cond_f

    .line 1683
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1684
    .local v13, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v13}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 1685
    .local v14, "pkg":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .line 1687
    .local v15, "userId":I
    invoke-virtual {v10}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v16

    move-object/from16 v17, v3

    .end local v3    # "allTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    .local v17, "allTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-ne v15, v11, :cond_e

    .line 1688
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1689
    invoke-interface {v7, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1690
    goto :goto_b

    .line 1682
    .end local v13    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v15    # "userId":I
    :cond_e
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v3, v17

    goto :goto_a

    .end local v17    # "allTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    .restart local v3    # "allTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    :cond_f
    move-object/from16 v17, v3

    .line 1678
    .end local v3    # "allTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    .end local v10    # "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v11    # "appUserId":I
    .end local v12    # "j":I
    .restart local v17    # "allTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    :goto_b
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v17

    goto :goto_9

    .end local v17    # "allTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    .restart local v3    # "allTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    :cond_10
    move-object/from16 v17, v3

    .line 1696
    .end local v3    # "allTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    .end local v9    # "i":I
    .restart local v17    # "allTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    new-instance v3, Lcom/android/internal/app/ChooserActivity$AzInfoComparator;

    iget-object v9, v0, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v9}, Lcom/android/internal/app/ChooserActivity$AzInfoComparator;-><init>(Landroid/content/Context;)V

    invoke-static {v8, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1697
    new-instance v3, Lcom/android/internal/app/ChooserListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/android/internal/app/ChooserListAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/ChooserListAdapter;)V

    .line 1699
    .local v3, "byScore":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    invoke-static {v8, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1700
    invoke-interface {v2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1702
    .end local v3    # "byScore":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    .end local v4    # "rankedAppsTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    .end local v6    # "moreAppsTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    .end local v7    # "groupedRankedAppsTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    .end local v8    # "groupedMoreAppsTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    :goto_c
    const-string/jumbo v3, "semUpdateRankedAppsMoreAppsList finished"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    iput-object v1, v0, Lcom/android/internal/app/ChooserListAdapter;->mRankedTargets:Ljava/util/List;

    .line 1704
    iput-object v2, v0, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    .line 1706
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    .line 1708
    return-void

    .line 1588
    .end local v17    # "allTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    .local v3, "allTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    :cond_11
    move-object/from16 v17, v3

    .line 1589
    .end local v3    # "allTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    .restart local v17    # "allTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    :goto_d
    const-string v3, "activity is finished.. stop semUpdateRankedAppsMoreAppsList!"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    return-void
.end method

.method public blacklist setAppPredictor(Landroid/app/prediction/AppPredictor;)V
    .locals 0
    .param p1, "appPredictor"    # Landroid/app/prediction/AppPredictor;

    .line 1174
    iput-object p1, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictor:Landroid/app/prediction/AppPredictor;

    .line 1175
    return-void
.end method

.method public blacklist setAppPredictorCallback(Landroid/app/prediction/AppPredictor$Callback;)V
    .locals 0
    .param p1, "appPredictorCallback"    # Landroid/app/prediction/AppPredictor$Callback;

    .line 1178
    iput-object p1, p0, Lcom/android/internal/app/ChooserListAdapter;->mAppPredictorCallback:Landroid/app/prediction/AppPredictor$Callback;

    .line 1179
    return-void
.end method

.method protected blacklist shouldAddResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z
    .locals 5
    .param p1, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 791
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/chooser/TargetInfo;

    .line 792
    .local v1, "existingInfo":Lcom/android/internal/app/chooser/TargetInfo;
    instance-of v2, v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v2, :cond_0

    .line 793
    move-object v2, v1

    check-cast v2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->semIsNonePackageItem()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 794
    goto :goto_0

    .line 798
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ChooserListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 799
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 800
    const/4 v0, 0x0

    return v0

    .line 802
    .end local v1    # "existingInfo":Lcom/android/internal/app/chooser/TargetInfo;
    :cond_1
    goto :goto_0

    .line 803
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->shouldAddResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z

    move-result v0

    return v0
.end method

.method public blacklist targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;
    .locals 7
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .line 731
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 732
    return-object v0

    .line 735
    :cond_0
    const/4 v1, 0x0

    .line 737
    .local v1, "offset":I
    sget-boolean v2, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_NEARBY_SHARING:Z

    if-eqz v2, :cond_2

    .line 738
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->semGetDeviceTargetCount()I

    move-result v2

    .line 739
    .local v2, "deviceTargetCount":I
    sub-int v3, p1, v1

    if-ge v3, v2, :cond_1

    .line 740
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mDeviceTargets:Ljava/util/List;

    sub-int v3, p1, v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/TargetInfo;

    return-object v0

    .line 742
    :cond_1
    add-int/2addr v1, v2

    .line 746
    .end local v2    # "deviceTargetCount":I
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getServiceTargetCount()I

    move-result v2

    goto :goto_0

    .line 747
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v2

    :goto_0
    nop

    .line 748
    .local v2, "serviceTargetCount":I
    sub-int v3, p1, v1

    if-ge v3, v2, :cond_4

    .line 749
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    sub-int v3, p1, v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/TargetInfo;

    return-object v0

    .line 751
    :cond_4
    add-int/2addr v1, v2

    .line 754
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v3

    .line 755
    .local v3, "callerTargetCount":I
    sub-int v4, p1, v1

    if-ge v4, v3, :cond_5

    .line 756
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    sub-int v4, p1, v1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/TargetInfo;

    return-object v0

    .line 758
    :cond_5
    add-int/2addr v1, v3

    .line 761
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v4

    .line 762
    .local v4, "rankedTargetCount":I
    sub-int v5, p1, v1

    if-ge v5, v4, :cond_7

    .line 764
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mRankedTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mRankedTargets:Ljava/util/List;

    sub-int v5, p1, v1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/TargetInfo;

    goto :goto_1

    :cond_6
    sub-int v0, p1, v1

    invoke-super {p0, v0}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    :goto_1
    return-object v0

    .line 770
    :cond_7
    add-int/2addr v1, v4

    .line 774
    sub-int v5, p1, v1

    iget-object v6, p0, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    iget-object v5, p0, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 775
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter;->mSortedList:Ljava/util/List;

    sub-int v5, p1, v1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/TargetInfo;

    return-object v0

    .line 784
    :cond_8
    return-object v0
.end method

.method blacklist updateAlphabeticalList()V
    .locals 2

    .line 547
    new-instance v0, Lcom/android/internal/app/ChooserListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserListAdapter$2;-><init>(Lcom/android/internal/app/ChooserListAdapter;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 606
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserListAdapter$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 607
    return-void
.end method
