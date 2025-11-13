.class public abstract Lcom/android/settings/notification/app/NotificationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NotificationSettings.java"

# interfaces
.implements Lcom/android/settings/core/OnActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field protected mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

.field protected mArgs:Landroid/os/Bundle;

.field protected mBackend:Lcom/android/settings/notification/NotificationBackend;

.field protected mChannel:Landroid/app/NotificationChannel;

.field protected mChannelComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field protected mChannelGroup:Landroid/app/NotificationChannelGroup;

.field protected mContext:Landroid/content/Context;

.field protected mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/notification/app/NotificationPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field protected mConversationDrawable:Landroid/graphics/drawable/Drawable;

.field protected mConversationInfo:Landroid/content/pm/ShortcutInfo;

.field protected mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

.field protected mDynamicPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field protected mIntent:Landroid/content/Intent;

.field private mLayoutView:Landroid/view/ViewGroup;

.field protected mListeningToPackageRemove:Z

.field protected mNm:Landroid/app/NotificationManager;

.field private final mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field protected final mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

.field protected mPkg:Ljava/lang/String;

.field protected mPkgInfo:Landroid/content/pm/PackageInfo;

.field protected mPm:Landroid/content/pm/PackageManager;

.field protected mPreferenceFilter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mRm:Landroid/app/role/RoleManager;

.field protected mShowLegacyChannelConfig:Z

.field protected mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field protected mUid:I

.field protected mUserId:I


