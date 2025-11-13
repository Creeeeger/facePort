.class public final Lcom/samsung/android/settings/share/SelectAppViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static quickShareShareComponent:Lcom/samsung/android/settings/share/structure/ShareComponent;


# instance fields
.field public final mAppItemPackageName:Ljava/util/ArrayList;

.field public final mAppItems:Ljava/util/ArrayList;

.field public mFavoriteComponentList:Ljava/util/ArrayList;

.field public mInitialListPair:Landroid/util/Pair;

.field public mIsAllChecked:Z

.field public mOtherComponentList:Ljava/util/ArrayList;

.field public final mSharedComponentMap:Ljava/util/Map;

.field public final mSourcesIntentList:Ljava/util/List;

.field public final modifiedLiveData:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mAppItemPackageName:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mAppItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mOtherComponentList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mFavoriteComponentList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mSharedComponentMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mSourcesIntentList:Ljava/util/List;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->modifiedLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final makeAppData(Lcom/samsung/android/settings/share/structure/ShareComponent;Landroid/content/Context;)Landroidx/picker/model/AppInfoDataImpl;
    .locals 11

    iget-object v0, p1, Lcom/samsung/android/settings/share/structure/ShareComponent;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/settings/share/structure/ShareComponent;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/settings/share/structure/ShareComponent;->mUserId:I

    sget-object v3, Landroidx/picker/model/AppInfo;->Companion:Landroidx/picker/model/AppInfo$Companion;

    invoke-static {v2, v0, v1}, Landroidx/picker/model/AppInfo$Companion;->obtain(ILjava/lang/String;Ljava/lang/String;)Landroidx/picker/model/AppInfo;

    move-result-object v0

    new-instance v1, Landroidx/picker/model/AppInfoDataImpl;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Landroidx/picker/model/AppInfoDataImpl;-><init>(Landroidx/picker/model/AppInfo;I)V

    iget-object v2, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mSourcesIntentList:Ljava/util/List;

    iget-object v3, p1, Lcom/samsung/android/settings/share/structure/ShareComponent;->mCachedInfo:Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;

    const/4 v4, 0x0

    if-nez v3, :cond_5

    iget-object v3, p1, Lcom/samsung/android/settings/share/structure/ShareComponent;->mComponentName:Landroid/content/ComponentName;

    iget v5, p1, Lcom/samsung/android/settings/share/structure/ShareComponent;->mUserId:I

    invoke-static {v5, v3, p2, v2}, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->makePresentationGetter(ILandroid/content/ComponentName;Landroid/content/Context;Ljava/util/List;)Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-boolean v3, v2, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mHasSubstitutePermission:Z

    if-eqz v3, :cond_0

    new-instance v3, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;

    invoke-direct {v3, v2, v4}, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;-><init>(Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;Landroid/util/Pair;)V

    iput-object v3, p1, Lcom/samsung/android/settings/share/structure/ShareComponent;->mCachedInfo:Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;

    iget-object v5, p1, Lcom/samsung/android/settings/share/structure/ShareComponent;->mLabelPair:Landroid/util/Pair;

    invoke-direct {v3, v2, v5}, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;-><init>(Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;Landroid/util/Pair;)V

    iput-object v3, p1, Lcom/samsung/android/settings/share/structure/ShareComponent;->mCachedInfo:Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;

    :goto_0
    iget-object v2, p1, Lcom/samsung/android/settings/share/structure/ShareComponent;->mCachedInfo:Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;

    iget-object v3, v2, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;->mLabelPair:Landroid/util/Pair;

    if-eqz v3, :cond_1

    goto :goto_3

    :cond_1
    iget-object v3, v2, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;->mTargetPresentationGetter:Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->getLabel()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, v3, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mHasSubstitutePermission:Z

    if-eqz v6, :cond_3

    iget-object v6, v3, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget-object v7, v3, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v6, v4

    goto :goto_1

    :cond_3
    iget-object v6, v3, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Landroid/util/Pair;

    const-string v6, ""

    invoke-direct {v3, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    iput-object v3, v2, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;->mLabelPair:Landroid/util/Pair;

    :cond_5
    :goto_3
    iget-object v2, p1, Lcom/samsung/android/settings/share/structure/ShareComponent;->mLabelPair:Landroid/util/Pair;

    if-eqz v2, :cond_6

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iput-object v3, v1, Landroidx/picker/model/AppInfoDataImpl;->label:Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Landroidx/picker/model/AppInfoDataImpl;->subLabel:Ljava/lang/String;

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mSourcesIntentList:Ljava/util/List;

    iget-object v3, p1, Lcom/samsung/android/settings/share/structure/ShareComponent;->mCachedInfo:Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;

    if-nez v3, :cond_12

    iget-object v3, p1, Lcom/samsung/android/settings/share/structure/ShareComponent;->mComponentName:Landroid/content/ComponentName;

    iget v5, p1, Lcom/samsung/android/settings/share/structure/ShareComponent;->mUserId:I

    invoke-static {v5, v3, p2, v2}, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->makePresentationGetter(ILandroid/content/ComponentName;Landroid/content/Context;Ljava/util/List;)Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;

    move-result-object p2

    if-eqz p2, :cond_12

    iget-boolean v2, p2, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mHasSubstitutePermission:Z

    if-eqz v2, :cond_7

    new-instance v2, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;

    invoke-direct {v2, p2, v4}, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;-><init>(Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;Landroid/util/Pair;)V

    iput-object v2, p1, Lcom/samsung/android/settings/share/structure/ShareComponent;->mCachedInfo:Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;

    goto :goto_4

    :cond_7
    new-instance v2, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;

    iget-object v3, p1, Lcom/samsung/android/settings/share/structure/ShareComponent;->mLabelPair:Landroid/util/Pair;

    invoke-direct {v2, p2, v3}, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;-><init>(Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;Landroid/util/Pair;)V

    iput-object v2, p1, Lcom/samsung/android/settings/share/structure/ShareComponent;->mCachedInfo:Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;

    :goto_4
    iget-object p2, p1, Lcom/samsung/android/settings/share/structure/ShareComponent;->mCachedInfo:Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;

    iget-object v2, p2, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    goto/16 :goto_a

    :cond_8
    iget-object v2, p2, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;->mTargetPresentationGetter:Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;

    if-nez v2, :cond_9

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p2

    goto/16 :goto_a

    :cond_9
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, v2, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mCtx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v6, v2, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mHasSubstitutePermission:Z

    const-string v7, "TargetPresentationGetter"

    if-eqz v6, :cond_a

    :try_start_0
    iget-object v6, v2, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, v2, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    iget-object v8, v2, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget v8, v8, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {v2, v6, v8}, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->loadIconFromResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v6

    const-string v8, "SUBSTITUTE_SHARE_TARGET_APP_NAME_AND_ICON permission granted but couldn\'t find resources for package"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_1
    iget-object v6, v2, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v9, v6, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v9, :cond_a

    iget-object v9, v2, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v10, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v9

    iget v6, v6, Landroid/content/pm/ActivityInfo;->icon:I

    invoke-virtual {v2, v9, v6}, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->loadIconFromResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v6

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_5
    iget-object v6, v2, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mCtx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "current_sec_appicon_theme_package"

    invoke-static {v6, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    if-nez v4, :cond_b

    iget-object v4, v2, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v2, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_7

    :cond_b
    iget-object v6, v2, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, v2, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->semShouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, v2, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_7

    :cond_c
    if-nez v4, :cond_d

    :try_start_2
    iget-object v6, v2, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget v8, v6, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v8, :cond_d

    iget-object v8, v2, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v6

    iget-object v8, v2, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v2, v6, v8}, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->loadIconFromResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_6
    if-nez v4, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "last icon load = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v6, v7}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v2, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v2, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_e
    if-eqz v4, :cond_f

    iget-object v6, v2, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, v2, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->semShouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, v2, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    const/16 v7, 0x30

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_f
    :goto_7
    iget-object v6, v2, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, v2, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    sget-object v8, Lcom/samsung/android/settings/share/common/ShareConstants;->ICON_CLASS_FOR_INTENT_FORWARD_TO_PARENT:Ljava/lang/String;

    iget-object v2, v2, Lcom/samsung/android/settings/share/common/ResolveInfoTargetPresentationGetter;->mRi:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_10

    invoke-static {v8}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    goto :goto_8

    :cond_10
    invoke-static {v7}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    :goto_8
    invoke-virtual {v6, v4, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v4, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_11

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_9

    :cond_11
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    invoke-virtual {v2, v8, v8, v7, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v2, v4

    :goto_9
    invoke-direct {v3, v5, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v3, p2, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    :goto_a
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Landroid/graphics/drawable/Drawable;

    :cond_12
    if-eqz v4, :cond_13

    iput-object v4, v1, Landroidx/picker/model/AppInfoDataImpl;->icon:Landroid/graphics/drawable/Drawable;

    :cond_13
    iget-object p2, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mSharedComponentMap:Ljava/util/Map;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->mAppItemPackageName:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/android/settings/share/structure/ShareComponent;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
