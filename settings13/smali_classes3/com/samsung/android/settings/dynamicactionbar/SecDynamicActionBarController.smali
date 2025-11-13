.class public Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;
.super Ljava/lang/Object;
.source "SecDynamicActionBarController.java"

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
.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mCollapsingAppbarTitleLayout:Landroid/widget/LinearLayout;

.field private mDismissedDynamicActionBarList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDynamicAppBarButtonContainer:Landroid/widget/LinearLayout;

.field private mDynamicAppBarLayout:Landroid/widget/FrameLayout;

.field private mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

.field private mDynamicAppBarTitleLayout:Landroid/widget/LinearLayout;

.field private mExtendedSubTitle:Landroid/widget/TextView;

.field private mExtendedTitle:Landroid/widget/TextView;

.field private final mHost:Landroidx/fragment/app/Fragment;

.field private final mPageId:I

.field private final mRegisteredObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mSecDynamicActionBarFeatureProvider:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProvider;

.field private mTitleLayout:Landroid/widget/LinearLayout;


# direct methods
.method public static synthetic $r8$lambda$1od71ADSmyAn53zBEvWasNYcDW8(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->lambda$animViewAlpha$2(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BNFzuY8Ozmydje6UWtPv-0eYKTY(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->lambda$updateDynamicActionBar$0(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$adDiKmdAMVMhv9cSQpDBvGdrDKo(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;Landroid/content/ContentResolver;Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->lambda$unregisterDynamicDataObservers$4(Landroid/content/ContentResolver;Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bTEzBj7_SbUZllBCzmJgyOuGI-k(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->lambda$animViewTransY$1(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zVWlI3XcGQR37U0msm70gM6gZFY(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;Landroid/content/ContentResolver;Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->lambda$registerDynamicDataObservers$3(Landroid/content/ContentResolver;Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;I)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mRegisteredObservers:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDismissedDynamicActionBarList:Ljava/util/ArrayList;

    .line 95
    iput-object p1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    .line 96
    iput p2, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mPageId:I

    .line 99
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    .line 100
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/settings/overlay/FeatureFactory;->getSecDynamicActionBarFeatureProvider(Landroid/content/Context;)Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mSecDynamicActionBarFeatureProvider:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProvider;

    return-void
.end method

.method private animViewAlpha(Landroid/view/View;FFJJLandroid/view/animation/Interpolator;)V
    .locals 1

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v0, 0x0

    aput p2, p0, v0

    const/4 p2, 0x1

    aput p3, p0, p2

    const-string p3, "alpha"

    .line 358
    invoke-static {p3, p0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    aput-object p0, p2, v0

    .line 360
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 361
    new-instance p2, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda3;

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda3;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 366
    invoke-virtual {p0, p8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 367
    invoke-virtual {p0, p6, p7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 368
    invoke-virtual {p0, p4, p5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 369
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animViewTransY(Landroid/view/View;FFJJLandroid/view/animation/Interpolator;)V
    .locals 1

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v0, 0x0

    aput p2, p0, v0

    const/4 p2, 0x1

    aput p3, p0, p2

    const-string p3, "trans"

    .line 343
    invoke-static {p3, p0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    aput-object p0, p2, v0

    .line 345
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 346
    new-instance p2, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda4;

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda4;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 351
    invoke-virtual {p0, p8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 352
    invoke-virtual {p0, p6, p7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 353
    invoke-virtual {p0, p4, p5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 354
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private getDismissKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 381
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_is_dismissed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getStatusbarHeight()I
    .locals 4

    .line 425
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 428
    iget-object p0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static init(Lcom/android/settings/core/InstrumentedFragment;)V
    .locals 3

    .line 90
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;

    .line 91
    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;-><init>(Landroidx/fragment/app/Fragment;I)V

    .line 90
    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public static init(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V
    .locals 3

    .line 85
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;

    .line 86
    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;-><init>(Landroidx/fragment/app/Fragment;I)V

    .line 85
    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private static synthetic lambda$animViewAlpha$2(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "alpha"

    .line 362
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 363
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private static synthetic lambda$animViewTransY$1(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "trans"

    .line 347
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 348
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$registerDynamicDataObservers$3(Landroid/content/ContentResolver;Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;)V
    .locals 0

    .line 397
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->registerDynamicDataObserver(Landroid/content/ContentResolver;Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;)V

    return-void
.end method

.method private synthetic lambda$unregisterDynamicDataObservers$4(Landroid/content/ContentResolver;Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;)V
    .locals 2

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregister observer: @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {p2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecDynamicActionBarController"

    .line 417
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object p0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mRegisteredObservers:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 420
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private synthetic lambda$updateDynamicActionBar$0(Landroid/content/res/Configuration;)V
    .locals 0

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->updateDynamicActionBar()V

    return-void
.end method

.method private registerDynamicDataObserver(Landroid/content/ContentResolver;Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;)V
    .locals 2

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register observer: @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {p2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecDynamicActionBarController"

    .line 402
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {p2}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 405
    iget-object p0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mRegisteredObservers:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private registerDynamicDataObservers(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 390
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 397
    new-instance v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;Landroid/content/ContentResolver;)V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private startEnterAnimation()V
    .locals 14

    .line 304
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mCollapsingAppbarTitleLayout:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 306
    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitleLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    .line 307
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v10, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v10, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v11, 0x3e6147ae    # 0.22f

    const/high16 v12, 0x3e800000    # 0.25f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v8, v11, v12, v9, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x2ee

    move-object v0, p0

    .line 306
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->animViewTransY(Landroid/view/View;FFJJLandroid/view/animation/Interpolator;)V

    .line 310
    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    new-instance v8, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;

    invoke-direct {v8}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;-><init>()V

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x12c

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->animViewAlpha(Landroid/view/View;FFJJLandroid/view/animation/Interpolator;)V

    .line 314
    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarButtonContainer:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/view/animation/PathInterpolator;

    invoke-direct {v8, v11, v12, v9, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const-wide/16 v6, 0x1f4

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->animViewAlpha(Landroid/view/View;FFJJLandroid/view/animation/Interpolator;)V

    .line 318
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    sget-object v1, Landroidx/typoanimation/BaseTypoView;->PROGRESS:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {v0}, Landroidx/typoanimation/BaseTypoView;->getProgress()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    aput v13, v2, v10

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    invoke-virtual {v1, v0}, Landroidx/typoanimation/TypoAnimationView;->startAnimator(Landroid/animation/ObjectAnimator;)V

    return-void
.end method

.method private startExitAnimation()V
    .locals 14

    .line 323
    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitleLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    .line 324
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v9, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v9, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    new-instance v8, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v8}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x12c

    move-object v0, p0

    .line 323
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->animViewTransY(Landroid/view/View;FFJJLandroid/view/animation/Interpolator;)V

    .line 327
    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitleLayout:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v10, 0x3e6147ae    # 0.22f

    const/high16 v11, 0x3e800000    # 0.25f

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v8, v10, v11, v12, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-wide/16 v6, 0xc8

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->animViewAlpha(Landroid/view/View;FFJJLandroid/view/animation/Interpolator;)V

    .line 331
    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mCollapsingAppbarTitleLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    .line 332
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, -0x3f000000    # -8.0f

    invoke-static {v9, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    new-instance v8, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v8}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    const-wide/16 v6, 0x12c

    move-object v0, p0

    .line 331
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->animViewTransY(Landroid/view/View;FFJJLandroid/view/animation/Interpolator;)V

    .line 335
    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mCollapsingAppbarTitleLayout:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/view/animation/PathInterpolator;

    invoke-direct {v8, v10, v11, v12, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v6, 0xc8

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->animViewAlpha(Landroid/view/View;FFJJLandroid/view/animation/Interpolator;)V

    .line 339
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->semClearAccessibilityFocus()V

    return-void
.end method

.method private unregisterDynamicDataObservers(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 409
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 416
    new-instance v1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;Landroid/content/ContentResolver;)V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public isDynamicActionBarDismissed(Ljava/lang/String;)Z
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDismissedDynamicActionBarList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->getDismissKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public markDynamicActionBarDismissed(Ljava/lang/String;)V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDismissedDynamicActionBarList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->getDismissKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActionButtonClicked(Landroid/os/Bundle;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.settings.component_name"

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 157
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 158
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 159
    iget-object p1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    iget-object p0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCategoriesChanged(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->updateDynamicActionBar()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "dynamic_action_bar_list"

    .line 108
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDismissedDynamicActionBarList:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mRegisteredObservers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->unregisterDynamicDataObservers(Ljava/util/List;)V

    return-void
.end method

.method public onLaterButtonClicked(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "com.android.settings.keyhint"

    .line 166
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->markDynamicActionBarDismissed(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->updateDynamicActionBar()V

    return-void
.end method

.method public onResume()V
    .locals 1

    const-string v0, "SettingsBaseActivity#onResume-updateDynamicActionBar"

    .line 148
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->updateDynamicActionBar()V

    .line 150
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 386
    iget-object p0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDismissedDynamicActionBarList:Ljava/util/ArrayList;

    const-string v0, "dynamic_action_bar_list"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    .line 122
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/core/CategoryMixin$CategoryHandler;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/CategoryMixin$CategoryHandler;

    invoke-interface {v0}, Lcom/android/settings/core/CategoryMixin$CategoryHandler;->getCategoryMixin()Lcom/android/settings/core/CategoryMixin;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/CategoryMixin;->addCategoryListener(Lcom/android/settings/core/CategoryMixin$CategoryListener;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    .line 132
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/core/CategoryMixin$CategoryHandler;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/CategoryMixin$CategoryHandler;

    invoke-interface {v0}, Lcom/android/settings/core/CategoryMixin$CategoryHandler;->getCategoryMixin()Lcom/android/settings/core/CategoryMixin;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/CategoryMixin;->removeCategoryListener(Lcom/android/settings/core/CategoryMixin$CategoryListener;)V

    :cond_0
    return-void
.end method

.method public updateDynamicActionBar()V
    .locals 14

    .line 176
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    const-string v1, "SecDynamicActionBarController"

    if-nez v0, :cond_0

    const-string p0, "Fragment isn\'t attached."

    .line 177
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mSecDynamicActionBarFeatureProvider:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProvider;

    if-nez v2, :cond_1

    const-string p0, "SecDynamicActionBarFeatureProvider isn\'t initialized."

    .line 182
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 186
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 187
    instance-of v2, v0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    if-eqz v2, :cond_2

    .line 188
    move-object v3, v0

    check-cast v3, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 191
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v3, :cond_3

    const-string p0, "App bar layout is null"

    .line 192
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 196
    :cond_3
    sget v4, Lcom/android/settings/R$id;->collapsing_appbar_title_layout:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 197
    iget-object v3, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    sget v4, Lcom/android/settings/R$id;->collapsing_appbar_extended_title:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mExtendedTitle:Landroid/widget/TextView;

    .line 198
    iget-object v3, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    sget v4, Lcom/android/settings/R$id;->collapsing_appbar_extended_subtitle:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mExtendedSubTitle:Landroid/widget/TextView;

    .line 200
    iget-object v3, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mSecDynamicActionBarFeatureProvider:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProvider;

    iget-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    .line 201
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProvider;->getDynamicActionBarMetaDataList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 203
    iget-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isMaximumPowerSavingModeEnabled(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, -0x2

    const/4 v6, 0x0

    if-nez v4, :cond_b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_b

    .line 204
    iget-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarLayout:Landroid/widget/FrameLayout;

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-nez v4, :cond_7

    const-string v4, "SettingsBaseActivity#updateDynamicActionBar-add dynamic action bar"

    .line 205
    invoke-static {v4}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 206
    iget-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget v11, Lcom/android/settings/R$layout;->sec_dynamic_action_bar_layout:I

    invoke-virtual {v4, v11, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarLayout:Landroid/widget/FrameLayout;

    .line 207
    iget-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_4

    .line 208
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 209
    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 210
    iget-object v11, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 212
    new-instance v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;-><init>(II)V

    .line 214
    iget-object v11, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v11, v12, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarLayout:Landroid/widget/FrameLayout;

    sget v11, Lcom/android/settings/R$id;->sec_collapsing_appbar_title_layout:I

    invoke-virtual {v4, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mCollapsingAppbarTitleLayout:Landroid/widget/LinearLayout;

    .line 218
    iget-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mExtendedTitle:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_5

    .line 219
    iget-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mCollapsingAppbarTitleLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mExtendedSubTitle:Landroid/widget/TextView;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_6

    .line 222
    iget-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mCollapsingAppbarTitleLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarLayout:Landroid/widget/FrameLayout;

    sget v11, Lcom/android/settings/R$id;->sec_dynamic_app_bar_title_layout:I

    invoke-virtual {v4, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitleLayout:Landroid/widget/LinearLayout;

    .line 226
    iget-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v11, Lcom/android/settings/R$dimen;->sesl_appbar_extended_title_padding:I

    .line 227
    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 228
    iget-object v11, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitleLayout:Landroid/widget/LinearLayout;

    .line 230
    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->getStatusbarHeight()I

    move-result v12

    div-int/2addr v12, v9

    .line 228
    invoke-virtual {v11, v4, v10, v4, v12}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 231
    iget-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarLayout:Landroid/widget/FrameLayout;

    sget v11, Lcom/android/settings/R$id;->sec_dynamic_app_bar_title:I

    invoke-virtual {v4, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/typoanimation/TypoAnimationView;

    iput-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    .line 232
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iget-object v11, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/text/TextPaint;->setColor(I)V

    .line 233
    iget-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    invoke-virtual {v4, v7}, Landroidx/typoanimation/TypoAnimationView;->setAnimationUnit(I)V

    .line 234
    iget-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    const/16 v11, 0x32

    invoke-virtual {v4, v11}, Landroidx/typoanimation/TypoAnimationView;->setInterval(I)V

    .line 235
    iget-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    new-instance v11, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;

    invoke-direct {v11}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut60;-><init>()V

    invoke-virtual {v4, v11}, Landroidx/typoanimation/TypoAnimationView;->setUnitAnimInterpolator(Landroid/view/animation/Interpolator;)V

    .line 236
    iget-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    new-array v11, v9, [I

    fill-array-data v11, :array_0

    invoke-virtual {v4, v11}, Landroidx/typoanimation/TypoAnimationView;->setAniParamFontScale([I)V

    .line 237
    iget-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    new-array v11, v9, [I

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v12

    const/high16 v13, 0x40400000    # 3.0f

    div-float/2addr v12, v13

    float-to-int v12, v12

    aput v12, v11, v10

    aput v10, v11, v7

    invoke-virtual {v4, v11}, Landroidx/typoanimation/TypoAnimationView;->setAniParamYPosDelta([I)V

    .line 238
    iget-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarLayout:Landroid/widget/FrameLayout;

    sget v11, Lcom/android/settings/R$id;->sec_dynamic_app_bar_button_container:I

    invoke-virtual {v4, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarButtonContainer:Landroid/widget/LinearLayout;

    .line 239
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    .line 241
    iget-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitleLayout:Landroid/widget/LinearLayout;

    sget v11, Lcom/android/settings/R$id;->sec_dynamic_app_bar_open:I

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 242
    iget-object v11, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitleLayout:Landroid/widget/LinearLayout;

    sget v12, Lcom/android/settings/R$id;->sec_dynamic_app_bar_later:I

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 244
    iget-object v12, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {v12}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x3f8ccccd    # 1.1f

    invoke-static {v12, v4, v13}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;F)V

    .line 245
    iget-object v4, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v11, v13}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;F)V

    if-eqz v2, :cond_7

    .line 248
    check-cast v0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    new-instance v2, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setOnConfigurationChangedListener(Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onConfigurationChangedListener;)V

    .line 252
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    if-eqz v0, :cond_9

    .line 253
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 254
    iget-object v2, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/16 v4, 0x244

    if-le v0, v4, :cond_8

    if-ne v2, v9, :cond_8

    goto :goto_0

    :cond_8
    move v7, v9

    .line 256
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 257
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 258
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 259
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    iget-object v2, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mHost:Landroidx/fragment/app/Fragment;

    .line 260
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$dimen;->sesl_appbar_extended_title_text_size_with_subtitle:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 259
    invoke-virtual {v0, v10, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 261
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitle:Landroidx/typoanimation/TypoAnimationView;

    invoke-static {v0, v10}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V

    .line 265
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mSecDynamicActionBarFeatureProvider:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProvider;

    invoke-interface {v0, p0, v3}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProvider;->getFirstDynamicActionBarMetaData(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_a

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Show dynamic action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mRegisteredObservers:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->unregisterDynamicDataObservers(Ljava/util/List;)V

    .line 271
    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mSecDynamicActionBarFeatureProvider:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProvider;

    iget-object v3, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarLayout:Landroid/widget/FrameLayout;

    .line 272
    invoke-interface {v1, p0, v3, v0, v6}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProvider;->bindDynamicActionBarAndGetObserver(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;Landroid/view/ViewGroup;Landroid/os/Bundle;Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 273
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->registerDynamicDataObservers(Ljava/util/List;)V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mCollapsingAppbarTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_e

    .line 276
    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->startEnterAnimation()V

    goto :goto_1

    .line 279
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_e

    .line 280
    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->startExitAnimation()V

    goto :goto_1

    .line 284
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_e

    .line 285
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mCollapsingAppbarTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 286
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_d

    .line 287
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 288
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 289
    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 291
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mExtendedTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_c

    .line 292
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 294
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mExtendedSubTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_d

    .line 295
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 298
    :cond_d
    iput-object v6, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->mDynamicAppBarLayout:Landroid/widget/FrameLayout;

    :cond_e
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x64
        0x64
    .end array-data
.end method