# direct methods
.method public static synthetic $r8$lambda$JWIDp-cFATxbjKa2XU3ov3LdbFA(Lcom/android/settings/notification/app/NotificationSettings;Landroid/app/NotificationChannel;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/app/NotificationSettings;->lambda$populateSingleChannelPrefs$1(Landroid/app/NotificationChannel;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nO7YIs2wzBCz9xYImDvbnZ88CVo(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/notification/app/NotificationSettings;->lambda$new$0(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLayoutView(Lcom/android/settings/notification/app/NotificationSettings;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mLayoutView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$manimateIn(Lcom/android/settings/notification/app/NotificationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/app/NotificationSettings;->animateIn()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/notification/app/NotificationSettings;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "NotifiSettingsBase"

    const/4 v1, 0x3

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/app/NotificationSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 84
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mShowLegacyChannelConfig:Z

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    .line 105
    new-instance v0, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;-><init>(Lcom/android/settings/notification/app/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mDynamicPreferences:Ljava/util/List;

    .line 115
    new-instance v0, Lcom/android/settings/notification/app/NotificationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/app/NotificationSettings$1;-><init>(Lcom/android/settings/notification/app/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 426
    new-instance v0, Lcom/android/settings/notification/app/NotificationSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/app/NotificationSettings$2;-><init>(Lcom/android/settings/notification/app/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 440
    new-instance v0, Lcom/android/settings/notification/app/NotificationSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/notification/app/NotificationSettings$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannelComparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/app/NotificationSettings;)V
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method private animateIn()V
    .locals 6

    .line 248
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mLayoutView:Landroid/view/ViewGroup;

    .line 249
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    int-to-float v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0xfa

    .line 248
    invoke-static/range {v0 .. v5}, Lcom/android/settings/notification/app/NotificationSettings;->buildAnimatorSet(Landroid/view/View;FFFFI)Landroid/animation/AnimatorSet;

    move-result-object p0

    .line 252
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 253
    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 254
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 255
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static buildAnimatorSet(Landroid/view/View;FFFFI)Landroid/animation/AnimatorSet;
    .locals 5

    .line 268
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    int-to-long v1, p5

    .line 269
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 270
    new-instance p5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p5, 0x2

    new-array v1, p5, [Landroid/animation/Animator;

    .line 271
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, p5, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 p1, 0x1

    aput p2, v3, p1

    .line 272
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, v1, v4

    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p5, p5, [F

    aput p3, p5, v4

    aput p4, p5, p1

    .line 273
    invoke-static {p0, p2, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    aput-object p0, v1, p1

    .line 271
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private findPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-gez p2, :cond_0

    goto :goto_1

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 388
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 390
    aget-object v3, p2, v2

    .line 391
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 393
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPm:Landroid/content/pm/PackageManager;

    const/16 v4, 0x1040

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v3

    .line 396
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NotifiSettingsBase"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private getChannelPreferenceKey(Landroid/app/NotificationChannel;)Ljava/lang/String;
    .locals 1

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$0(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)I
    .locals 2

    .line 442
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 443
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    return p0

    .line 444
    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "miscellaneous"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 447
    :cond_1
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, -0x1

    return p0

    .line 451
    :cond_2
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$populateSingleChannelPrefs$1(Landroid/app/NotificationChannel;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 512
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 514
    :goto_0
    invoke-virtual {p1, p3}, Landroid/app/NotificationChannel;->setImportance(I)V

    const/4 p3, 0x4

    .line 515
    invoke-virtual {p1, p3}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 517
    check-cast p2, Lcom/android/settingslib/PrimarySwitchPreference;

    const/4 p3, 0x0

    .line 518
    invoke-virtual {p2, p3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 524
    iget-object p2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object p3, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkg:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUid:I

    invoke-virtual {p2, p3, p0, p1}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    const/4 p0, 0x1

    return p0
.end method

.method private loadAppRow()V
    .locals 5

    .line 321
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationSettings;->mRm:Landroid/app/role/RoleManager;

    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/notification/NotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/role/RoleManager;Landroid/content/pm/PackageInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    return-void
.end method

.method private loadChannel()V
    .locals 6

    .line 285
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.provider.extra.CHANNEL_ID"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    const-string v3, ":settings:show_fragment_args"

    .line 288
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 289
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :cond_2
    :goto_1
    const-string v4, "android.provider.extra.CONVERSATION_ID"

    if-eqz v0, :cond_3

    .line 291
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v2

    :goto_2
    if-nez v3, :cond_5

    .line 294
    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationSettings;->mArgs:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_3

    :cond_4
    move-object v3, v2

    :cond_5
    :goto_3
    if-nez v0, :cond_7

    .line 297
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mArgs:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    move-object v0, v2

    .line 300
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkg:Ljava/lang/String;

    iget v5, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUid:I

    invoke-virtual {v1, v4, v5, v3, v0}, Lcom/android/settings/notification/NotificationBackend;->getChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_8

    .line 302
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkg:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUid:I

    invoke-virtual {v0, v1, p0, v3, v2}, Lcom/android/settings/notification/NotificationBackend;->getChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    :cond_8
    return-void
.end method

.method private loadChannelGroup()V
    .locals 5

    .line 325
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/notification/NotificationBackend;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v0

    const-string/jumbo v1, "miscellaneous"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mShowLegacyChannelConfig:Z

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v1, v4}, Lcom/android/settings/notification/NotificationBackend;->getChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 334
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUid:I

    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getGroup(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 336
    iput-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    :cond_3
    return-void
.end method

.method private loadConversation()V
    .locals 11

    .line 307
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    .line 308
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUid:I

    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    .line 312
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v4

    .line 311
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/notification/NotificationBackend;->getConversationInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/notification/app/NotificationSettings;->mConversationInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v7, :cond_1

    .line 314
    iget-object v5, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v6, p0, Lcom/android/settings/notification/app/NotificationSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v8, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v9, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    .line 316
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v10

    .line 314
    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/notification/NotificationBackend;->getConversationDrawable(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mConversationDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    return-void
.end method

.method private loadPreferencesFilter()V
    .locals 2

    .line 278
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.provider.extra.CHANNEL_FILTER_LIST"

    .line 280
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 281
    :goto_0
    iput-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPreferenceFilter:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected animatePanel()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPreferenceFilter:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mLayoutView:Landroid/view/ViewGroup;

    .line 236
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method protected collectConfigActivities()V
    .locals 7

    .line 347
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    .line 348
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    .line 349
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 354
    sget-boolean v2, Lcom/android/settings/notification/app/NotificationSettings;->DEBUG:Z

    const-string v3, "NotifiSettingsBase"

    if-eqz v2, :cond_1

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " preference activities"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    const-string v4, " ;_;"

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 355
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 359
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 360
    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v5, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    .line 361
    sget-boolean v4, Lcom/android/settings/notification/app/NotificationSettings;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 362
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring duplicate notification preference activity ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 369
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 370
    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v5, 0x10000000

    .line 371
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    .line 372
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v2, :cond_4

    .line 373
    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v4, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.intent.extra.CHANNEL_ID"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    :cond_4
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v2, :cond_2

    .line 376
    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v4, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    .line 377
    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.intent.extra.CHANNEL_GROUP_ID"

    .line 376
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    return-void
.end method

.method protected isChannelBlockable(Landroid/app/NotificationChannel;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 562
    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v1, :cond_1

    .line 563
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-static {v1, p0, p1}, Lcom/android/settingslib/SecNotificationBlockManager;->isBlockableNotificationChannel(Landroid/content/Context;Ljava/lang/String;Landroid/app/NotificationChannel;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    return v1

    .line 567
    :cond_0
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    if-nez p0, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method protected isChannelConfigurable(Landroid/app/NotificationChannel;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 537
    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v1, :cond_4

    .line 539
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    .line 540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel configurable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " !["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object p1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->lockedChannelId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "NotifiSettingsBase"

    invoke-static {v2, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object p1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->lockedChannelId:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    if-nez v1, :cond_0

    goto :goto_2

    .line 544
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 545
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->lockedChannelId:Ljava/lang/String;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 546
    array-length p1, p0

    move v3, v0

    :goto_0
    if-ge v3, p1, :cond_3

    aget-object v4, p0, v3

    if-nez v4, :cond_1

    goto :goto_1

    .line 549
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v0

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v2

    :cond_4
    return v0
.end method

.method public isPreferenceAnimationAllowed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 9

    .line 133
    const-class v0, Lcom/android/settings/notification/app/ConversationHeaderPreferenceController;

    const-class v1, Lcom/android/settings/notification/app/HeaderPreferenceController;

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mContext:Landroid/content/Context;

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mIntent:Landroid/content/Intent;

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mArgs:Landroid/os/Bundle;

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 139
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mNm:Landroid/app/NotificationManager;

    .line 140
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mRm:Landroid/app/role/RoleManager;

    .line 142
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mArgs:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string/jumbo v2, "package"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mIntent:Landroid/content/Intent;

    const-string v2, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkg:Ljava/lang/String;

    .line 145
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mArgs:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    const-string/jumbo v2, "uid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 146
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mIntent:Landroid/content/Intent;

    const/4 v2, -0x1

    const-string v3, "app_uid"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUid:I

    if-gez p1, :cond_2

    .line 151
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkg:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :catch_0
    :cond_2
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUid:I

    invoke-direct {p0, p1, v2}, Lcom/android/settings/notification/app/NotificationSettings;->findPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_5

    .line 159
    iget p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUserId:I

    .line 160
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkg:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfApplicationIsSuspended(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 163
    invoke-direct {p0}, Lcom/android/settings/notification/app/NotificationSettings;->loadChannel()V

    .line 164
    invoke-direct {p0}, Lcom/android/settings/notification/app/NotificationSettings;->loadAppRow()V

    .line 165
    invoke-direct {p0}, Lcom/android/settings/notification/app/NotificationSettings;->loadChannelGroup()V

    .line 166
    invoke-direct {p0}, Lcom/android/settings/notification/app/NotificationSettings;->loadPreferencesFilter()V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationSettings;->collectConfigActivities()V

    .line 169
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 170
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 172
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 173
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleObserver;

    .line 173
    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 177
    :cond_4
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/settings/notification/app/NotificationPreferenceController;

    .line 178
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings/notification/app/NotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v8, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPreferenceFilter:Ljava/util/List;

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/notification/app/NotificationPreferenceController;->onResume(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ShortcutInfo;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Ljava/util/List;)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 186
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 188
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mIntent:Landroid/content/Intent;

    const-string v0, "NotifiSettingsBase"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mArgs:Landroid/os/Bundle;

    if-nez p1, :cond_0

    const-string p1, "No intent"

    .line 189
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationSettings;->toastAndFinish()V

    return-void

    .line 194
    :cond_0
    iget p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUid:I

    if-ltz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkg:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_1

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationSettings;->startListeningToPackageRemove()V

    return-void

    :cond_2
    :goto_0
    const-string p1, "Missing package or uid or packageinfo"

    .line 195
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationSettings;->toastAndFinish()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationSettings;->stopListeningToPackageRemove()V

    .line 206
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method protected onPackageRemoved()V
    .locals 0

    .line 423
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 211
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 212
    iget v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUid:I

    const-string v1, "NotifiSettingsBase"

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-nez v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/app/NotificationSettings;->loadAppRow()V

    .line 221
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-nez v0, :cond_1

    const-string v0, "Can\'t load package"

    .line 222
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/app/NotificationSettings;->loadChannel()V

    .line 227
    invoke-direct {p0}, Lcom/android/settings/notification/app/NotificationSettings;->loadConversation()V

    .line 228
    invoke-direct {p0}, Lcom/android/settings/notification/app/NotificationSettings;->loadChannelGroup()V

    .line 229
    invoke-direct {p0}, Lcom/android/settings/notification/app/NotificationSettings;->loadPreferencesFilter()V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationSettings;->collectConfigActivities()V

    return-void

    :cond_2
    :goto_0
    const-string v0, "Missing package or uid or packageinfo"

    .line 213
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method protected populateSingleChannelPrefs(Landroidx/preference/PreferenceGroup;Landroid/app/NotificationChannel;Z)Landroidx/preference/Preference;
    .locals 4

    .line 471
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "miscellaneous"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 480
    new-instance v0, Lcom/android/settingslib/PrimarySwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/PrimarySwitchPreference;-><init>(Landroid/content/Context;)V

    .line 481
    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 482
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/app/NotificationSettings;->isChannelBlockable(Landroid/app/NotificationChannel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/app/NotificationSettings;->isChannelConfigurable(Landroid/app/NotificationChannel;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p3, :cond_0

    move p3, v3

    goto :goto_0

    :cond_0
    move p3, v2

    .line 481
    :goto_0
    invoke-virtual {v0, p3}, Lcom/android/settingslib/PrimarySwitchPreference;->setSwitchEnabled(Z)V

    const/4 p3, 0x0

    .line 485
    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 p3, 0x2

    .line 489
    invoke-virtual {v0, p3}, Lcom/android/settingslib/widget/TwoTargetPreference;->setIconSize(I)V

    .line 491
    invoke-direct {p0, p2}, Lcom/android/settings/notification/app/NotificationSettings;->getChannelPreferenceKey(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 497
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p3

    if-eqz p3, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/settingslib/PrimarySwitchPreference;->setChecked(Z)V

    .line 498
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 499
    iget v1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUid:I

    const-string/jumbo v2, "uid"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 500
    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkg:Ljava/lang/String;

    const-string/jumbo v2, "package"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fromSettings"

    .line 502
    invoke-virtual {p3, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 503
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/notification/app/ChannelNotificationSettings;

    .line 504
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 505
    invoke-virtual {v1, p3}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p3

    sget v1, Lcom/android/settings/R$string;->notification_channel_title:I

    .line 506
    invoke-virtual {p3, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p3

    .line 507
    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p3

    .line 508
    invoke-virtual {p3}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p3

    .line 503
    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 510
    new-instance p3, Lcom/android/settings/notification/app/NotificationSettings$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p2}, Lcom/android/settings/notification/app/NotificationSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/app/NotificationSettings;Landroid/app/NotificationChannel;)V

    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 531
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method

.method protected setVisible(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;Z)V
    .locals 0

    .line 459
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-ne p0, p3, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 462
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 464
    :cond_2
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_1
    return-void
.end method

.method protected startListeningToPackageRemove()V
    .locals 2

    .line 405
    iget-boolean v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mListeningToPackageRemove:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 408
    iput-boolean v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mListeningToPackageRemove:Z

    .line 409
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 410
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected stopListeningToPackageRemove()V
    .locals 1

    .line 415
    iget-boolean v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mListeningToPackageRemove:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 418
    iput-boolean v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mListeningToPackageRemove:Z

    .line 419
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected toastAndFinish()V
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->app_not_found_dlg_text:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 343
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
