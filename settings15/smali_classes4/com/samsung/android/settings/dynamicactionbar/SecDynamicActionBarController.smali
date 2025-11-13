.class public final Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;
.implements Lcom/android/settings/core/CategoryMixin$CategoryListener;


# instance fields
.field public mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field public mCollapsingAppbarTitleLayout:Landroid/widget/LinearLayout;

.field public mDismissedDynamicActionBarList:Ljava/util/ArrayList;

.field public mDynamicAppBarButtonContainer:Landroid/widget/LinearLayout;

.field public mDynamicAppBarLayout:Landroid/widget/FrameLayout;

.field public mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

.field public mDynamicAppBarTitleLayout:Landroid/widget/LinearLayout;

.field public mExtendedSubTitle:Landroid/widget/TextView;

.field public mExtendedTitle:Landroid/widget/TextView;

.field public final mHost:Landroidx/fragment/app/Fragment;

.field public final mRegisteredObservers:Ljava/util/List;

.field public final mSecDynamicActionBarFeatureProvider:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;

.field public mTitleLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mRegisteredObservers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDismissedDynamicActionBarList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->secDynamicActionBarFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;

    iput-object p1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mSecDynamicActionBarFeatureProvider:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static animViewAlpha(Landroid/view/View;FFJLandroid/view/animation/Interpolator;)V
    .locals 3

    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    new-array v0, p1, [Landroid/animation/PropertyValuesHolder;

    aput-object p2, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;I)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p2, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 p0, 0x0

    invoke-virtual {p2, p0, p1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static animViewTransY(Landroid/view/View;FFJLandroid/view/animation/Interpolator;)V
    .locals 3

    const-string/jumbo v0, "trans"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    new-array p1, p1, [Landroid/animation/PropertyValuesHolder;

    aput-object p2, p1, v2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;IF)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    if-nez p2, :cond_0

    const-string p0, "SecDynamicActionBarController"

    const-string p1, "Appearance value is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget p0, p2, Landroid/util/TypedValue;->data:I

    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 p3, 0x1

    mul-float/2addr p2, p0

    invoke-virtual {p1, p3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method public final onCategoriesChanged(Ljava/util/Set;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->updateDynamicActionBar()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "dynamic_action_bar_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDismissedDynamicActionBarList:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mRegisteredObservers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->unregisterDynamicDataObservers(Ljava/util/List;)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    const-string v0, "SettingsBaseActivity#onResume-updateDynamicActionBar"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->updateDynamicActionBar()V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "dynamic_action_bar_list"

    iget-object p0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDismissedDynamicActionBarList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final onStart()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/core/CategoryMixin$CategoryHandler;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/CategoryMixin$CategoryHandler;

    invoke-interface {v0}, Lcom/android/settings/core/CategoryMixin$CategoryHandler;->getCategoryMixin()Lcom/android/settings/core/CategoryMixin;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/core/CategoryMixin;->mCategoryListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/core/CategoryMixin$CategoryHandler;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/CategoryMixin$CategoryHandler;

    invoke-interface {v0}, Lcom/android/settings/core/CategoryMixin$CategoryHandler;->getCategoryMixin()Lcom/android/settings/core/CategoryMixin;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/core/CategoryMixin;->mCategoryListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final unregisterDynamicDataObservers(Ljava/util/List;)V
    .locals 3

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;Landroid/content/ContentResolver;I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateDynamicActionBar()V
    .locals 32

    move-object/from16 v1, p0

    const-string v0, "SecDynamicActionBarController"

    iget-object v5, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    if-nez v5, :cond_0

    const-string v1, "Fragment isn\'t attached."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v6, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mSecDynamicActionBarFeatureProvider:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;

    if-nez v6, :cond_1

    const-string v1, "SecDynamicActionBarFeatureProvider isn\'t initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    instance-of v8, v7, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    if-eqz v8, :cond_2

    move-object v9, v7

    check-cast v9, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    iget-object v9, v9, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v9, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    :cond_2
    iget-object v9, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v9, :cond_3

    const-string v1, "App bar layout is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const v10, 0x7f0a0392

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v9, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const v10, 0x7f0a0391

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mExtendedTitle:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const v10, 0x7f0a0390

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sget-object v11, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    check-cast v11, Landroid/util/ArrayMap;

    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    const-string v11, "com.android.settings.component_name"

    const-string v12, "SecDynamicTitleFeatureProviderImpl"

    if-nez v9, :cond_4

    move-object/from16 v18, v0

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    move/from16 v20, v8

    goto/16 :goto_6

    :cond_4
    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.android.settings.intent.action.DYNAMIC_ACTION_BAR"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v6, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v2, 0x80

    invoke-virtual {v4, v14, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-boolean v2, v13, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v2, :cond_6

    iget-object v2, v6, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v4

    iget-object v4, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/settings/Utils;->hasPlatformKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    :goto_1
    move-object/from16 v4, v17

    const/16 v2, 0x80

    goto :goto_0

    :cond_6
    move-object/from16 v17, v4

    :cond_7
    iget-object v2, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-static {v4, v14, v2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->verifyMetaData(Landroid/os/Bundle;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v4, v11, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v6, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v14, v4}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-boolean v13, v4, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v13, :cond_9

    iget-object v13, v6, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v3

    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {v13, v3}, Lcom/android/settings/Utils;->hasPlatformKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v3, v16

    goto :goto_2

    :cond_9
    move-object/from16 v16, v3

    :cond_a
    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v13, v6, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v6

    iget-object v6, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v19, v7

    new-instance v7, Landroid/net/Uri$Builder;

    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    move/from16 v20, v8

    const-string v8, "content"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "getTitle"

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v13, v6, v0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getBundleFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v6, "data"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_c
    move-object/from16 v3, v16

    move-object/from16 v6, v17

    move-object/from16 v0, v18

    move-object/from16 v7, v19

    move/from16 v8, v20

    goto :goto_2

    :cond_d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    invoke-static {v6, v14, v3}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->verifyMetaData(Landroid/os/Bundle;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v7}, Landroid/content/pm/ProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v11, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    move-object/from16 v18, v0

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    move/from16 v20, v8

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Get dynamic action bars : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "com.android.settings.category"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_11
    move-object v10, v0

    :goto_6
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_31

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0a0d51

    if-nez v0, :cond_15

    const-string v0, "SettingsBaseActivity#updateDynamicActionBar-add dynamic action bar"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0d08a1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarLayout:Landroid/widget/FrameLayout;

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v3, -0x1

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    invoke-direct {v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;-><init>()V

    iget-object v3, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_12
    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f0a0d45

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mCollapsingAppbarTitleLayout:Landroid/widget/LinearLayout;

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mExtendedTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mCollapsingAppbarTitleLayout:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_13
    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mExtendedSubTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_14

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mCollapsingAppbarTitleLayout:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_14
    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f0a0d52

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitleLayout:Landroid/widget/LinearLayout;

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/typoanimation/TypoAnimationView;

    iput-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f0a0d4d

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarButtonContainer:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    if-eqz v20, :cond_15

    move-object/from16 v7, v19

    check-cast v7, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    new-instance v0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;)V

    iput-object v0, v7, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mOnConfigurationChangedListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onConfigurationChangedListener;

    :cond_15
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070edb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070ec4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string/jumbo v7, "status_bar_height"

    const-string v8, "dimen"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_16

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    :goto_7
    const/4 v7, 0x2

    goto :goto_8

    :cond_16
    const/4 v6, 0x0

    goto :goto_7

    :goto_8
    div-int/2addr v6, v7

    add-int/2addr v6, v3

    const/4 v3, 0x0

    invoke-virtual {v4, v0, v3, v0, v6}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/16 v4, 0x244

    if-le v0, v4, :cond_17

    const/4 v4, 0x2

    if-ne v3, v4, :cond_17

    const/4 v0, 0x1

    goto :goto_9

    :cond_17
    const/4 v0, 0x2

    :goto_9
    iget-object v3, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    const v4, 0x7f1505ca

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v0, v3, v4, v6}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;IF)V

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    const/4 v3, 0x1

    iput v3, v0, Landroidx/typoanimation/TypoAnimationView;->animationUnit:I

    iput-boolean v3, v0, Landroidx/typoanimation/TypoAnimationView;->refreshInfoOnDraw:Z

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    const/16 v4, 0x32

    iput v4, v0, Landroidx/typoanimation/TypoAnimationView;->interval:I

    iput-boolean v3, v0, Landroidx/typoanimation/TypoAnimationView;->refreshInfoOnDraw:Z

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    new-instance v4, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;

    invoke-direct {v4}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;-><init>()V

    iput-object v4, v0, Landroidx/typoanimation/TypoAnimationView;->unitAnimInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean v3, v0, Landroidx/typoanimation/TypoAnimationView;->refreshInfoOnDraw:Z

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    const/16 v4, 0x64

    filled-new-array {v4, v4}, [I

    move-result-object v4

    iput-object v4, v0, Landroidx/typoanimation/TypoAnimationView;->aniParamFontScale:[I

    iput-boolean v3, v0, Landroidx/typoanimation/TypoAnimationView;->refreshInfoOnDraw:Z

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    filled-new-array {v3, v4}, [I

    move-result-object v3

    iput-object v3, v0, Landroidx/typoanimation/TypoAnimationView;->aniParamYPosDelta:[I

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/typoanimation/TypoAnimationView;->refreshInfoOnDraw:Z

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitleLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0d50

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v4, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitleLayout:Landroid/widget/LinearLayout;

    const v7, 0x7f0a0d4e

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f1508f6

    const v13, 0x3f8ccccd    # 1.1f

    invoke-static {v8, v0, v9, v13}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;IF)V

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v9, v13}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;IF)V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "Dynamic action bar not present."

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto/16 :goto_e

    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/high16 v4, -0x80000000

    const/4 v8, 0x0

    :goto_a
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1c

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    const-string v13, "com.android.settings.keyhint"

    invoke-virtual {v9, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDismissedDynamicActionBarList:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "_is_dismissed"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v14, "Dismissed dynamic action bar : "

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_19
    const-string v6, "com.android.settings.order"

    const/4 v13, 0x0

    invoke-virtual {v9, v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-le v6, v4, :cond_1b

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v6

    :cond_1a
    :goto_b
    const/4 v6, 0x1

    goto :goto_c

    :cond_1b
    if-ne v6, v4, :cond_1a

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :goto_c
    add-int/2addr v8, v6

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1d

    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    invoke-virtual {v6, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_d

    :cond_1d
    const/4 v0, 0x0

    :goto_d
    if-nez v0, :cond_1e

    const-string v4, "All Dynamic action bars are dismissed."

    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    move-object v4, v0

    :goto_e
    const/4 v10, 0x0

    if-eqz v4, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v13, "Show dynamic action : "

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v13, v18

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    iget-object v13, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mRegisteredObservers:Ljava/util/List;

    invoke-direct {v0, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->unregisterDynamicDataObservers(Ljava/util/List;)V

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1f

    const/4 v13, 0x0

    goto/16 :goto_17

    :cond_1f
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/typoanimation/TypoAnimationView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/Button;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    move-object/from16 v14, v17

    iget-object v15, v14, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v6, "com.android.settings.title_uri"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v18

    const-string v8, "Couldn\'t find info"

    if-eqz v18, :cond_20

    const-string v0, "getDynamicTitle"

    invoke-static {v6, v4, v0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getCompleteUri(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v6, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda4;

    invoke-direct {v6, v14, v0, v2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/net/Uri;Landroid/widget/TextView;)V

    invoke-static {v6}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v6, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$2;

    invoke-direct {v6, v14, v0, v2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$2;-><init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/net/Uri;Landroidx/typoanimation/TypoAnimationView;)V

    goto :goto_10

    :cond_20
    const-string v6, "com.android.settings.title"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Ljava/lang/Integer;

    if-eqz v9, :cond_21

    :try_start_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    :catch_0
    move-exception v0

    invoke-static {v12, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_f

    :cond_21
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/4 v0, 0x0

    :cond_22
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    :goto_10
    if-eqz v6, :cond_23

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iget-object v2, v14, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v6, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda0;

    const/4 v9, 0x1

    invoke-direct {v6, v14, v4, v1, v9}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/os/Bundle;Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;I)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v6, "com.android.settings.action_button_uri"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_24

    const-string v0, "getDynamicActionButtonText"

    invoke-static {v6, v4, v0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getCompleteUri(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda4;

    const/4 v6, 0x0

    invoke-direct {v2, v14, v0, v3, v6}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/net/Uri;Landroid/widget/Button;I)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v2, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$2;

    invoke-direct {v2, v14, v0, v3, v6}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$2;-><init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/net/Uri;Landroid/widget/Button;I)V

    goto :goto_13

    :cond_24
    const-string v6, "com.android.settings.action_button_text"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Ljava/lang/Integer;

    if-eqz v9, :cond_25

    :try_start_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_11

    :catch_1
    move-exception v0

    invoke-static {v12, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_11

    :cond_25
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    const v0, 0x7f142333

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_12

    :cond_26
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_12
    const/4 v2, 0x0

    :goto_13
    if-eqz v2, :cond_27

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iget-object v2, v14, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    invoke-direct {v3, v14, v4, v1, v6}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/os/Bundle;Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;I)V

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v3, "com.android.settings.later_button_uri"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    const-string v0, "getDynamicLaterButtonText"

    invoke-static {v3, v4, v0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;->getCompleteUri(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda4;

    const/4 v3, 0x1

    invoke-direct {v2, v14, v0, v7, v3}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/net/Uri;Landroid/widget/Button;I)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v2, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$2;

    invoke-direct {v2, v14, v0, v7, v3}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl$2;-><init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProviderImpl;Landroid/net/Uri;Landroid/widget/Button;I)V

    goto :goto_16

    :cond_28
    const-string v3, "com.android.settings.later_button_text"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_29

    :try_start_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_14

    :catch_2
    move-exception v0

    invoke-static {v12, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_14

    :cond_29
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const v0, 0x7f142332

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_15

    :cond_2a
    invoke-virtual {v7, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_15
    const/4 v2, 0x0

    :goto_16
    if-eqz v2, :cond_2b

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    :goto_17
    if-eqz v13, :cond_2e

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_18

    :cond_2c
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_2d

    goto :goto_18

    :cond_2d
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;Landroid/content/ContentResolver;I)V

    invoke-interface {v13, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_2e
    :goto_18
    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mCollapsingAppbarTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_34

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mCollapsingAppbarTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v5, 0x1

    invoke-static {v5, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v21

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const/high16 v4, 0x3e800000    # 0.25f

    const v5, 0x3e6147ae    # 0.22f

    invoke-direct {v3, v5, v4, v10, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-wide/16 v23, 0x2ee

    const/16 v22, 0x0

    move-object/from16 v20, v0

    move-object/from16 v25, v3

    invoke-static/range {v20 .. v25}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->animViewTransY(Landroid/view/View;FFJLandroid/view/animation/Interpolator;)V

    iget-object v4, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    new-instance v9, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;

    invoke-direct {v9}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;-><init>()V

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/16 v7, 0x12c

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->animViewAlpha(Landroid/view/View;FFJLandroid/view/animation/Interpolator;)V

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarButtonContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3e800000    # 0.25f

    const v5, 0x3e6147ae    # 0.22f

    invoke-direct {v2, v5, v4, v10, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    const-wide/16 v23, 0x1f4

    move-object/from16 v20, v0

    move-object/from16 v25, v2

    invoke-static/range {v20 .. v25}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->animViewAlpha(Landroid/view/View;FFJLandroid/view/animation/Interpolator;)V

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    sget-object v2, Landroidx/typoanimation/TypoAnimationView;->PROGRESS:Landroidx/typoanimation/BaseTypoView$1;

    iget v3, v0, Landroidx/typoanimation/TypoAnimationView;->progress:F

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v3, v4, v5

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    aput v3, v4, v5

    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    iget-wide v3, v1, Landroidx/typoanimation/TypoAnimationView;->totalDuration:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2f

    if-eqz v2, :cond_2f

    invoke-virtual {v1}, Landroidx/typoanimation/TypoAnimationView;->createAniInfos()V

    invoke-virtual {v1}, Landroidx/typoanimation/TypoAnimationView;->updateAniInfos()V

    iget-wide v2, v1, Landroidx/typoanimation/TypoAnimationView;->totalDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/typoanimation/TypoAnimationView;->pendingAnimator:Landroid/animation/Animator;

    goto/16 :goto_19

    :cond_2f
    iput v10, v1, Landroidx/typoanimation/TypoAnimationView;->progress:F

    invoke-virtual {v1}, Landroidx/typoanimation/TypoAnimationView;->updateAniInfos()V

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    iput-object v0, v1, Landroidx/typoanimation/TypoAnimationView;->pendingAnimator:Landroid/animation/Animator;

    goto/16 :goto_19

    :cond_30
    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_34

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v4, 0x1

    invoke-static {v4, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v22

    new-instance v25, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct/range {v25 .. v25}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    const-wide/16 v23, 0x12c

    const/16 v21, 0x0

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v25}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->animViewTransY(Landroid/view/View;FFJLandroid/view/animation/Interpolator;)V

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitleLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3e800000    # 0.25f

    const v6, 0x3e6147ae    # 0.22f

    invoke-direct {v2, v6, v4, v10, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x0

    const-wide/16 v29, 0xc8

    move-object/from16 v26, v0

    move-object/from16 v31, v2

    invoke-static/range {v26 .. v31}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->animViewAlpha(Landroid/view/View;FFJLandroid/view/animation/Interpolator;)V

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mCollapsingAppbarTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, -0x3f000000    # -8.0f

    const/4 v4, 0x1

    invoke-static {v4, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v21

    new-instance v25, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct/range {v25 .. v25}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    const/16 v22, 0x0

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v25}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->animViewTransY(Landroid/view/View;FFJLandroid/view/animation/Interpolator;)V

    iget-object v2, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mCollapsingAppbarTitleLayout:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3e800000    # 0.25f

    const v5, 0x3e6147ae    # 0.22f

    invoke-direct {v7, v5, v4, v10, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0xc8

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->animViewAlpha(Landroid/view/View;FFJLandroid/view/animation/Interpolator;)V

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->semClearAccessibilityFocus()V

    goto :goto_19

    :cond_31
    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_34

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mCollapsingAppbarTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mExtendedTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_32

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_32
    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mExtendedSubTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_33

    iget-object v0, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_33
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarLayout:Landroid/widget/FrameLayout;

    :cond_34
    :goto_19
    return-void
.end method
