.class public Lcom/android/internal/app/ResolverListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverListAdapter$SemResolverListComparator;,
        Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;,
        Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;,
        Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;,
        Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;,
        Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;,
        Lcom/android/internal/app/ResolverListAdapter$ViewHolder;,
        Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ResolverListAdapter"

.field private static blacklist sSProtect:Z

.field static blacklist sSemChooserAppSourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;",
            ">;"
        }
    .end annotation
.end field

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

.field blacklist mDisplayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mExistNearbyShare:Z

.field protected blacklist mExistShareLive:Z

.field private blacklist mFilterLastUsed:Z

.field private final blacklist mIconDpi:I

.field protected final blacklist mInflater:Landroid/view/LayoutInflater;

.field private final blacklist mInitialIntents:[Landroid/content/Intent;

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

.field protected blacklist mLastChosen:Landroid/content/pm/ResolveInfo;

.field private blacklist mLastChosenPosition:I

.field protected blacklist mNearbyShareDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field protected blacklist mNearbySharingChipBtnDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field private blacklist mOtherProfile:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field private blacklist mPlaceholderCount:I

.field private final blacklist mPm:Landroid/content/pm/PackageManager;

.field private blacklist mPostListReadyRunnable:Ljava/lang/Runnable;

.field protected blacklist mPrivateShareDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field final blacklist mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

.field blacklist mResolverListController:Lcom/android/internal/app/ResolverListController;

.field protected blacklist mSStarSeeAllAppsDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field protected blacklist mShareLiveDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field protected blacklist mShareLiveDriForPerformance:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field protected blacklist mSimpleSharingDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

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

.method static bridge synthetic blacklist -$$Nest$fputmPostListReadyRunnable(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mStringReplaceForSpace(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->StringReplaceForSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsSProtect()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/app/ResolverListAdapter;->sSProtect:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetSuspendedColorMatrix()Landroid/graphics/ColorMatrixColorFilter;
    .locals 1

    invoke-static {}, Lcom/android/internal/app/ResolverListAdapter;->getSuspendedColorMatrix()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/app/ResolverListAdapter;->sSemChooserAppSourceList:Ljava/util/ArrayList;

    .line 143
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sprotect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/app/ResolverListAdapter;->sSProtect:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ZLcom/android/internal/app/ResolverListController;Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "filterLastUsed"    # Z
    .param p6, "resolverListController"    # Lcom/android/internal/app/ResolverListController;
    .param p7, "resolverListCommunicator"    # Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;
    .param p8, "isAudioCaptureDevice"    # Z
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
            "Z)V"
        }
    .end annotation

    .line 151
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mExistShareLive:Z

    .line 121
    iput-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mExistNearbyShare:Z

    .line 152
    iput-object p1, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    .line 153
    iput-object p2, p0, Lcom/android/internal/app/ResolverListAdapter;->mIntents:Ljava/util/List;

    .line 154
    iput-object p3, p0, Lcom/android/internal/app/ResolverListAdapter;->mInitialIntents:[Landroid/content/Intent;

    .line 155
    iput-object p4, p0, Lcom/android/internal/app/ResolverListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 156
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPm:Landroid/content/pm/PackageManager;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    .line 159
    iput-boolean p5, p0, Lcom/android/internal/app/ResolverListAdapter;->mFilterLastUsed:Z

    .line 160
    iput-object p6, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    .line 161
    iput-object p7, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 163
    invoke-interface {p7}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semGetChooserAllSetFromProvider()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/ResolverListAdapter;->sSemChooserAppSourceList:Ljava/util/ArrayList;

    .line 165
    iput-boolean p8, p0, Lcom/android/internal/app/ResolverListAdapter;->mIsAudioCaptureDevice:Z

    .line 166
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 167
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mIconDpi:I

    .line 168
    return-void
.end method

.method private blacklist StringReplaceForSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 1717
    const-string/jumbo v0, "\u00a0"

    .line 1718
    .local v0, "space":Ljava/lang/String;
    const-string v1, "\\s"

    .line 1720
    .local v1, "whitespace":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1721
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1722
    return-object p1
.end method

.method private blacklist addResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .locals 8
    .param p1, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 646
    const-string v0, "ResolverListAdapter"

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 650
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v2, -0x2

    const-string v3, ", intent component: "

    if-ne v1, v2, :cond_1

    .line 651
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->shouldAddResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 652
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add DisplayResolveInfo component: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 654
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 660
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    .line 661
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ultra_powersaving_mode"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v4

    .line 663
    .local v1, "ultraPwrEnabled":Z
    :goto_0
    iget-object v5, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    .line 664
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "emergency_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_3

    move v5, v2

    goto :goto_1

    :cond_3
    move v5, v4

    .line 666
    .local v5, "emergencyModeEnabled":Z
    :goto_1
    if-nez v1, :cond_6

    if-nez v5, :cond_6

    .line 667
    sget-object v6, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    .line 668
    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 669
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add DRI forward intent: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 670
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 669
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 671
    :cond_4
    sget-object v6, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE4:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    .line 672
    iget-object v6, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    .line 673
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hide_secure_folder_flag"

    invoke-static {v6, v7, v4, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_5

    move v4, v2

    :cond_5
    move v2, v4

    .line 676
    .local v2, "isEnabledSecureFolder":Z
    if-eqz v2, :cond_6

    .line 677
    iget-object v4, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add DRI secure folder : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 679
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 678
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    .end local v1    # "ultraPwrEnabled":Z
    .end local v2    # "isEnabledSecureFolder":Z
    .end local v5    # "emergencyModeEnabled":Z
    :cond_6
    :goto_2
    return-void

    .line 647
    :cond_7
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dri is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return-void
.end method

.method private blacklist addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)V
    .locals 9
    .param p1, "rci"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 604
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    move-result v0

    .line 605
    .local v0, "count":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v2

    .line 606
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 607
    .local v1, "add":Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 608
    invoke-interface {v3, v4, v2}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    .line 609
    .local v3, "replaceIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 610
    invoke-interface {v6}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getTargetIntent()Landroid/content/Intent;

    move-result-object v6

    .line 609
    invoke-interface {v4, v5, v6}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v4

    .line 612
    .local v4, "defaultIntent":Landroid/content/Intent;
    new-instance v5, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 613
    if-eqz v3, :cond_0

    move-object v6, v3

    goto :goto_0

    :cond_0
    move-object v6, v4

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverListAdapter;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v7

    invoke-direct {v5, v2, v1, v6, v7}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    .line 614
    .local v5, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setPinned(Z)V

    .line 615
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 616
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pinned item: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ResolverListAdapter"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/internal/app/ResolverListAdapter;->addResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 619
    if-ne v3, v2, :cond_2

    .line 622
    const/4 v6, 0x1

    .local v6, "i":I
    move v7, v0

    .local v7, "n":I
    :goto_1
    if-ge v6, v7, :cond_2

    .line 623
    invoke-virtual {p1, v6}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v8

    .line 624
    .local v8, "altIntent":Landroid/content/Intent;
    invoke-virtual {v5, v8}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->addAlternateSourceIntent(Landroid/content/Intent;)V

    .line 622
    .end local v8    # "altIntent":Landroid/content/Intent;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 627
    .end local v6    # "i":I
    .end local v7    # "n":I
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/internal/app/ResolverListAdapter;->updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V

    .line 628
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

    .line 959
    .local p0, "resolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 960
    return-object v0

    .line 963
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

    .line 964
    .local v2, "info":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 966
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_2

    iget v4, v3, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 967
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v3, Landroid/content/pm/ResolveInfo;->targetUserId:I

    if-nez v4, :cond_3

    .line 968
    goto :goto_0

    .line 971
    :cond_3
    iget v4, v3, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_4

    .line 972
    return-object v2

    .line 974
    .end local v2    # "info":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    goto :goto_0

    .line 975
    :cond_5
    return-object v0
.end method

.method private static blacklist getSuspendedColorMatrix()Landroid/graphics/ColorMatrixColorFilter;
    .locals 6

    .line 865
    sget-object v0, Lcom/android/internal/app/ResolverListAdapter;->sSuspendedMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    if-nez v0, :cond_0

    .line 867
    const/16 v0, 0x7f

    .line 868
    .local v0, "grayValue":I
    const/high16 v1, 0x3f000000    # 0.5f

    .line 870
    .local v1, "scale":F
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 871
    .local v2, "tempBrightnessMatrix":Landroid/graphics/ColorMatrix;
    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v3

    .line 872
    .local v3, "mat":[F
    const/4 v4, 0x0

    aput v1, v3, v4

    .line 873
    const/4 v4, 0x6

    aput v1, v3, v4

    .line 874
    const/16 v4, 0xc

    aput v1, v3, v4

    .line 875
    const/4 v4, 0x4

    int-to-float v5, v0

    aput v5, v3, v4

    .line 876
    const/16 v4, 0x9

    int-to-float v5, v0

    aput v5, v3, v4

    .line 877
    const/16 v4, 0xe

    int-to-float v5, v0

    aput v5, v3, v4

    .line 879
    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 880
    .local v4, "matrix":Landroid/graphics/ColorMatrix;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 881
    invoke-virtual {v4, v2}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    .line 882
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    sput-object v5, Lcom/android/internal/app/ResolverListAdapter;->sSuspendedMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 884
    .end local v0    # "grayValue":I
    .end local v1    # "scale":F
    .end local v2    # "tempBrightnessMatrix":Landroid/graphics/ColorMatrix;
    .end local v3    # "mat":[F
    .end local v4    # "matrix":Landroid/graphics/ColorMatrix;
    :cond_0
    sget-object v0, Lcom/android/internal/app/ResolverListAdapter;->sSuspendedMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    return-object v0
.end method

.method private static blacklist makeOtherProfileDisplayResolveInfo(Landroid/content/Context;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Landroid/content/pm/PackageManager;Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;I)Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolvedComponentInfo"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "resolverListCommunicator"    # Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;
    .param p4, "iconDpi"    # I

    .line 989
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 991
    .local v11, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 993
    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v5

    .line 991
    invoke-interface {v2, v4, v5}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v12

    .line 994
    .local v12, "pOrigIntent":Landroid/content/Intent;
    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 996
    invoke-interface/range {p3 .. p3}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getTargetIntent()Landroid/content/Intent;

    move-result-object v5

    .line 994
    invoke-interface {v2, v4, v5}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v13

    .line 998
    .local v13, "replacementIntent":Landroid/content/Intent;
    new-instance v10, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-object/from16 v14, p0

    move/from16 v15, p4

    invoke-direct {v10, v14, v15, v11}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;-><init>(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;)V

    .line 1001
    .local v10, "presentationGetter":Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;
    new-instance v16, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1002
    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v5

    .line 1004
    invoke-virtual {v11, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1005
    invoke-virtual {v11, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1006
    if-eqz v12, :cond_0

    move-object v9, v12

    goto :goto_0

    :cond_0
    move-object v9, v13

    :goto_0
    move-object/from16 v4, v16

    move-object v6, v11

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    .line 1001
    return-object v16
.end method

.method private blacklist semCheckIfNearbyShareNShareLiveExist(Ljava/util/List;Lcom/android/internal/app/ResolverListController;)Z
    .locals 6
    .param p2, "rlc"    # Lcom/android/internal/app/ResolverListController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;",
            "Lcom/android/internal/app/ResolverListController;",
            ")Z"
        }
    .end annotation

    .line 1659
    .local p1, "rci":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "k":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    .line 1660
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1661
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/internal/app/ResolverListController;->isComponentFiltered(Landroid/content/ComponentName;)Z

    move-result v3

    .line 1663
    .local v3, "filtered":Z
    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.android.app.sharelive/com.samsung.android.app.sharelive.presentation.main.MainActivity"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1664
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mExistShareLive:Z

    .line 1667
    :cond_0
    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.android.gms/com.google.android.gms.nearby.sharing.ShareSheetActivity"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1668
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mExistNearbyShare:Z

    .line 1670
    sget-boolean v4, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_CHIP_BUTTON_FOR_NEARBY:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v4}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semSStarIsShowNearbyChip()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1671
    iget-object v4, p0, Lcom/android/internal/app/ResolverListAdapter;->mNearbySharingChipBtnDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-nez v4, :cond_1

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1672
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverListAdapter;->semCreateDisplayResolveInfo(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ResolverListAdapter;->mNearbySharingChipBtnDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1659
    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v3    # "filtered":Z
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1677
    .end local v0    # "k":I
    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_CHIP_BUTTON_FOR_NEARBY:Z

    const-string/jumbo v1, "mExistShareLive = "

    const-string v3, "ResolverListAdapter"

    if-eqz v0, :cond_3

    .line 1678
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mExistNearbyShare:Z

    .line 1679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mExistShareLive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mExistShareLive:Z

    return v0

    .line 1683
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mExistShareLive:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mExistNearbyShare:Z

    if-eqz v0, :cond_5

    .line 1684
    invoke-static {}, Lcom/samsung/android/share/SemShareCommon;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1685
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mExistNearbyShare:Z

    .line 1686
    const-string v0, "china model.. set mExistNearbyShare false"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1688
    :cond_4
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mExistShareLive:Z

    .line 1689
    const-string v0, "global model.. set mExistShareLive false"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mExistShareLive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExistNearbyShare = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mExistNearbyShare:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mExistShareLive:Z

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mExistNearbyShare:Z

    or-int/2addr v0, v1

    return v0
.end method

.method private blacklist semCreateDisplayResolveInfo(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 8
    .param p1, "rci"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1592
    new-instance v7, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v1

    .line 1593
    invoke-virtual {p1, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1594
    invoke-virtual {p1, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1596
    invoke-virtual {p1, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v5

    .line 1597
    invoke-virtual {p1, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverListAdapter;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    .line 1592
    return-object v7
.end method

.method private blacklist semSplitFeaturesIfNeeded(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .line 1601
    .local p1, "rcl":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    if-nez p1, :cond_0

    .line 1602
    const-string v0, "ResolverListAdapter"

    const-string/jumbo v1, "splitFeaturesIfNeeded: rcl is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    return-void

    .line 1606
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ResolverListAdapter;->semCheckIfNearbyShareNShareLiveExist(Ljava/util/List;Lcom/android/internal/app/ResolverListController;)Z

    .line 1608
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "k":I
    :goto_0
    if-ltz v0, :cond_a

    .line 1609
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1610
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverListController;->isComponentFiltered(Landroid/content/ComponentName;)Z

    move-result v2

    .line 1612
    .local v2, "filtered":Z
    if-nez v2, :cond_9

    .line 1613
    sget-boolean v3, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_NEARBY_SHARING:Z

    if-eqz v3, :cond_9

    .line 1614
    sget-boolean v3, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_CHIP_BUTTON_FOR_NEARBY:Z

    if-eqz v3, :cond_3

    .line 1615
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.samsung.android.app.simplesharing/com.samsung.android.app.simplesharing.linksharing.ui.broker.BrokerActivity"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mNearbySharingChipBtnDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 1617
    invoke-interface {v3}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semIsNeedCopyButton()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1618
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v3}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semSStarIsShowLinkShareChip()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1619
    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mSimpleSharingDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-nez v3, :cond_2

    .line 1620
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverListAdapter;->semCreateDisplayResolveInfo(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mSimpleSharingDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1622
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1624
    :cond_3
    sget-boolean v3, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_CHIP_BUTTON_FOR_NEARBY:Z

    const-string v4, "com.google.android.gms/com.google.android.gms.nearby.sharing.ShareSheetActivity"

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mNearbySharingChipBtnDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v3, :cond_4

    .line 1626
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1627
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1629
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mExistNearbyShare:Z

    const-string v5, "com.samsung.android.app.sharelive/com.samsung.android.app.sharelive.presentation.main.MainActivity"

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v3}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semSStarIsShowNearbyPanel()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1630
    nop

    .line 1631
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 1630
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1632
    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mNearbyShareDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-nez v3, :cond_5

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1633
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverListAdapter;->semCreateDisplayResolveInfo(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mNearbyShareDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1635
    :cond_5
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1638
    :cond_6
    nop

    .line 1639
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 1638
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1640
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverListAdapter;->semCreateDisplayResolveInfo(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mShareLiveDriForPerformance:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    goto :goto_1

    .line 1643
    :cond_7
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mExistShareLive:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v3}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semSStarIsShowShareLivePanel()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1644
    nop

    .line 1645
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 1644
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1646
    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mShareLiveDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-nez v3, :cond_8

    .line 1647
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverListAdapter;->semCreateDisplayResolveInfo(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mShareLiveDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1649
    :cond_8
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1608
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "filtered":Z
    :cond_9
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 1656
    .end local v0    # "k":I
    :cond_a
    return-void
.end method

.method private blacklist updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 632
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mOtherProfile:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v0, :cond_0

    .line 633
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    .line 634
    return-void

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 637
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 638
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 639
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    .line 641
    :cond_1
    return-void
.end method


# virtual methods
.method protected blacklist alwaysShowSubLabel()Z
    .locals 1

    .line 948
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist bindView(ILandroid/view/View;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 802
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/internal/app/ResolverListAdapter;->onBindView(Landroid/view/View;Lcom/android/internal/app/chooser/TargetInfo;I)V

    .line 803
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

    .line 472
    new-instance v0, Lcom/android/internal/app/ResolverListAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ResolverListAdapter$1;-><init>(Lcom/android/internal/app/ResolverListAdapter;Z)V

    return-object v0
.end method

.method public final blacklist createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 779
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 780
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 783
    .local v1, "holder":Lcom/android/internal/app/ResolverListAdapter$ViewHolder;
    iget-object v2, v1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v3, 0x1050469

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ResolverListAdapter;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    .line 784
    iget-object v2, v1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const v3, 0x105046a

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ResolverListAdapter;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    .line 787
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 788
    return-object v0
.end method

.method blacklist finishRebuildingListWithFilteredResults(Ljava/util/List;Z)Z
    .locals 5
    .param p2, "doPostProcessing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;Z)Z"
        }
    .end annotation

    .line 440
    .local p1, "filteredResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 447
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 448
    .local v2, "placeholderCount":I
    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v3}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->useLayoutWithDefault()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 449
    add-int/lit8 v2, v2, -0x1

    .line 451
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverListAdapter;->setPlaceholderCount(I)V

    .line 454
    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v3}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semGetOldItemCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter;->getPlaceholderCount()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 455
    invoke-interface {v3}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semNeedSortAfterPinned()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 456
    invoke-interface {v3}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semIsNeedSortingInRebuildList()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 459
    :cond_2
    invoke-virtual {p0, p2, v1}, Lcom/android/internal/app/ResolverListAdapter;->postListReadyRunnable(ZZ)V

    .line 460
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverListAdapter;->createSortingTask(Z)Landroid/os/AsyncTask;

    move-result-object v3

    new-array v0, v0, [Ljava/util/List;

    aput-object p1, v0, v1

    invoke-virtual {v3, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 463
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v0, v1}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semSetNeedSortAfterPinned(Z)V

    .line 464
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v0, v1}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semSetNeedSortingInRebuildList(Z)V

    .line 466
    return v1

    .line 442
    .end local v2    # "placeholderCount":I
    :cond_4
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverListAdapter;->setPlaceholderCount(I)V

    .line 443
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverListAdapter;->processSortedList(Ljava/util/List;Z)V

    .line 444
    return v0
.end method

.method public whitelist getCount()I
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .line 728
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPlaceholderCount:I

    .line 729
    :goto_1
    nop

    .line 735
    .local v0, "totalSize":I
    return v0
.end method

.method public blacklist getDisplayResolveInfo(I)Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 1
    .param p1, "index"    # I

    .line 766
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object v0
.end method

.method public blacklist getDisplayResolveInfoCount()I
    .locals 1

    .line 761
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getFilteredItem()Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 2

    .line 184
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object v0

    .line 188
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFilteredPosition()I
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    .line 197
    return v0

    .line 199
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method blacklist getInitialRebuiltResolveList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mBaseResolveList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v0, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 336
    invoke-interface {v2}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 335
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/app/ResolverListController;->addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    .line 338
    return-object v0

    .line 340
    .end local v0    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 342
    invoke-interface {v2}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->shouldGetActivityMetadata()Z

    move-result v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mIntents:Ljava/util/List;

    .line 340
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ResolverListController;->getResolversForIntent(ZZLjava/util/List;)Ljava/util/List;

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

    .line 936
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mIntents:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getItem(I)Lcom/android/internal/app/chooser/TargetInfo;
    .locals 1
    .param p1, "position"    # I

    .line 749
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 750
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/TargetInfo;

    return-object v0

    .line 752
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist getItem(I)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 757
    int-to-long v0, p1

    return-wide v0
.end method

.method protected blacklist getLoadLabelTask(Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter$ViewHolder;)Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;
    .locals 1
    .param p1, "info"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p2, "holder"    # Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 851
    new-instance v0, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;-><init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter$ViewHolder;)V

    return-object v0
.end method

.method public blacklist getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mOtherProfile:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object v0
.end method

.method public blacklist getPlaceholderCount()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPlaceholderCount:I

    return v0
.end method

.method protected blacklist getResolversForUser(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;
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

    .line 930
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 931
    invoke-interface {v1}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->shouldGetActivityMetadata()Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mIntents:Ljava/util/List;

    .line 930
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/android/internal/app/ResolverListController;->getResolversForIntentAsUser(ZZLjava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getScore(Landroid/content/ComponentName;)F
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 214
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverListController;->getScore(Landroid/content/ComponentName;)F

    move-result v0

    return v0
.end method

.method public blacklist getScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;)F
    .locals 1
    .param p1, "target"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 207
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverListController;->getScore(Lcom/android/internal/app/chooser/DisplayResolveInfo;)F

    move-result v0

    return v0
.end method

.method public blacklist getUnfilteredCount()I
    .locals 1

    .line 739
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

    .line 227
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListController;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 770
    move-object v0, p2

    .line 771
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 772
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ResolverListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 774
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/app/ResolverListAdapter;->onBindView(Landroid/view/View;Lcom/android/internal/app/chooser/TargetInfo;I)V

    .line 775
    return-object v0
.end method

.method public blacklist handlePackagesChanged()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v0, p0}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 172
    return-void
.end method

.method public blacklist hasFilteredItem()Z
    .locals 1

    .line 203
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

    .line 940
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mIsTabLoaded:Z

    return v0
.end method

.method blacklist loadFilteredItemIconTaskAsync(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "iconView"    # Landroid/widget/ImageView;

    .line 908
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter;->getFilteredItem()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    .line 909
    .local v0, "iconInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 910
    new-instance v1, Lcom/android/internal/app/ResolverListAdapter$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/internal/app/ResolverListAdapter$3;-><init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/widget/ImageView;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 920
    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverListAdapter$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 922
    :cond_0
    return-void
.end method

.method blacklist loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .line 898
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.android.internal.app.ForwardIntentToManagedProfile4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 899
    const-string v1, "com.android.internal.app.ForwardIntentToParent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 900
    const-string v1, "com.samsung.knox.securefolder.presentation.switcher.view.B2CStoreFilesActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 904
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 901
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
    .param p1, "ai"    # Landroid/content/pm/ActivityInfo;

    .line 888
    new-instance v0, Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mIconDpi:I

    invoke-direct {v0, v1, v2, p1}, Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;-><init>(Landroid/content/Context;ILandroid/content/pm/ActivityInfo;)V

    return-object v0
.end method

.method blacklist makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;
    .locals 3
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .line 892
    new-instance v0, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mIconDpi:I

    invoke-direct {v0, v1, v2, p1}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;-><init>(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;)V

    return-object v0
.end method

.method protected blacklist markTabLoaded()V
    .locals 1

    .line 944
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mIsTabLoaded:Z

    .line 945
    return-void
.end method

.method protected blacklist onBindView(Landroid/view/View;Lcom/android/internal/app/chooser/TargetInfo;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p3, "position"    # I

    .line 806
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 807
    .local v0, "holder":Lcom/android/internal/app/ResolverListAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 808
    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x1080828

    .line 809
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 808
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 810
    return-void

    .line 813
    :cond_0
    instance-of v1, p2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 814
    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->hasDisplayLabel()Z

    move-result v1

    if-nez v1, :cond_1

    .line 815
    move-object v1, p2

    check-cast v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ResolverListAdapter;->getLoadLabelTask(Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter$ViewHolder;)Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lcom/android/internal/app/ResolverListAdapter$LoadLabelTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 817
    :cond_1
    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter;->alwaysShowSubLabel()Z

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindLabel(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 820
    :goto_0
    instance-of v1, p2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v1, :cond_5

    move-object v1, p2

    check-cast v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 821
    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v1

    if-nez v1, :cond_5

    .line 822
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semIsSupportsAlwaysUseOption()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 823
    invoke-interface {v1}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semIsSupportsAlwaysUseOption()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p3, :cond_2

    const/4 v1, 0x1

    if-ne p3, v1, :cond_3

    :cond_2
    goto :goto_1

    .line 830
    :cond_3
    new-instance v1, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;

    move-object v3, p2

    check-cast v3, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-direct {v1, p0, v3, v0}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;-><init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter$ViewHolder;)V

    new-array v3, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3

    .line 825
    :cond_4
    :goto_1
    :try_start_0
    new-instance v1, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;

    move-object v3, p2

    check-cast v3, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-direct {v1, p0, v3, v0}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;-><init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter$ViewHolder;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 826
    :catch_0
    move-exception v1

    .line 827
    .local v1, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v3, "ResolverListAdapter"

    const-string v4, "LoadIconTask failed!!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 828
    .end local v1    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_2
    goto :goto_3

    .line 833
    :cond_5
    invoke-virtual {v0, p2}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindIcon(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 837
    :goto_3
    iget-object v1, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->badge:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    .line 838
    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->semGetBadgeIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 839
    .local v1, "badge":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_6

    .line 840
    iget-object v3, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 841
    iget-object v3, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->semGetBadgeContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 842
    iget-object v3, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 844
    :cond_6
    iget-object v2, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->badge:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 848
    .end local v1    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_7
    :goto_4
    return-void
.end method

.method blacklist onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 793
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090173

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onDestroy()V
    .locals 2

    .line 855
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 857
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    if-eqz v0, :cond_1

    .line 860
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListController;->destroy()V

    .line 862
    :cond_1
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

    .line 366
    .local p1, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mBaseResolveList:Ljava/util/List;

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    const/4 v1, 0x1

    .line 371
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/ResolverListController;->filterIneligibleActivities(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 372
    .local v0, "originalList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    if-nez v0, :cond_1

    move-object v1, p1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1

    .line 367
    .end local v0    # "originalList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :cond_2
    :goto_1
    return-object p1
.end method

.method blacklist performSecondaryResolveListFiltering(Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .param p2, "returnCopyOfOriginalListIfModified"    # Z
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

    .line 390
    .local p1, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ResolverListController;->filterLowPriority(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 391
    :cond_1
    :goto_0
    return-object p1
.end method

.method blacklist postListReadyRunnable(ZZ)V
    .locals 1
    .param p1, "doPostProcessing"    # Z
    .param p2, "rebuildCompleted"    # Z

    .line 578
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/app/ResolverListAdapter;->postListReadyRunnable(ZZZ)V

    .line 579
    return-void
.end method

.method blacklist postListReadyRunnable(ZZZ)V
    .locals 2
    .param p1, "doPostProcessing"    # Z
    .param p2, "rebuildCompleted"    # Z
    .param p3, "skipAutoLaunch"    # Z

    .line 590
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 591
    new-instance v0, Lcom/android/internal/app/ResolverListAdapter$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/app/ResolverListAdapter$2;-><init>(Lcom/android/internal/app/ResolverListAdapter;ZZZ)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    .line 599
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mPostListReadyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 601
    :cond_0
    return-void
.end method

.method protected blacklist processSortedList(Ljava/util/List;Z)V
    .locals 18
    .param p2, "doPostProcessing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 510
    .local p1, "sortedComponents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 511
    .local v2, "n":I
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

    .line 514
    iget-object v3, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 516
    const/4 v3, 0x1

    if-eqz v2, :cond_9

    .line 518
    iget-object v4, v0, Lcom/android/internal/app/ResolverListAdapter;->mInitialIntents:[Landroid/content/Intent;

    if-eqz v4, :cond_6

    .line 519
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, v0, Lcom/android/internal/app/ResolverListAdapter;->mInitialIntents:[Landroid/content/Intent;

    array-length v6, v5

    if-ge v4, v6, :cond_6

    .line 520
    aget-object v5, v5, v4

    .line 521
    .local v5, "ii":Landroid/content/Intent;
    if-nez v5, :cond_1

    .line 522
    goto/16 :goto_3

    .line 525
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Landroid/content/Intent;

    if-ne v6, v7, :cond_2

    move-object v6, v5

    goto :goto_2

    :cond_2
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 526
    .local v6, "rii":Landroid/content/Intent;
    :goto_2
    iget-object v7, v0, Lcom/android/internal/app/ResolverListAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v14

    .line 527
    .local v14, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v14, :cond_3

    .line 528
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No activity found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ResolverListAdapter"

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    goto :goto_3

    .line 531
    :cond_3
    new-instance v7, Landroid/content/pm/ResolveInfo;

    invoke-direct {v7}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object v15, v7

    .line 532
    .local v15, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v14, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 533
    iget-object v7, v0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    .line 534
    const-string/jumbo v8, "user"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Landroid/os/UserManager;

    .line 535
    .local v16, "userManager":Landroid/os/UserManager;
    instance-of v7, v5, Landroid/content/pm/LabeledIntent;

    if-eqz v7, :cond_4

    .line 536
    move-object v7, v5

    check-cast v7, Landroid/content/pm/LabeledIntent;

    .line 537
    .local v7, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual {v7}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v15, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 538
    invoke-virtual {v7}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v8

    iput v8, v15, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 539
    invoke-virtual {v7}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v15, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 540
    invoke-virtual {v7}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v8

    iput v8, v15, Landroid/content/pm/ResolveInfo;->icon:I

    .line 541
    iget v8, v15, Landroid/content/pm/ResolveInfo;->icon:I

    iput v8, v15, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 543
    .end local v7    # "li":Landroid/content/pm/LabeledIntent;
    :cond_4
    invoke-virtual/range {v16 .. v16}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 544
    iput-boolean v3, v15, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 545
    iput v1, v15, Landroid/content/pm/ResolveInfo;->icon:I

    .line 548
    :cond_5
    new-instance v13, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iget-object v7, v0, Lcom/android/internal/app/ResolverListAdapter;->mPm:Landroid/content/pm/PackageManager;

    .line 549
    invoke-virtual {v15, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverListAdapter;->makePresentationGetter(Landroid/content/pm/ResolveInfo;)Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v17

    move-object v7, v13

    move-object v8, v5

    move-object v9, v15

    move-object v12, v5

    move-object v3, v13

    move-object/from16 v13, v17

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    .line 548
    invoke-direct {v0, v3}, Lcom/android/internal/app/ResolverListAdapter;->addResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 519
    .end local v5    # "ii":Landroid/content/Intent;
    .end local v6    # "rii":Landroid/content/Intent;
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v15    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v16    # "userManager":Landroid/os/UserManager;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x1

    goto/16 :goto_1

    .line 553
    .end local v4    # "i":I
    :cond_6
    iget-object v3, v0, Lcom/android/internal/app/ResolverListAdapter;->mCopyButtonDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v3, :cond_7

    .line 554
    invoke-direct {v0, v3}, Lcom/android/internal/app/ResolverListAdapter;->addResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 557
    :cond_7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 558
    .local v4, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-virtual {v4, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 559
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_8

    .line 560
    invoke-direct {v0, v4}, Lcom/android/internal/app/ResolverListAdapter;->addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)V

    .line 562
    .end local v4    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_8
    goto :goto_4

    .line 565
    :cond_9
    iget-object v3, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v3}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->sendVoiceChoicesIfNeeded()V

    .line 566
    iget-object v3, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 567
    invoke-interface {v3}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semIsNeedSortingInRebuildList()Z

    move-result v3

    .line 566
    move/from16 v4, p2

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5, v3}, Lcom/android/internal/app/ResolverListAdapter;->postListReadyRunnable(ZZZ)V

    .line 569
    iget-object v3, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v3, v1}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semSetNeedSortAfterPinned(Z)V

    .line 570
    iget-object v3, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v3, v1}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semSetNeedSortingInRebuildList(Z)V

    .line 572
    iput-boolean v5, v0, Lcom/android/internal/app/ResolverListAdapter;->mIsTabLoaded:Z

    .line 573
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 574
    return-void
.end method

.method protected blacklist rebuildList(Z)Z
    .locals 6
    .param p1, "doPostProcessing"    # Z

    .line 250
    const-string v0, "ResolverListAdapter#rebuildList"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mIsTabLoaded:Z

    .line 259
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosenPosition:I

    .line 261
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semIsSupportsAlwaysUseOption()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverListController;->semSetSupportAlwaysUseOption(Z)V

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter;->getInitialRebuiltResolveList()Ljava/util/List;

    move-result-object v1

    .line 277
    .local v1, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverListAdapter;->performPrimaryResolveListFiltering(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    .line 281
    nop

    .line 282
    invoke-static {v1}, Lcom/android/internal/app/ResolverListAdapter;->getFirstNonCurrentUserResolvedComponentInfo(Ljava/util/List;)Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    move-result-object v3

    .line 283
    .local v3, "otherProfileInfo":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverListAdapter;->updateOtherProfileTreatment(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)V

    .line 284
    if-eqz v3, :cond_1

    .line 285
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 300
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 301
    invoke-interface {v4}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->getTargetIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semIsSendAction(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 302
    invoke-interface {v4}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semIsSupportsAlwaysUseOption()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 303
    invoke-interface {v4}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->useLayoutWithDefault()Z

    move-result v4

    if-nez v4, :cond_2

    .line 304
    invoke-direct {p0, v1}, Lcom/android/internal/app/ResolverListAdapter;->semSplitFeaturesIfNeeded(Ljava/util/List;)V

    .line 312
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/ResolverListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    if-ne v4, v1, :cond_3

    move v0, v2

    .line 313
    .local v0, "needsCopyOfUnfiltered":Z
    :cond_3
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ResolverListAdapter;->performSecondaryResolveListFiltering(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    .line 315
    .local v2, "originalList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    if-eqz v2, :cond_4

    .line 318
    iput-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mUnfilteredResolveList:Ljava/util/List;

    .line 321
    :cond_4
    nop

    .line 322
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/app/ResolverListAdapter;->finishRebuildingListWithFilteredResults(Ljava/util/List;Z)Z

    move-result v4

    .line 323
    .local v4, "result":Z
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 324
    return v4
.end method

.method public blacklist resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;
    .locals 2
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .line 709
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    .line 710
    .local v0, "target":Lcom/android/internal/app/chooser/TargetInfo;
    if-eqz v0, :cond_0

    .line 711
    invoke-interface {v0}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    return-object v1

    .line 713
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist semCheckDroppedItemExist()Z
    .locals 1

    .line 1698
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mShareLiveDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mNearbyShareDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist semForceHandlePackagesChanged()V
    .locals 1

    .line 1588
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v0, p0}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semOnForceHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 1589
    return-void
.end method

.method blacklist semGetFontScale()F
    .locals 2

    .line 1709
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 1710
    .local v0, "fontScale":F
    const v1, 0x3f99999a    # 1.2f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 1711
    const v0, 0x3f99999a    # 1.2f

    .line 1713
    :cond_0
    return v0
.end method

.method protected blacklist semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 1

    .line 1580
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mNearbyShareDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object v0
.end method

.method protected blacklist semGetNearbySharingChipBtnDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 1

    .line 1570
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mNearbySharingChipBtnDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object v0
.end method

.method protected blacklist semGetPrivateShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 1

    .line 1574
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mPrivateShareDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object v0
.end method

.method protected blacklist semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 1

    .line 1584
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mShareLiveDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object v0
.end method

.method protected blacklist semGetShareLiveDriForPerformance()Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 1

    .line 1560
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mShareLiveDriForPerformance:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object v0
.end method

.method protected blacklist semGetSimpleSharingDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 1

    .line 1566
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mSimpleSharingDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object v0
.end method

.method blacklist semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V
    .locals 4
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "resId"    # I

    .line 1702
    if-eqz p1, :cond_0

    .line 1703
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1704
    .local v0, "defaultTextSize":I
    const/4 v1, 0x0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter;->semGetFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1706
    .end local v0    # "defaultTextSize":I
    :cond_0
    return-void
.end method

.method public blacklist setPlaceholderCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 175
    iput p1, p0, Lcom/android/internal/app/ResolverListAdapter;->mPlaceholderCount:I

    .line 176
    return-void
.end method

.method protected blacklist shouldAddResolveInfo(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z
    .locals 5
    .param p1, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 695
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 696
    .local v1, "existingInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 697
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 699
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 700
    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 701
    const/4 v0, 0x0

    return v0

    .line 703
    .end local v1    # "existingInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :cond_0
    goto :goto_0

    .line 704
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;
    .locals 1
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .line 718
    if-eqz p2, :cond_0

    .line 719
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    return-object v0

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 722
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/TargetInfo;

    return-object v0

    .line 724
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist updateChooserCounts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 222
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/internal/app/ResolverListController;->updateChooserCounts(Ljava/lang/String;ILjava/lang/String;)V

    .line 224
    return-void
.end method

.method public blacklist updateModel(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 218
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverListController;->updateModel(Landroid/content/ComponentName;)V

    .line 219
    return-void
.end method

.method blacklist updateOtherProfileTreatment(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)V
    .locals 4
    .param p1, "otherProfileInfo"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    .line 409
    if-eqz p1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    iget v3, p0, Lcom/android/internal/app/ResolverListAdapter;->mIconDpi:I

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/internal/app/ResolverListAdapter;->makeOtherProfileDisplayResolveInfo(Landroid/content/Context;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Landroid/content/pm/PackageManager;Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;I)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mOtherProfile:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    goto :goto_0

    .line 413
    :cond_0
    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mOtherProfile:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListController;->getLastChosen()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    goto :goto_0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "re":Landroid/os/RemoteException;
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

    .line 424
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
