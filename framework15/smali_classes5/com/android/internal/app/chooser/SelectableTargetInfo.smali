.class public final Lcom/android/internal/app/chooser/SelectableTargetInfo;
.super Ljava/lang/Object;
.source "SelectableTargetInfo.java"

# interfaces
.implements Lcom/android/internal/app/chooser/ChooserTargetInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SelectableTargetInfo"


# instance fields
.field private final blacklist mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

.field private blacklist mBadgeContentDescription:Ljava/lang/CharSequence;

.field private blacklist mBadgeIcon:Landroid/graphics/drawable/Drawable;

.field private final blacklist mChooserTarget:Landroid/service/chooser/ChooserTarget;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDisplayIcon:Landroid/graphics/drawable/Drawable;

.field private final blacklist mDisplayLabel:Ljava/lang/String;

.field private final blacklist mFillInFlags:I

.field private final blacklist mFillInIntent:Landroid/content/Intent;

.field private final blacklist mIsPinned:Z

.field private blacklist mIsSuspended:Z

.field private final blacklist mModifiedScore:F

.field private final blacklist mPm:Landroid/content/pm/PackageManager;

.field private final blacklist mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

.field private blacklist mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private final blacklist mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/service/chooser/ChooserTarget;FLcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;Landroid/content/pm/ShortcutInfo;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsSuspended:Z

    iput-object p1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iput-object p3, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    iput p4, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mModifiedScore:F

    iget-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mPm:Landroid/content/pm/PackageManager;

    iput-object p5, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    iput-object p6, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    const/4 v2, 0x1

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsPinned:Z

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_2

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x40000000    # 2.0f

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsSuspended:Z

    :cond_2
    if-eqz p2, :cond_3

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    :goto_2
    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mFillInIntent:Landroid/content/Intent;

    iput v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mFillInFlags:I

    invoke-virtual {p3}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->sanitizeDisplayLabel(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayLabel:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/app/chooser/SelectableTargetInfo;Landroid/content/Intent;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsSuspended:Z

    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mPm:Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mFillInIntent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mFillInFlags:I

    iget v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mModifiedScore:F

    iput v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mModifiedScore:F

    iget-boolean v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsPinned:Z

    iput-boolean v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsPinned:Z

    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v0}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->sanitizeDisplayLabel(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayLabel:Ljava/lang/String;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private blacklist getBaseIntentToSend()Landroid/content/Intent;
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "SelectableTargetInfo"

    const-string v2, "ChooserTargetInfo: no base intent available to send"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mFillInIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mFillInIntent:Landroid/content/Intent;

    iget v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mFillInFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;->getReferrerFillInIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    :goto_0
    return-object v0
.end method

.method private blacklist getChooserTargetIconDrawable(Landroid/service/chooser/ChooserTarget;Landroid/content/pm/ShortcutInfo;)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/service/chooser/ChooserTarget;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "launcherapps"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherApps;

    invoke-virtual {v3, p2, v2}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    :goto_0
    const/4 v3, 0x0

    if-nez v0, :cond_2

    return-object v3

    :cond_2
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v2

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v5, "SelectableTargetInfo"

    const-string v6, "Could not find activity associated with ChooserTarget"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-nez v4, :cond_3

    return-object v3

    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    invoke-interface {v2, v4}, Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;->makePresentationGetter(Landroid/content/pm/ActivityInfo;)Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;->getIconBitmap(Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/app/SimpleIconFactory;->obtain(Landroid/content/Context;)Lcom/android/internal/app/SimpleIconFactory;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/android/internal/app/SimpleIconFactory;->createAppBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/internal/app/SimpleIconFactory;->recycle()V

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v6
.end method

.method private blacklist sanitizeDisplayLabel(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/chooser/TargetInfo;
    .locals 1

    new-instance v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/app/chooser/SelectableTargetInfo;-><init>(Lcom/android/internal/app/chooser/SelectableTargetInfo;Landroid/content/Intent;I)V

    return-object v0
.end method

.method public blacklist getAllSourceIntents()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public blacklist getChooserTarget()Landroid/service/chooser/ChooserTarget;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    return-object v0
.end method

.method public declared-synchronized blacklist getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist getDisplayLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayLabel:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDisplayResolveInfo()Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object v0
.end method

.method public blacklist getExtendedInfo()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getModifiedScore()F
    .locals 1

    iget v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mModifiedScore:F

    return v0
.end method

.method public blacklist getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    :goto_0
    return-object v0
.end method

.method public blacklist getResolvedComponentName()Landroid/content/ComponentName;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getResolvedIntent()Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public declared-synchronized blacklist hasDisplayIcon()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist isPinned()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsPinned:Z

    return v0
.end method

.method public blacklist isSuspended()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsSuspended:Z

    return v0
.end method

.method public blacklist loadIcon()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-direct {p0, v3, v0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getChooserTargetIconDrawable(Landroid/service/chooser/ChooserTarget;Landroid/content/pm/ShortcutInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    monitor-enter p0

    :try_start_1
    iput-object v3, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    monitor-exit p0

    move-object v1, v3

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_1
    return v2

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public blacklist start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ChooserTargets should be started as caller."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z
    .locals 5

    invoke-direct {p0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getBaseIntentToSend()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v2}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v2}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {v0, p3}, Lcom/android/internal/app/chooser/TargetInfo;->prepareIntentForCrossProfileLaunch(Landroid/content/Intent;I)V

    iget-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v4}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    nop

    :goto_0
    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/android/internal/app/ResolverActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    return v3
.end method

.method public blacklist startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ChooserTargets should be started as caller."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
