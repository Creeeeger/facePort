.class public Lcom/android/internal/app/ResolverListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;,
        Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;,
        Lcom/android/internal/app/ResolverListAdapter$ViewHolder;,
        Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;,
        Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;,
        Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;,
        Lcom/android/internal/app/ResolverListAdapter$SemResolverListComparator;,
        Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;
    }
.end annotation


# static fields
.field private static blacklist PACKAGE_NAME_GOOGLE_MESSAGES:Ljava/lang/String; = null

.field private static blacklist PACKAGE_NAME_SAMSUNG_MESSAGES:Ljava/lang/String; = null

.field private static final blacklist TAG:Ljava/lang/String; = "ResolverListAdapter"

.field private static blacklist sSuspendedMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;


# instance fields
.field private final blacklist mBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mContext:Landroid/content/Context;

.field protected blacklist mCopyButtonDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field private blacklist mDefaultSms:Ljava/lang/String;

.field blacklist mDisplayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFilterLastUsed:Z

.field private final blacklist mIconDpi:I

.field private final blacklist mIconLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            "Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mInflater:Landroid/view/LayoutInflater;

.field private final blacklist mInitialIntents:[Landroid/content/Intent;

.field private final blacklist mInitialIntentsUserSpace:Landroid/os/UserHandle;

.field private final blacklist mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsAudioCaptureDevice:Z

.field private blacklist mIsTabLoaded:Z

.field private final blacklist mLabelLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            "Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mLastChosen:Landroid/content/pm/ResolveInfo;

.field private blacklist mLastChosenActivityFromPm:Ljava/lang/String;

.field private blacklist mLastChosenActivityIndex:I

.field private blacklist mLastChosenPackageFromPm:Ljava/lang/String;

.field private blacklist mLastChosenPosition:I

.field private blacklist mMessageAppSkipped:Z

.field private blacklist mOtherProfile:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field private blacklist mPlaceholderCount:I

.field private final blacklist mPm:Landroid/content/pm/PackageManager;

.field private blacklist mPostListReadyRunnable:Ljava/lang/Runnable;

.field final blacklist mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

.field blacklist mResolverListController:Lcom/android/internal/app/ResolverListController;

.field private final blacklist mSpm:Lcom/samsung/android/knox/SemPersonaManager;

.field private blacklist mUnfilteredResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsAudioCaptureDevice(Lcom/android/internal/app/ResolverListAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/ResolverListAdapter;->mIsAudioCaptureDevice:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastChosenActivityIndex(Lcom/android/internal/app/ResolverListAdapter;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenActivityIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastChosenActivityIndex(Lcom/android/internal/app/ResolverListAdapter;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenActivityIndex:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPostListReadyRunnable(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetSuspendedColorMatrix()Landroid/graphics/ColorMatrixColorFilter;
    .locals 1

    invoke-static {}, Lcom/android/internal/app/ResolverListAdapter;->getSuspendedColorMatrix()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "com.google.android.apps.messaging"

    sput-object v0, Lcom/android/internal/app/ResolverListAdapter;->PACKAGE_NAME_GOOGLE_MESSAGES:Ljava/lang/String;

    const-string v0, "com.samsung.android.messaging"

    sput-object v0, Lcom/android/internal/app/ResolverListAdapter;->PACKAGE_NAME_SAMSUNG_MESSAGES:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;ZLandroid/os/UserHandle;)V
    .locals 3
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
            "Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;",
            "Z",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mIconLoaders:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mLabelLoaders:Ljava/util/Map;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mDefaultSms:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mMessageAppSkipped:Z

    iput-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenActivityFromPm:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPackageFromPm:Ljava/lang/String;

    iput v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenActivityIndex:I

    iput-object p1, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/app/ResolverListAdapter;->mIntents:Ljava/util/List;

    iput-object p3, p0, Lcom/android/internal/app/ResolverListAdapter;->mInitialIntents:[Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/internal/app/ResolverListAdapter;->mBaseResolveList:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPm:Landroid/content/pm/PackageManager;

    const-class v0, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mSpm:Lcom/samsung/android/knox/SemPersonaManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    iput-boolean p5, p0, Lcom/android/internal/app/ResolverListAdapter;->mFilterLastUsed:Z

    iput-object p6, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    iput-object p7, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    iput-boolean p8, p0, Lcom/android/internal/app/ResolverListAdapter;->mIsAudioCaptureDevice:Z

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mIconDpi:I

    iput-object p9, p0, Lcom/android/internal/app/ResolverListAdapter;->mInitialIntentsUserSpace:Landroid/os/UserHandle;

    return-void
.end method

.method private blacklist StringReplaceForSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "\u00a0"

    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private blacklist addResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .locals 5

    const-string v0, ", intent component: "

    const-string v1, "ResolverListAdapter"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->shouldAddResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add DisplayResolveInfo component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add DRI forward intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE4:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "hide_secure_folder_flag"

    invoke-static {v2, v4, v3, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    move v2, v3

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add DRI secure folder : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v1, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-interface {v6, v7, v4}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    iget-object v7, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v9}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getTargetIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v7

    new-instance v8, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v6, :cond_0

    move-object v9, v6

    goto :goto_0

    :cond_0
    move-object v9, v7

    :goto_0
    invoke-virtual {v0, v5}, Lcom/android/internal/app/ResolverListAdapter;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v10

    invoke-direct {v8, v4, v5, v9, v10}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getSimilarList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const-string v11, "ResolverListAdapter"

    if-lez v10, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getSimilarList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v12, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v13

    new-instance v14, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v6, :cond_1

    move-object v15, v6

    goto :goto_2

    :cond_1
    move-object v15, v7

    :goto_2
    invoke-virtual {v0, v13}, Lcom/android/internal/app/ResolverListAdapter;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v3

    invoke-direct {v14, v4, v13, v15, v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    move-object v3, v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result v14

    invoke-virtual {v3, v14}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setPinned(Z)V

    invoke-virtual {v8}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getSimilarList()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "driInside.mDisplayLabel->"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " driInside.mExtendedInfo;"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " driInside.mResolveInfo"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result v3

    invoke-virtual {v8, v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setPinned(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Pinned item: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, v1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {v0, v8}, Lcom/android/internal/app/ResolverListAdapter;->needToHideSmsPackage(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v3}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semIsSupportsAlwaysUseOption()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    invoke-direct {v0, v8}, Lcom/android/internal/app/ResolverListAdapter;->addResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    :cond_5
    if-ne v6, v4, :cond_6

    const/4 v3, 0x1

    move v10, v2

    :goto_3
    if-ge v3, v10, :cond_6

    invoke-virtual {v1, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->addAlternateSourceIntent(Landroid/content/Intent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v5, v3}, Lcom/android/internal/app/ResolverListAdapter;->updateLastChosenPosition(Landroid/content/pm/ResolveInfo;Ljava/lang/Boolean;)V

    return-void
.end method

.method private blacklist cancelTasks(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/os/AsyncTask;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AsyncTask;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static blacklist getFirstNonCurrentUserResolvedComponentInfo(Ljava/util/List;)Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_2

    iget v4, v3, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v3, Landroid/content/pm/ResolveInfo;->targetUserId:I

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    iget v4, v3, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_4

    return-object v2

    :cond_4
    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private static blacklist getSuspendedColorMatrix()Landroid/graphics/ColorMatrixColorFilter;
    .locals 6

    sget-object v0, Lcom/android/internal/app/ResolverListAdapter;->sSuspendedMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    if-nez v0, :cond_0

    const/16 v0, 0x7f

    const/high16 v1, 0x3f000000    # 0.5f

    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v3

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x6

    aput v1, v3, v4

    const/16 v4, 0xc

    aput v1, v3, v4

    const/4 v4, 0x4

    int-to-float v5, v0

    aput v5, v3, v4

    const/16 v4, 0x9

    int-to-float v5, v0

    aput v5, v3, v4

    const/16 v4, 0xe

    int-to-float v5, v0

    aput v5, v3, v4

    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    invoke-virtual {v4, v2}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    sput-object v5, Lcom/android/internal/app/ResolverListAdapter;->sSuspendedMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    :cond_0
    sget-object v0, Lcom/android/internal/app/ResolverListAdapter;->sSuspendedMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    return-object v0
.end method

.method private blacklist loadLabel(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLabelLoaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->createLoadLabelTask(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mLabelLoaders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private static blacklist makeOtherProfileDisplayResolveInfo(Landroid/content/Context;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Landroid/content/pm/PackageManager;Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;I)Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v12

    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-interface/range {p3 .. p3}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getTargetIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v13

    new-instance v10, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-object/from16 v14, p0

    move/from16 v15, p4

    invoke-direct {v10, v14, v15, v11}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;-><init>(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;)V

    new-instance v16, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v11, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v11, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v12, :cond_0

    move-object v9, v12

    goto :goto_0

    :cond_0
    move-object v9, v13

    :goto_0
    move-object/from16 v4, v16

    move-object v6, v11

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    return-object v16
.end method

.method private blacklist needToHideSmsPackage(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDefaultSms:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ResolverListAdapter"

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/internal/app/ResolverListAdapter;->PACKAGE_NAME_SAMSUNG_MESSAGES:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mDefaultSms:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, ". Default SMS package is "

    const-string/jumbo v4, "skip add "

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/app/ResolverListAdapter;->PACKAGE_NAME_GOOGLE_MESSAGES:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mDefaultSms:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mMessageAppSkipped:Z

    return v2

    :cond_0
    sget-object v0, Lcom/android/internal/app/ResolverListAdapter;->PACKAGE_NAME_GOOGLE_MESSAGES:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/app/ResolverListAdapter;->mDefaultSms:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/app/ResolverListAdapter;->PACKAGE_NAME_SAMSUNG_MESSAGES:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mDefaultSms:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mMessageAppSkipped:Z

    return v2

    :cond_1
    const-string/jumbo v0, "no default sms"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mMessageAppSkipped:Z

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist setLastChosenInfo(Landroid/content/pm/ResolveInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenActivityFromPm:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPackageFromPm:Ljava/lang/String;

    return-void
.end method

.method private blacklist updateLastChosenPosition(Landroid/content/pm/ResolveInfo;Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mOtherProfile:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    return-void

    :cond_0
    nop

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverListAdapter;->setLastChosenInfo(Landroid/content/pm/ResolveInfo;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected blacklist alwaysShowSubLabel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist bindView(ILandroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/internal/app/ResolverListAdapter;->onBindView(Landroid/view/View;Lcom/android/internal/app/chooser/TargetInfo;I)V

    return-void
.end method

.method protected blacklist createLoadLabelTask(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;
    .locals 1

    new-instance v0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;-><init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

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

    new-instance v0, Lcom/android/internal/app/ResolverListAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ResolverListAdapter$1;-><init>(Lcom/android/internal/app/ResolverListAdapter;Z)V

    return-object v0
.end method

.method public final blacklist createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    iget-object v2, v1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v3, 0x10504f3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ResolverListAdapter;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    iget-object v2, v1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const v3, 0x10504f4

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ResolverListAdapter;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method blacklist finishRebuildingListWithFilteredResults(Ljava/util/List;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v3}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->useLayoutWithDefault()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverListAdapter;->setPlaceholderCount(I)V

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v3}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semGetOldItemCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter;->getPlaceholderCount()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v3}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semNeedSortAfterPinned()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v3}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semIsNeedSortingInRebuildList()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p0, p2, v1}, Lcom/android/internal/app/ResolverListAdapter;->postListReadyRunnable(ZZ)V

    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverListAdapter;->createSortingTask(Z)Landroid/os/AsyncTask;

    move-result-object v3

    new-array v0, v0, [Ljava/util/List;

    aput-object p1, v0, v1

    invoke-virtual {v3, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v0, v1}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semSetNeedSortAfterPinned(Z)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v0, v1}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semSetNeedSortingInRebuildList(Z)V

    return v1

    :cond_4
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverListAdapter;->setPlaceholderCount(I)V

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverListAdapter;->processSortedList(Ljava/util/List;Z)V

    return v0
.end method

.method public whitelist getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPlaceholderCount:I

    :goto_1
    nop

    return v0
.end method

.method public blacklist getDisplayResolveInfo(I)Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object v0
.end method

.method public blacklist getDisplayResolveInfoCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getFilteredItem()Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    iget v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFilteredPosition()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method blacklist getInitialRebuiltResolveList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mBaseResolveList:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v2}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mBaseResolveList:Ljava/util/List;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/app/ResolverListController;->addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->shouldGetActivityMetadata()Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v2}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->shouldGetOnlyDefaultActivities()Z

    move-result v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mIntents:Ljava/util/List;

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/internal/app/ResolverListController;->getResolversForIntent(ZZZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getIntents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mIntents:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getItem(I)Lcom/android/internal/app/chooser/TargetInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/TargetInfo;

    return-object v0

    :cond_0
    const/4 v0, 0x0

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

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public blacklist getLastChosenActivity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenActivityFromPm:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenActivityFromPm:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLastChosenActivityIndex()I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenActivityIndex:I

    return v0
.end method

.method public blacklist getLastChosenPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPackageFromPm:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPackageFromPm:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist getLoadLabelTask(Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter$ViewHolder;)Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;
    .locals 1

    new-instance v0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;-><init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter$ViewHolder;)V

    return-object v0
.end method

.method public blacklist getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mOtherProfile:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object v0
.end method

.method public blacklist getPlaceholderCount()I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPlaceholderCount:I

    return v0
.end method

.method public blacklist getResolverListController()Lcom/android/internal/app/ResolverListController;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    return-object v0
.end method

.method protected blacklist getResolversForUser(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->shouldGetActivityMetadata()Z

    move-result v2

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->shouldGetOnlyDefaultActivities()Z

    move-result v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverListAdapter;->mIntents:Ljava/util/List;

    const/4 v1, 0x1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/ResolverListController;->getResolversForIntentAsUser(ZZZLjava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;)F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverListController;->getScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;)F

    move-result v0

    return v0
.end method

.method public blacklist getScore(Lcom/android/internal/app/chooser/TargetInfo;)F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverListController;->getScore(Lcom/android/internal/app/chooser/TargetInfo;)F

    move-result v0

    return v0
.end method

.method public blacklist getUnfilteredCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method blacklist getUnfilteredResolveList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUserHandle()Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListController;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    move-object v0, p2

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/internal/app/ResolverListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/app/ResolverListAdapter;->onBindView(Landroid/view/View;Lcom/android/internal/app/chooser/TargetInfo;I)V

    return-object v0
.end method

.method public blacklist handlePackagesChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v0, p0}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V

    return-void
.end method

.method public blacklist hasFilteredItem()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected blacklist isTabLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mIsTabLoaded:Z

    return v0
.end method

.method blacklist loadFilteredItemIconTaskAsync(Landroid/widget/ImageView;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter;->getFilteredItem()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/internal/app/ResolverListAdapter$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/internal/app/ResolverListAdapter$3;-><init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/widget/ImageView;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverListAdapter$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method protected final blacklist loadIcon(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mIconLoaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;-><init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mIconLoaders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method blacklist loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.android.internal.app.ForwardIntentToManagedProfile4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.android.internal.app.ForwardIntentToParent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.samsung.knox.securefolder.presentation.switcher.view.B2CStoreFilesActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/app/ResolverActivity;->getResolveInfoUserHandle(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->-$$Nest$mgetKnoxIcon(Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method blacklist makePresentationGetter(Landroid/content/pm/ActivityInfo;)Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;
    .locals 3

    new-instance v0, Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mIconDpi:I

    invoke-direct {v0, v1, v2, p1}, Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;-><init>(Landroid/content/Context;ILandroid/content/pm/ActivityInfo;)V

    return-object v0
.end method

.method blacklist makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;
    .locals 3

    new-instance v0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mIconDpi:I

    invoke-direct {v0, v1, v2, p1}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;-><init>(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;)V

    return-object v0
.end method

.method protected blacklist markTabLoaded()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mIsTabLoaded:Z

    return-void
.end method

.method protected blacklist onBindView(Landroid/view/View;Lcom/android/internal/app/chooser/TargetInfo;I)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    const/4 v1, 0x0

    const-string v2, ""

    if-nez p2, :cond_0

    iget-object v3, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x1080948

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    return-void

    :cond_0
    instance-of v3, p2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v3, :cond_5

    move-object v3, p2

    check-cast v3, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->hasDisplayLabel()Z

    move-result v4

    if-eqz v4, :cond_1

    nop

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter;->alwaysShowSubLabel()Z

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2, v2, v1}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverListAdapter;->loadLabel(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    :goto_0
    invoke-virtual {v0, p2}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindIcon(Lcom/android/internal/app/chooser/TargetInfo;)V

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v2}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semIsSupportsAlwaysUseOption()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v2}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semIsSupportsAlwaysUseOption()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p3, :cond_2

    const/4 v2, 0x1

    if-ne p3, v2, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverListAdapter;->loadIcon(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    goto :goto_3

    :cond_4
    :goto_1
    :try_start_0
    new-instance v2, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;

    move-object v4, p2

    check-cast v4, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-direct {v2, p0, v4, v0}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;-><init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter$ViewHolder;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v4, v1}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "ResolverListAdapter"

    const-string v4, "LoadIconTask failed!!"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    nop

    :cond_5
    :goto_3
    return-void
.end method

.method blacklist onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/internal/app/ResolverActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/internal/app/ResolverActivity;

    iget-boolean v0, v0, Lcom/android/internal/app/ResolverActivity;->mIsAiAssist:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090179

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109017c

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListController;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mIconLoaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverListAdapter;->cancelTasks(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLabelLoaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverListAdapter;->cancelTasks(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mIconLoaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLabelLoaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method blacklist performPrimaryResolveListFiltering(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mBaseResolveList:Ljava/util/List;

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/ResolverListController;->filterIneligibleActivities(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v1, p1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1

    :cond_2
    :goto_1
    return-object p1
.end method

.method blacklist performSecondaryResolveListFiltering(Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ResolverListController;->filterLowPriority(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method blacklist postListReadyRunnable(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/app/ResolverListAdapter;->postListReadyRunnable(ZZZ)V

    return-void
.end method

.method blacklist postListReadyRunnable(ZZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/app/ResolverListAdapter$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/app/ResolverListAdapter$2;-><init>(Lcom/android/internal/app/ResolverListAdapter;ZZZ)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected blacklist processSortedList(Ljava/util/List;Z)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResolverListAdapter#processSortedList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v3, 0x0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v5, v0, Lcom/android/internal/app/ResolverListAdapter;->mInitialIntentsUserSpace:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/internal/app/ResolverListAdapter;->mSpm:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/internal/app/ResolverListAdapter;->mSpm:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationPresent()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    new-instance v5, Ljava/util/HashSet;

    iget-object v6, v0, Lcom/android/internal/app/ResolverListAdapter;->mSpm:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v6}, Lcom/samsung/android/knox/SemPersonaManager;->getSeparatedAppsList()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v4, v5

    :cond_1
    iget-object v5, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    const/4 v5, 0x1

    if-eqz v2, :cond_a

    iget-object v6, v0, Lcom/android/internal/app/ResolverListAdapter;->mInitialIntents:[Landroid/content/Intent;

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    :goto_1
    iget-object v7, v0, Lcom/android/internal/app/ResolverListAdapter;->mInitialIntents:[Landroid/content/Intent;

    array-length v7, v7

    if-ge v6, v7, :cond_7

    iget-object v7, v0, Lcom/android/internal/app/ResolverListAdapter;->mInitialIntents:[Landroid/content/Intent;

    aget-object v7, v7, v6

    if-nez v7, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Landroid/content/Intent;

    if-ne v8, v9, :cond_3

    move-object v8, v7

    goto :goto_2

    :cond_3
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :goto_2
    move-object v15, v8

    iget-object v8, v0, Lcom/android/internal/app/ResolverListAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v15, v8, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v14

    if-nez v14, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No activity found for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ResolverListAdapter"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    new-instance v8, Landroid/content/pm/ResolveInfo;

    invoke-direct {v8}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object v13, v8

    iput-object v14, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v16, v8

    check-cast v16, Landroid/os/UserManager;

    instance-of v8, v7, Landroid/content/pm/LabeledIntent;

    if-eqz v8, :cond_5

    move-object v8, v7

    check-cast v8, Landroid/content/pm/LabeledIntent;

    invoke-virtual {v8}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v13, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v9

    iput v9, v13, Landroid/content/pm/ResolveInfo;->labelRes:I

    invoke-virtual {v8}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v13, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v9

    iput v9, v13, Landroid/content/pm/ResolveInfo;->icon:I

    iget v9, v13, Landroid/content/pm/ResolveInfo;->icon:I

    iput v9, v13, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    :cond_5
    invoke-virtual/range {v16 .. v16}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v8

    if-eqz v8, :cond_6

    iput-boolean v5, v13, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    iput v1, v13, Landroid/content/pm/ResolveInfo;->icon:I

    :cond_6
    iget-object v8, v0, Lcom/android/internal/app/ResolverListAdapter;->mInitialIntentsUserSpace:Landroid/os/UserHandle;

    iput-object v8, v13, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    new-instance v12, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iget-object v8, v0, Lcom/android/internal/app/ResolverListAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v13, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    const/16 v17, 0x0

    invoke-virtual {v0, v13}, Lcom/android/internal/app/ResolverListAdapter;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v18

    move-object v8, v12

    move-object v9, v7

    move-object v10, v13

    move-object v5, v12

    move-object/from16 v12, v17

    move-object/from16 v17, v13

    move-object v13, v7

    move-object/from16 v19, v14

    move-object/from16 v14, v18

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    invoke-direct {v0, v5}, Lcom/android/internal/app/ResolverListAdapter;->addResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_7
    iget-object v5, v0, Lcom/android/internal/app/ResolverListAdapter;->mCopyButtonDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v5, :cond_8

    iget-object v5, v0, Lcom/android/internal/app/ResolverListAdapter;->mCopyButtonDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-direct {v0, v5}, Lcom/android/internal/app/ResolverListAdapter;->addResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    :cond_8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v6, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-direct {v0, v6}, Lcom/android/internal/app/ResolverListAdapter;->addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)V

    :cond_9
    goto :goto_4

    :cond_a
    iget-object v5, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v5}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->sendVoiceChoicesIfNeeded()V

    iget-object v5, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v5}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semIsNeedSortingInRebuildList()Z

    move-result v5

    move/from16 v6, p2

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7, v5}, Lcom/android/internal/app/ResolverListAdapter;->postListReadyRunnable(ZZZ)V

    iget-object v5, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v5, v1}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semSetNeedSortAfterPinned(Z)V

    iget-object v5, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v5, v1}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semSetNeedSortingInRebuildList(Z)V

    iput-boolean v7, v0, Lcom/android/internal/app/ResolverListAdapter;->mIsTabLoaded:Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method protected blacklist rebuildList(Z)Z
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "ResolverListAdapter#rebuildList"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/app/ResolverListAdapter;->mIsTabLoaded:Z

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/ResolverListAdapter;->mDefaultSms:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v2}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semIsSupportsAlwaysUseOption()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverListController;->semSetSupportAlwaysUseOption(Z)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverListAdapter;->getInitialRebuiltResolveList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverListAdapter;->performPrimaryResolveListFiltering(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/ResolverListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    nop

    invoke-static {v2}, Lcom/android/internal/app/ResolverListAdapter;->getFirstNonCurrentUserResolvedComponentInfo(Ljava/util/List;)Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/app/ResolverListAdapter;->updateOtherProfileTreatment(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)V

    if-eqz v4, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v5, v0, Lcom/android/internal/app/ResolverListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    if-ne v5, v2, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/app/ResolverListAdapter;->performSecondaryResolveListFiltering(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    iput-object v5, v0, Lcom/android/internal/app/ResolverListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    :cond_3
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    iget-object v10, v9, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v9, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v12

    invoke-virtual {v11, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v13

    if-eqz v12, :cond_4

    if-nez v13, :cond_5

    goto :goto_1

    :cond_5
    iget-object v14, v13, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v14, v15}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v11}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getSimilarList()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getSimilarList()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    move-object v1, v7

    nop

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ResolverListAdapter;->finishRebuildingListWithFilteredResults(Ljava/util/List;Z)Z

    move-result v8

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v8
.end method

.method public blacklist resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist semForceHandlePackagesChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v0, p0}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semOnForceHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V

    return-void
.end method

.method blacklist semGetFontScale()F
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v1, 0x3f99999a    # 1.2f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const v0, 0x3f99999a    # 1.2f

    :cond_0
    return v0
.end method

.method blacklist semIsComponentEqual(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p2, :cond_1

    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semIsComponentEqual : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResolverListAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method blacklist semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter;->semGetFontScale()F

    move-result v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public blacklist setPlaceholderCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/app/ResolverListAdapter;->mPlaceholderCount:I

    return-void
.end method

.method protected blacklist shouldAddResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mMessageAppSkipped:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semIsSupportsAlwaysUseOption()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->needToHideSmsPackage(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/TargetInfo;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/internal/app/ResolverListController;->updateChooserCounts(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist updateModel(Lcom/android/internal/app/chooser/TargetInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverListController;->updateModel(Lcom/android/internal/app/chooser/TargetInfo;)V

    return-void
.end method

.method blacklist updateOtherProfileTreatment(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    iget v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mIconDpi:I

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/internal/app/ResolverListAdapter;->makeOtherProfileDisplayResolveInfo(Landroid/content/Context;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Landroid/content/pm/PackageManager;Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;I)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mOtherProfile:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mOtherProfile:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListController;->getLastChosen()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverListAdapter;->setLastChosenInfo(Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling getLastChosenActivity\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResolverListAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
