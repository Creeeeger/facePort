.class public Landroid/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Fragment$AnimationInfo;,
        Landroid/app/Fragment$OnStartEnterTransitionListener;,
        Landroid/app/Fragment$InstantiationException;,
        Landroid/app/Fragment$SavedState;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final greylist-max-o ACTIVITY_CREATED:I = 0x2

.field static final greylist-max-o CREATED:I = 0x1

.field static final greylist-max-o INITIALIZING:I = 0x0

.field static final greylist-max-o INVALID_STATE:I = -0x1

.field static final greylist-max-o RESUMED:I = 0x5

.field static final greylist-max-o STARTED:I = 0x4

.field static final greylist-max-o STOPPED:I = 0x3

.field private static final greylist-max-o USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

.field private static final greylist-max-p sClassMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field greylist-max-r mAdded:Z

.field greylist-max-o mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

.field greylist-max-o mArguments:Landroid/os/Bundle;

.field greylist-max-o mBackStackNesting:I

.field greylist-max-o mCalled:Z

.field greylist-max-o mCheckedForLoaderManager:Z

.field greylist mChildFragmentManager:Landroid/app/FragmentManagerImpl;

.field greylist-max-o mChildNonConfig:Landroid/app/FragmentManagerNonConfig;

.field greylist-max-o mContainer:Landroid/view/ViewGroup;

.field greylist-max-o mContainerId:I

.field greylist-max-o mDeferStart:Z

.field greylist-max-o mDetached:Z

.field greylist mFragmentId:I

.field greylist mFragmentManager:Landroid/app/FragmentManagerImpl;

.field greylist-max-o mFromLayout:Z

.field greylist-max-o mHasMenu:Z

.field greylist-max-o mHidden:Z

.field greylist-max-o mHiddenChanged:Z

.field greylist mHost:Landroid/app/FragmentHostCallback;

.field greylist-max-o mInLayout:Z

.field greylist mIndex:I

.field greylist-max-o mIsCreated:Z

.field greylist-max-o mIsNewlyAdded:Z

.field greylist-max-o mLayoutInflater:Landroid/view/LayoutInflater;

.field greylist-max-o mLoaderManager:Landroid/app/LoaderManagerImpl;

.field greylist mLoadersStarted:Z

.field greylist-max-o mMenuVisible:Z

.field greylist-max-o mParentFragment:Landroid/app/Fragment;

.field greylist-max-o mPerformedCreateView:Z

.field greylist-max-o mRemoving:Z

.field greylist-max-o mRestored:Z

.field greylist-max-o mRetainInstance:Z

.field greylist-max-o mRetaining:Z

.field greylist mSavedFragmentState:Landroid/os/Bundle;

.field greylist-max-o mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mState:I

.field greylist-max-o mTag:Ljava/lang/String;

.field greylist-max-o mTarget:Landroid/app/Fragment;

.field greylist-max-o mTargetIndex:I

.field greylist-max-o mTargetRequestCode:I

.field greylist-max-o mUserVisibleHint:Z

.field greylist-max-p mView:Landroid/view/View;

.field greylist mWho:Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$m3xdg5M7gz9IdQNBs_XoNxlpPas(Landroid/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;->callStartTransitionListener()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetUSE_DEFAULT_TRANSITION()Landroid/transition/Transition;
    .locals 1

    sget-object v0, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 268
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/Fragment;->sClassMap:Landroid/util/ArrayMap;

    .line 279
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    sput-object v0, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 289
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Fragment;->mIndex:I

    .line 303
    iput v0, p0, Landroid/app/Fragment;->mTargetIndex:I

    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    .line 401
    iput-boolean v0, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    .line 507
    return-void
.end method

.method private greylist-max-o callStartTransitionListener()V
    .locals 3

    .line 2345
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2346
    const/4 v0, 0x0

    .local v0, "listener":Landroid/app/Fragment$OnStartEnterTransitionListener;
    goto :goto_0

    .line 2348
    .end local v0    # "listener":Landroid/app/Fragment$OnStartEnterTransitionListener;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 2349
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroid/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroid/app/Fragment$OnStartEnterTransitionListener;

    .line 2350
    .restart local v0    # "listener":Landroid/app/Fragment$OnStartEnterTransitionListener;
    iget-object v1, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroid/app/Fragment$OnStartEnterTransitionListener;

    .line 2352
    :goto_0
    if-eqz v0, :cond_1

    .line 2353
    invoke-interface {v0}, Landroid/app/Fragment$OnStartEnterTransitionListener;->onStartEnterTransition()V

    .line 2355
    :cond_1
    return-void
.end method

.method private greylist-max-o ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;
    .locals 1

    .line 2831
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2832
    new-instance v0, Landroid/app/Fragment$AnimationInfo;

    invoke-direct {v0}, Landroid/app/Fragment$AnimationInfo;-><init>()V

    iput-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 2834
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    return-object v0
.end method

.method public static whitelist instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .line 514
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 533
    const-string v0, ": make sure class name exists, is public, and has an empty constructor that is public"

    const-string v1, "Unable to instantiate fragment "

    :try_start_0
    sget-object v2, Landroid/app/Fragment;->sClassMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 534
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v3, :cond_1

    .line 536
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v3, v4

    .line 537
    const-class v4, Landroid/app/Fragment;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 541
    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 538
    :cond_0
    new-instance v2, Landroid/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to instantiate a class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " that is not a Fragment"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/ClassCastException;

    invoke-direct {v5}, Ljava/lang/ClassCastException;-><init>()V

    invoke-direct {v2, v4, v5}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "fname":Ljava/lang/String;
    .end local p2    # "args":Landroid/os/Bundle;
    throw v2

    .line 543
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "fname":Ljava/lang/String;
    .restart local p2    # "args":Landroid/os/Bundle;
    :cond_1
    :goto_0
    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 544
    .local v2, "f":Landroid/app/Fragment;
    if-eqz p2, :cond_2

    .line 545
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 546
    invoke-virtual {v2, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :cond_2
    return-object v2

    .line 564
    .end local v2    # "f":Landroid/app/Fragment;
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Landroid/app/Fragment$InstantiationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": calling Fragment constructor caused an exception"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 561
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Landroid/app/Fragment$InstantiationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": could not find Fragment constructor"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 557
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 558
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Landroid/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 553
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 554
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v3, Landroid/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 549
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v2

    .line 550
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Landroid/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method private static greylist-max-o loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "currentValue"    # Landroid/transition/Transition;
    .param p3, "defaultValue"    # Landroid/transition/Transition;
    .param p4, "id"    # I

    .line 2814
    if-eq p2, p3, :cond_0

    .line 2815
    return-object p2

    .line 2817
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 2818
    .local v0, "transitionId":I
    move-object v1, p3

    .line 2819
    .local v1, "transition":Landroid/transition/Transition;
    if-eqz v0, :cond_1

    const/high16 v2, 0x10f0000

    if-eq v0, v2, :cond_1

    .line 2820
    invoke-static {p0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v2

    .line 2821
    .local v2, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v2, v0}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v1

    .line 2822
    instance-of v3, v1, Landroid/transition/TransitionSet;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Landroid/transition/TransitionSet;

    .line 2823
    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 2824
    const/4 v1, 0x0

    .line 2827
    .end local v2    # "inflater":Landroid/transition/TransitionInflater;
    :cond_1
    return-object v1
.end method

.method private greylist-max-o shouldChangeTransition(Landroid/transition/Transition;Landroid/transition/Transition;)Z
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "defaultValue"    # Landroid/transition/Transition;

    .line 2362
    const/4 v0, 0x1

    if-ne p1, p2, :cond_1

    .line 2363
    iget-object v1, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2365
    :cond_1
    return v0
.end method


# virtual methods
.method public whitelist dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 2378
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2379
    iget v0, p0, Landroid/app/Fragment;->mFragmentId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2380
    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2381
    iget v0, p0, Landroid/app/Fragment;->mContainerId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2382
    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2383
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/Fragment;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2384
    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2385
    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2386
    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/Fragment;->mBackStackNesting:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2387
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mAdded:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2388
    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mRemoving:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2389
    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mFromLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2390
    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mInLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2391
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2392
    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mDetached:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2393
    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2394
    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2395
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mRetainInstance:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2396
    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2397
    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2398
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2399
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2400
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2402
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_1

    .line 2403
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2404
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2406
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_2

    .line 2407
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2408
    iget-object v0, p0, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2410
    :cond_2
    iget-object v0, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 2411
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2413
    :cond_3
    iget-object v0, p0, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 2414
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2415
    iget-object v0, p0, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2417
    :cond_4
    iget-object v0, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 2418
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2419
    iget-object v0, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2421
    :cond_5
    iget-object v0, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v0, :cond_6

    .line 2422
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2423
    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2424
    iget v0, p0, Landroid/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2426
    :cond_6
    invoke-virtual {p0}, Landroid/app/Fragment;->getNextAnim()I

    move-result v0

    if-eqz v0, :cond_7

    .line 2427
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getNextAnim()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2429
    :cond_7
    iget-object v0, p0, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 2430
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2432
    :cond_8
    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 2433
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2435
    :cond_9
    invoke-virtual {p0}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2436
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2437
    invoke-virtual {p0}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2438
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2439
    invoke-virtual {p0}, Landroid/app/Fragment;->getStateAfterAnimating()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2441
    :cond_a
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    const-string v1, "  "

    if-eqz v0, :cond_b

    .line 2442
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2443
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2445
    :cond_b
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_c

    .line 2446
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2447
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2449
    :cond_c
    return-void
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 600
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .param p1, "who"    # Ljava/lang/String;

    .line 2452
    iget-object v0, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2453
    return-object p0

    .line 2455
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 2456
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0

    .line 2458
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist getActivity()Landroid/app/Activity;
    .locals 1

    .line 763
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getAllowEnterTransitionOverlap()Z
    .locals 1

    .line 2255
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmAllowEnterTransitionOverlap(Landroid/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2256
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmAllowEnterTransitionOverlap(Landroid/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2255
    :goto_1
    return v0
.end method

.method public whitelist getAllowReturnTransitionOverlap()Z
    .locals 1

    .line 2282
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmAllowReturnTransitionOverlap(Landroid/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2283
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmAllowReturnTransitionOverlap(Landroid/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2282
    :goto_1
    return v0
.end method

.method greylist-max-o getAnimatingAway()Landroid/animation/Animator;
    .locals 1

    .line 2889
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2890
    const/4 v0, 0x0

    return-object v0

    .line 2892
    :cond_0
    iget-object v0, v0, Landroid/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/animation/Animator;

    return-object v0
.end method

.method public final whitelist getArguments()Landroid/os/Bundle;
    .locals 1

    .line 670
    iget-object v0, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public final whitelist getChildFragmentManager()Landroid/app/FragmentManager;
    .locals 2

    .line 837
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-nez v0, :cond_3

    .line 838
    invoke-virtual {p0}, Landroid/app/Fragment;->instantiateChildFragmentManager()V

    .line 839
    iget v0, p0, Landroid/app/Fragment;->mState:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 840
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchResume()V

    goto :goto_0

    .line 841
    :cond_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 842
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchStart()V

    goto :goto_0

    .line 843
    :cond_1
    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 844
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchActivityCreated()V

    goto :goto_0

    .line 845
    :cond_2
    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    .line 846
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchCreate()V

    .line 849
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    return-object v0
.end method

.method public whitelist getContext()Landroid/content/Context;
    .locals 1

    .line 756
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getEnterTransition()Landroid/transition/Transition;
    .locals 1

    .line 2032
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2033
    const/4 v0, 0x0

    return-object v0

    .line 2035
    :cond_0
    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmEnterTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getEnterTransitionCallback()Landroid/app/SharedElementCallback;
    .locals 1

    .line 2875
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2876
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    return-object v0

    .line 2878
    :cond_0
    iget-object v0, v0, Landroid/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    return-object v0
.end method

.method public whitelist getExitTransition()Landroid/transition/Transition;
    .locals 1

    .line 2112
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2113
    const/4 v0, 0x0

    return-object v0

    .line 2115
    :cond_0
    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmExitTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getExitTransitionCallback()Landroid/app/SharedElementCallback;
    .locals 1

    .line 2882
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2883
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    return-object v0

    .line 2885
    :cond_0
    iget-object v0, v0, Landroid/app/Fragment$AnimationInfo;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    return-object v0
.end method

.method public final whitelist getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .line 829
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    return-object v0
.end method

.method public final whitelist getHost()Ljava/lang/Object;
    .locals 1

    .line 772
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->onGetHost()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final whitelist getId()I
    .locals 1

    .line 636
    iget v0, p0, Landroid/app/Fragment;->mFragmentId:I

    return v0
.end method

.method public final whitelist getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 1307
    iget-object v0, p0, Landroid/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 1308
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0

    .line 1310
    :cond_0
    return-object v0
.end method

.method public whitelist getLoaderManager()Landroid/app/LoaderManager;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1062
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    .line 1063
    return-object v0

    .line 1065
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_1

    .line 1068
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1069
    iget-object v2, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v3, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 1070
    return-object v0

    .line 1066
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o getNextAnim()I
    .locals 1

    .line 2838
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2839
    const/4 v0, 0x0

    return v0

    .line 2841
    :cond_0
    iget v0, v0, Landroid/app/Fragment$AnimationInfo;->mNextAnim:I

    return v0
.end method

.method greylist-max-o getNextTransition()I
    .locals 1

    .line 2852
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2853
    const/4 v0, 0x0

    return v0

    .line 2855
    :cond_0
    iget v0, v0, Landroid/app/Fragment$AnimationInfo;->mNextTransition:I

    return v0
.end method

.method greylist-max-o getNextTransitionStyle()I
    .locals 1

    .line 2868
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2869
    const/4 v0, 0x0

    return v0

    .line 2871
    :cond_0
    iget v0, v0, Landroid/app/Fragment$AnimationInfo;->mNextTransitionStyle:I

    return v0
.end method

.method public final whitelist getParentFragment()Landroid/app/Fragment;
    .locals 1

    .line 857
    iget-object v0, p0, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method public whitelist getReenterTransition()Landroid/transition/Transition;
    .locals 2

    .line 2151
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2152
    const/4 v0, 0x0

    return-object v0

    .line 2154
    :cond_0
    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmReenterTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    sget-object v1, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0

    .line 2155
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmReenterTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    .line 2154
    :goto_0
    return-object v0
.end method

.method public final whitelist getResources()Landroid/content/res/Resources;
    .locals 3

    .line 779
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 782
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    .line 780
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getRetainInstance()Z
    .locals 1

    .line 953
    iget-boolean v0, p0, Landroid/app/Fragment;->mRetainInstance:Z

    return v0
.end method

.method public whitelist getReturnTransition()Landroid/transition/Transition;
    .locals 2

    .line 2072
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2073
    const/4 v0, 0x0

    return-object v0

    .line 2075
    :cond_0
    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmReturnTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    sget-object v1, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0

    .line 2076
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmReturnTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    .line 2075
    :goto_0
    return-object v0
.end method

.method public whitelist getSharedElementEnterTransition()Landroid/transition/Transition;
    .locals 1

    .line 2185
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2186
    const/4 v0, 0x0

    return-object v0

    .line 2188
    :cond_0
    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmSharedElementEnterTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSharedElementReturnTransition()Landroid/transition/Transition;
    .locals 2

    .line 2224
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2225
    const/4 v0, 0x0

    return-object v0

    .line 2227
    :cond_0
    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmSharedElementReturnTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    sget-object v1, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_1

    .line 2228
    invoke-virtual {p0}, Landroid/app/Fragment;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0

    .line 2229
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmSharedElementReturnTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    .line 2227
    :goto_0
    return-object v0
.end method

.method greylist-max-o getStateAfterAnimating()I
    .locals 1

    .line 2900
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2901
    const/4 v0, 0x0

    return v0

    .line 2903
    :cond_0
    iget v0, v0, Landroid/app/Fragment$AnimationInfo;->mStateAfterAnimating:I

    return v0
.end method

.method public final whitelist getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .line 802
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs whitelist getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .line 815
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getTag()Ljava/lang/String;
    .locals 1

    .line 643
    iget-object v0, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getTargetFragment()Landroid/app/Fragment;
    .locals 1

    .line 742
    iget-object v0, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    return-object v0
.end method

.method public final whitelist getTargetRequestCode()I
    .locals 1

    .line 749
    iget v0, p0, Landroid/app/Fragment;->mTargetRequestCode:I

    return v0
.end method

.method public final whitelist getText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resId"    # I

    .line 792
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUserVisibleHint()Z
    .locals 1

    .line 1052
    iget-boolean v0, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    return v0
.end method

.method public whitelist getView()Landroid/view/View;
    .locals 1

    .line 1576
    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 1

    .line 607
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method greylist-max-o initState()V
    .locals 2

    .line 1795
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Fragment;->mIndex:I

    .line 1796
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    .line 1797
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Fragment;->mAdded:Z

    .line 1798
    iput-boolean v1, p0, Landroid/app/Fragment;->mRemoving:Z

    .line 1799
    iput-boolean v1, p0, Landroid/app/Fragment;->mFromLayout:Z

    .line 1800
    iput-boolean v1, p0, Landroid/app/Fragment;->mInLayout:Z

    .line 1801
    iput-boolean v1, p0, Landroid/app/Fragment;->mRestored:Z

    .line 1802
    iput v1, p0, Landroid/app/Fragment;->mBackStackNesting:I

    .line 1803
    iput-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 1804
    iput-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 1805
    iput-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 1806
    iput v1, p0, Landroid/app/Fragment;->mFragmentId:I

    .line 1807
    iput v1, p0, Landroid/app/Fragment;->mContainerId:I

    .line 1808
    iput-object v0, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    .line 1809
    iput-boolean v1, p0, Landroid/app/Fragment;->mHidden:Z

    .line 1810
    iput-boolean v1, p0, Landroid/app/Fragment;->mDetached:Z

    .line 1811
    iput-boolean v1, p0, Landroid/app/Fragment;->mRetaining:Z

    .line 1812
    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 1813
    iput-boolean v1, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    .line 1814
    iput-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1815
    return-void
.end method

.method greylist-max-o instantiateChildFragmentManager()V
    .locals 3

    .line 2462
    new-instance v0, Landroid/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 2463
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    new-instance v2, Landroid/app/Fragment$1;

    invoke-direct {v2, p0}, Landroid/app/Fragment$1;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/FragmentManagerImpl;->attachController(Landroid/app/FragmentHostCallback;Landroid/app/FragmentContainer;Landroid/app/Fragment;)V

    .line 2478
    return-void
.end method

.method public final whitelist isAdded()Z
    .locals 1

    .line 864
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist isDetached()Z
    .locals 1

    .line 873
    iget-boolean v0, p0, Landroid/app/Fragment;->mDetached:Z

    return v0
.end method

.method public final whitelist isHidden()Z
    .locals 1

    .line 922
    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    return v0
.end method

.method greylist-max-o isHideReplaced()Z
    .locals 1

    .line 2918
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2919
    const/4 v0, 0x0

    return v0

    .line 2921
    :cond_0
    iget-boolean v0, v0, Landroid/app/Fragment$AnimationInfo;->mIsHideReplaced:Z

    return v0
.end method

.method final greylist-max-o isInBackStack()Z
    .locals 1

    .line 593
    iget v0, p0, Landroid/app/Fragment;->mBackStackNesting:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist isInLayout()Z
    .locals 1

    .line 893
    iget-boolean v0, p0, Landroid/app/Fragment;->mInLayout:Z

    return v0
.end method

.method greylist-max-o isPostponed()Z
    .locals 1

    .line 2911
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2912
    const/4 v0, 0x0

    return v0

    .line 2914
    :cond_0
    iget-boolean v0, v0, Landroid/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    return v0
.end method

.method public final whitelist isRemoving()Z
    .locals 1

    .line 882
    iget-boolean v0, p0, Landroid/app/Fragment;->mRemoving:Z

    return v0
.end method

.method public final whitelist isResumed()Z
    .locals 2

    .line 901
    iget v0, p0, Landroid/app/Fragment;->mState:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist isStateSaved()Z
    .locals 1

    .line 682
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    if-nez v0, :cond_0

    .line 683
    const/4 v0, 0x0

    return v0

    .line 685
    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->isStateSaved()Z

    move-result v0

    return v0
.end method

.method public final whitelist isVisible()Z
    .locals 1

    .line 910
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 911
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 910
    :goto_0
    return v0
.end method

.method greylist-max-o noteStateNotSaved()V
    .locals 1

    .line 2563
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2564
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2566
    :cond_0
    return-void
.end method

.method public whitelist onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1594
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1595
    return-void
.end method

.method public whitelist onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 1166
    return-void
.end method

.method public whitelist onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1471
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1472
    return-void
.end method

.method public whitelist onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 1457
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1458
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1459
    .local v0, "hostActivity":Landroid/app/Activity;
    :goto_0
    if-eqz v0, :cond_1

    .line 1460
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1461
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 1463
    :cond_1
    return-void
.end method

.method public whitelist onAttachFragment(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "childFragment"    # Landroid/app/Fragment;

    .line 1449
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1723
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1724
    return-void
.end method

.method public whitelist onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 1967
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1504
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1505
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1506
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1507
    .local v2, "version":I
    :goto_0
    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    .line 1508
    invoke-virtual {p0, p1, v0}, Landroid/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;Z)V

    .line 1509
    iget-object v3, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v3, :cond_1

    .line 1510
    invoke-virtual {v3, v0}, Landroid/app/FragmentManagerImpl;->isStateAtLeast(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1511
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchCreate()V

    .line 1514
    :cond_1
    return-void
.end method

.method public whitelist onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 1
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .line 1478
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1921
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1922
    return-void
.end method

.method public whitelist onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 1842
    return-void
.end method

.method public whitelist onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1552
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onDestroy()V
    .locals 4

    .line 1776
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1779
    iget-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v1, :cond_0

    .line 1780
    iput-boolean v0, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1781
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v1, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 1783
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_1

    .line 1784
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    .line 1786
    :cond_1
    return-void
.end method

.method public whitelist onDestroyOptionsMenu()V
    .locals 0

    .line 1869
    return-void
.end method

.method public whitelist onDestroyView()V
    .locals 1

    .line 1767
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1768
    return-void
.end method

.method public whitelist onDetach()V
    .locals 1

    .line 1825
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1826
    return-void
.end method

.method public whitelist onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1283
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_1

    .line 1287
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1288
    .local v0, "result":Landroid/view/LayoutInflater;
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->onUseFragmentManagerInflaterFactory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1289
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    .line 1290
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/app/FragmentManagerImpl;->getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    .line 1292
    :cond_0
    return-object v0

    .line 1284
    .end local v0    # "result":Landroid/view/LayoutInflater;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .line 932
    return-void
.end method

.method public whitelist onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1436
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1437
    return-void
.end method

.method public whitelist onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1380
    invoke-virtual {p0, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1381
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1383
    sget-object v1, Lcom/android/internal/R$styleable;->Fragment:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1385
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Landroid/app/Fragment;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {p1, v1, v2, v3, v4}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setEnterTransition(Landroid/transition/Transition;)V

    .line 1387
    invoke-virtual {p0}, Landroid/app/Fragment;->getReturnTransition()Landroid/transition/Transition;

    move-result-object v2

    sget-object v4, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/4 v5, 0x6

    invoke-static {p1, v1, v2, v4, v5}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setReturnTransition(Landroid/transition/Transition;)V

    .line 1390
    invoke-virtual {p0}, Landroid/app/Fragment;->getExitTransition()Landroid/transition/Transition;

    move-result-object v2

    const/4 v5, 0x3

    invoke-static {p1, v1, v2, v3, v5}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setExitTransition(Landroid/transition/Transition;)V

    .line 1393
    invoke-virtual {p0}, Landroid/app/Fragment;->getReenterTransition()Landroid/transition/Transition;

    move-result-object v2

    const/16 v5, 0x8

    invoke-static {p1, v1, v2, v4, v5}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setReenterTransition(Landroid/transition/Transition;)V

    .line 1396
    nop

    .line 1397
    invoke-virtual {p0}, Landroid/app/Fragment;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v2

    .line 1396
    const/4 v5, 0x5

    invoke-static {p1, v1, v2, v3, v5}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    .line 1399
    nop

    .line 1400
    invoke-virtual {p0}, Landroid/app/Fragment;->getSharedElementReturnTransition()Landroid/transition/Transition;

    move-result-object v2

    .line 1399
    const/4 v5, 0x7

    invoke-static {p1, v1, v2, v4, v5}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setSharedElementReturnTransition(Landroid/transition/Transition;)V

    .line 1404
    iget-object v2, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 1405
    const/4 v2, 0x0

    .line 1406
    .local v2, "isEnterSet":Z
    const/4 v5, 0x0

    .local v5, "isReturnSet":Z
    goto :goto_1

    .line 1408
    .end local v2    # "isEnterSet":Z
    .end local v5    # "isReturnSet":Z
    :cond_0
    invoke-static {v2}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmAllowEnterTransitionOverlap(Landroid/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v4

    .line 1409
    .restart local v2    # "isEnterSet":Z
    :goto_0
    iget-object v5, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    invoke-static {v5}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmAllowReturnTransitionOverlap(Landroid/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_2

    move v5, v0

    goto :goto_1

    :cond_2
    move v5, v4

    .line 1411
    .restart local v5    # "isReturnSet":Z
    :goto_1
    if-nez v2, :cond_3

    .line 1412
    const/16 v6, 0x9

    invoke-virtual {v1, v6, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->setAllowEnterTransitionOverlap(Z)V

    .line 1416
    :cond_3
    if-nez v5, :cond_4

    .line 1417
    const/16 v6, 0xa

    invoke-virtual {v1, v6, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setAllowReturnTransitionOverlap(Z)V

    .line 1421
    :cond_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1423
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v3

    :goto_2
    move-object v0, v3

    .line 1424
    .local v0, "hostActivity":Landroid/app/Activity;
    if-eqz v0, :cond_6

    .line 1425
    iput-boolean v4, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1426
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1428
    :cond_6
    return-void
.end method

.method public whitelist onInflate(Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1333
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1334
    return-void
.end method

.method public whitelist onLowMemory()V
    .locals 1

    .line 1748
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1749
    return-void
.end method

.method public whitelist onMultiWindowModeChanged(Z)V
    .locals 0
    .param p1, "isInMultiWindowMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1692
    return-void
.end method

.method public whitelist onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0
    .param p1, "isInMultiWindowMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 1678
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onMultiWindowModeChanged(Z)V

    .line 1679
    return-void
.end method

.method public whitelist onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 1890
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1901
    return-void
.end method

.method public whitelist onPause()V
    .locals 1

    .line 1733
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1734
    return-void
.end method

.method public whitelist onPictureInPictureModeChanged(Z)V
    .locals 0
    .param p1, "isInPictureInPictureMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1719
    return-void
.end method

.method public whitelist onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0
    .param p1, "isInPictureInPictureMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 1706
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onPictureInPictureModeChanged(Z)V

    .line 1707
    return-void
.end method

.method public whitelist onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1859
    return-void
.end method

.method public whitelist onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 1256
    return-void
.end method

.method public whitelist onResume()V
    .locals 1

    .line 1641
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1642
    return-void
.end method

.method public whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1664
    return-void
.end method

.method public whitelist onStart()V
    .locals 4

    .line 1620
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1622
    iget-boolean v1, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    if-nez v1, :cond_1

    .line 1623
    iput-boolean v0, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    .line 1624
    iget-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v1, :cond_0

    .line 1625
    iput-boolean v0, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1626
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v2, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    goto :goto_0

    .line 1627
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_1

    .line 1628
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStart()V

    .line 1631
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist onStop()V
    .locals 1

    .line 1743
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1744
    return-void
.end method

.method public whitelist onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .line 1753
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1754
    return-void
.end method

.method public whitelist onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1566
    return-void
.end method

.method public whitelist onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1610
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1611
    return-void
.end method

.method greylist-max-o performActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 2509
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2510
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2512
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 2513
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 2514
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2515
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_2

    .line 2519
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 2520
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchActivityCreated()V

    .line 2522
    :cond_1
    return-void

    .line 2516
    :cond_2
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o performConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 2601
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2602
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2603
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2605
    :cond_0
    return-void
.end method

.method greylist-max-o performContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 2666
    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    .line 2667
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2668
    return v1

    .line 2670
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 2671
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2672
    return v1

    .line 2676
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o performCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 2481
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2482
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2484
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 2485
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    .line 2486
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2487
    iput-boolean v0, p0, Landroid/app/Fragment;->mIsCreated:Z

    .line 2488
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_3

    .line 2492
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2493
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_0

    :cond_1
    move v2, v1

    .line 2494
    .local v2, "version":I
    :goto_0
    const/16 v3, 0x18

    if-ge v2, v3, :cond_2

    .line 2495
    invoke-virtual {p0, p1, v1}, Landroid/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;Z)V

    .line 2497
    :cond_2
    return-void

    .line 2489
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "version":I
    :cond_3
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 2622
    const/4 v0, 0x0

    .line 2623
    .local v0, "show":Z
    iget-boolean v1, p0, Landroid/app/Fragment;->mHidden:Z

    if-nez v1, :cond_1

    .line 2624
    iget-boolean v1, p0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_0

    .line 2625
    const/4 v0, 0x1

    .line 2626
    invoke-virtual {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2628
    :cond_0
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_1

    .line 2629
    invoke-virtual {v1, p1, p2}, Landroid/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2632
    :cond_1
    return v0
.end method

.method greylist-max-o performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 2501
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2502
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2504
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mPerformedCreateView:Z

    .line 2505
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o performDestroy()V
    .locals 3

    .line 2759
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2760
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 2762
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 2763
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 2764
    iput-boolean v0, p0, Landroid/app/Fragment;->mIsCreated:Z

    .line 2765
    invoke-virtual {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2766
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2770
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 2771
    return-void

    .line 2767
    :cond_1
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o performDestroyView()V
    .locals 3

    .line 2742
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2743
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchDestroyView()V

    .line 2745
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 2746
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 2747
    invoke-virtual {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 2748
    iget-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    if-eqz v1, :cond_2

    .line 2752
    iget-object v1, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v1, :cond_1

    .line 2753
    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl;->doReportNextStart()V

    .line 2755
    :cond_1
    iput-boolean v0, p0, Landroid/app/Fragment;->mPerformedCreateView:Z

    .line 2756
    return-void

    .line 2749
    :cond_2
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o performDetach()V
    .locals 3

    .line 2774
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 2775
    invoke-virtual {p0}, Landroid/app/Fragment;->onDetach()V

    .line 2776
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 2777
    iget-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    if-eqz v1, :cond_2

    .line 2785
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_1

    .line 2786
    iget-boolean v2, p0, Landroid/app/Fragment;->mRetaining:Z

    if-eqz v2, :cond_0

    .line 2790
    invoke-virtual {v1}, Landroid/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 2791
    iput-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    goto :goto_0

    .line 2787
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child FragmentManager of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not  destroyed and this fragment is not retaining instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2793
    :cond_1
    :goto_0
    return-void

    .line 2778
    :cond_2
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1322
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1323
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    iput-object v0, p0, Landroid/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1324
    return-object v0
.end method

.method greylist-max-o performLowMemory()V
    .locals 1

    .line 2608
    invoke-virtual {p0}, Landroid/app/Fragment;->onLowMemory()V

    .line 2609
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2610
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchLowMemory()V

    .line 2612
    :cond_0
    return-void
.end method

.method greylist-max-o performMultiWindowModeChanged(Z)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2570
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onMultiWindowModeChanged(Z)V

    .line 2571
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2572
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    .line 2574
    :cond_0
    return-void
.end method

.method greylist-max-o performMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 2577
    invoke-virtual {p0, p1, p2}, Landroid/app/Fragment;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 2578
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2579
    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 2581
    :cond_0
    return-void
.end method

.method greylist-max-o performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 2650
    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    .line 2651
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    .line 2652
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2653
    return v1

    .line 2656
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 2657
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2658
    return v1

    .line 2662
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o performOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .line 2680
    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    .line 2681
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    .line 2682
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2684
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 2685
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2688
    :cond_1
    return-void
.end method

.method greylist-max-o performPause()V
    .locals 3

    .line 2701
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2702
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchPause()V

    .line 2704
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 2705
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 2706
    invoke-virtual {p0}, Landroid/app/Fragment;->onPause()V

    .line 2707
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2711
    return-void

    .line 2708
    :cond_1
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o performPictureInPictureModeChanged(Z)V
    .locals 1
    .param p1, "isInPictureInPictureMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2585
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onPictureInPictureModeChanged(Z)V

    .line 2586
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2587
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    .line 2589
    :cond_0
    return-void
.end method

.method greylist-max-o performPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1
    .param p1, "isInPictureInPictureMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 2593
    invoke-virtual {p0, p1, p2}, Landroid/app/Fragment;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 2594
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2595
    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 2598
    :cond_0
    return-void
.end method

.method greylist-max-o performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 2636
    const/4 v0, 0x0

    .line 2637
    .local v0, "show":Z
    iget-boolean v1, p0, Landroid/app/Fragment;->mHidden:Z

    if-nez v1, :cond_1

    .line 2638
    iget-boolean v1, p0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_0

    .line 2639
    const/4 v0, 0x1

    .line 2640
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 2642
    :cond_0
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_1

    .line 2643
    invoke-virtual {v1, p1}, Landroid/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2646
    :cond_1
    return v0
.end method

.method greylist-max-o performResume()V
    .locals 3

    .line 2545
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2546
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2547
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2549
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 2550
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 2551
    invoke-virtual {p0}, Landroid/app/Fragment;->onResume()V

    .line 2552
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_2

    .line 2556
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 2557
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchResume()V

    .line 2558
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2560
    :cond_1
    return-void

    .line 2553
    :cond_2
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 2691
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2692
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2693
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2694
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 2695
    const-string v1, "android:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2698
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method greylist-max-o performStart()V
    .locals 3

    .line 2525
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2526
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2527
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2529
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 2530
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 2531
    invoke-virtual {p0}, Landroid/app/Fragment;->onStart()V

    .line 2532
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_3

    .line 2536
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 2537
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchStart()V

    .line 2539
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_2

    .line 2540
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doReportStart()V

    .line 2542
    :cond_2
    return-void

    .line 2533
    :cond_3
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o performStop()V
    .locals 3

    .line 2714
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2715
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchStop()V

    .line 2717
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 2718
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 2719
    invoke-virtual {p0}, Landroid/app/Fragment;->onStop()V

    .line 2720
    iget-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    if-eqz v1, :cond_4

    .line 2725
    iget-boolean v1, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    if-eqz v1, :cond_3

    .line 2726
    iput-boolean v0, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    .line 2727
    iget-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v1, :cond_1

    .line 2728
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 2729
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v2, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v0}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 2731
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_3

    .line 2732
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getRetainLoaders()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2733
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doRetain()V

    goto :goto_0

    .line 2735
    :cond_2
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStop()V

    .line 2739
    :cond_3
    :goto_0
    return-void

    .line 2721
    :cond_4
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o performTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .line 2615
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onTrimMemory(I)V

    .line 2616
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2617
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchTrimMemory(I)V

    .line 2619
    :cond_0
    return-void
.end method

.method public whitelist postponeEnterTransition()V
    .locals 2

    .line 2316
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 2317
    return-void
.end method

.method public whitelist registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 1935
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1936
    return-void
.end method

.method public final whitelist requestPermissions([Ljava/lang/String;I)V
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 1230
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 1233
    invoke-virtual {v0, p0, p1, p2}, Landroid/app/FragmentHostCallback;->onRequestPermissionsFromFragment(Landroid/app/Fragment;[Ljava/lang/String;I)V

    .line 1234
    return-void

    .line 1231
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o restoreChildFragmentState(Landroid/os/Bundle;Z)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "provideNonConfig"    # Z

    .line 1517
    if-eqz p1, :cond_2

    .line 1518
    const-string v0, "android:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1519
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_2

    .line 1520
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-nez v1, :cond_0

    .line 1521
    invoke-virtual {p0}, Landroid/app/Fragment;->instantiateChildFragmentManager()V

    .line 1523
    :cond_0
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget-object v3, p0, Landroid/app/Fragment;->mChildNonConfig:Landroid/app/FragmentManagerNonConfig;

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v0, v3}, Landroid/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Landroid/app/FragmentManagerNonConfig;)V

    .line 1524
    iput-object v2, p0, Landroid/app/Fragment;->mChildNonConfig:Landroid/app/FragmentManagerNonConfig;

    .line 1525
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/app/FragmentManagerImpl;->dispatchCreate()V

    .line 1528
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_2
    return-void
.end method

.method final greylist-max-o restoreViewState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 571
    iget-object v0, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 572
    iget-object v1, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 573
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 575
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 576
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 577
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1

    .line 581
    return-void

    .line 578
    :cond_1
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAllowEnterTransitionOverlap(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .line 2242
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fputmAllowEnterTransitionOverlap(Landroid/app/Fragment$AnimationInfo;Ljava/lang/Boolean;)V

    .line 2243
    return-void
.end method

.method public whitelist setAllowReturnTransitionOverlap(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .line 2269
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fputmAllowReturnTransitionOverlap(Landroid/app/Fragment$AnimationInfo;Ljava/lang/Boolean;)V

    .line 2270
    return-void
.end method

.method greylist-max-o setAnimatingAway(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 2896
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/animation/Animator;

    .line 2897
    return-void
.end method

.method public whitelist setArguments(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .line 660
    iget v0, p0, Landroid/app/Fragment;->mIndex:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 661
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 664
    return-void
.end method

.method public whitelist setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .line 1978
    if-nez p1, :cond_1

    .line 1979
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 1980
    return-void

    .line 1982
    :cond_0
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 1984
    :cond_1
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    .line 1985
    return-void
.end method

.method public whitelist setEnterTransition(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2016
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/Fragment;->shouldChangeTransition(Landroid/transition/Transition;Landroid/transition/Transition;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2017
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fputmEnterTransition(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)V

    .line 2019
    :cond_0
    return-void
.end method

.method public whitelist setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .line 1995
    if-nez p1, :cond_1

    .line 1996
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 1997
    return-void

    .line 1999
    :cond_0
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 2001
    :cond_1
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/app/Fragment$AnimationInfo;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    .line 2002
    return-void
.end method

.method public whitelist setExitTransition(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2093
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/Fragment;->shouldChangeTransition(Landroid/transition/Transition;Landroid/transition/Transition;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2094
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fputmExitTransition(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)V

    .line 2096
    :cond_0
    return-void
.end method

.method public whitelist setHasOptionsMenu(Z)V
    .locals 1
    .param p1, "hasMenu"    # Z

    .line 964
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    if-eq v0, p1, :cond_0

    .line 965
    iput-boolean p1, p0, Landroid/app/Fragment;->mHasMenu:Z

    .line 966
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 967
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->invalidateOptionsMenu()V

    .line 970
    :cond_0
    return-void
.end method

.method greylist-max-o setHideReplaced(Z)V
    .locals 1
    .param p1, "replaced"    # Z

    .line 2925
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-boolean p1, v0, Landroid/app/Fragment$AnimationInfo;->mIsHideReplaced:Z

    .line 2926
    return-void
.end method

.method final greylist-max-o setIndex(ILandroid/app/Fragment;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "parent"    # Landroid/app/Fragment;

    .line 584
    iput p1, p0, Landroid/app/Fragment;->mIndex:I

    .line 585
    if-eqz p2, :cond_0

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_0

    .line 588
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:fragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    .line 590
    :goto_0
    return-void
.end method

.method public whitelist setInitialSavedState(Landroid/app/Fragment$SavedState;)V
    .locals 2
    .param p1, "state"    # Landroid/app/Fragment$SavedState;

    .line 697
    iget v0, p0, Landroid/app/Fragment;->mIndex:I

    if-gez v0, :cond_1

    .line 700
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p1, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 702
    return-void

    .line 698
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMenuVisibility(Z)V
    .locals 1
    .param p1, "menuVisible"    # Z

    .line 982
    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    .line 983
    iput-boolean p1, p0, Landroid/app/Fragment;->mMenuVisible:Z

    .line 984
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 985
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->invalidateOptionsMenu()V

    .line 988
    :cond_0
    return-void
.end method

.method greylist-max-o setNextAnim(I)V
    .locals 1
    .param p1, "animResourceId"    # I

    .line 2845
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 2846
    return-void

    .line 2848
    :cond_0
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    iput p1, v0, Landroid/app/Fragment$AnimationInfo;->mNextAnim:I

    .line 2849
    return-void
.end method

.method greylist-max-o setNextTransition(II)V
    .locals 1
    .param p1, "nextTransition"    # I
    .param p2, "nextTransitionStyle"    # I

    .line 2859
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 2860
    return-void

    .line 2862
    :cond_0
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    .line 2863
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    iput p1, v0, Landroid/app/Fragment$AnimationInfo;->mNextTransition:I

    .line 2864
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    iput p2, v0, Landroid/app/Fragment$AnimationInfo;->mNextTransitionStyle:I

    .line 2865
    return-void
.end method

.method greylist-max-o setOnStartEnterTransitionListener(Landroid/app/Fragment$OnStartEnterTransitionListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/app/Fragment$OnStartEnterTransitionListener;

    .line 2796
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    .line 2797
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroid/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroid/app/Fragment$OnStartEnterTransitionListener;

    if-ne p1, v0, :cond_0

    .line 2798
    return-void

    .line 2800
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroid/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroid/app/Fragment$OnStartEnterTransitionListener;

    if-nez v0, :cond_1

    goto :goto_0

    .line 2801
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2804
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    iget-boolean v0, v0, Landroid/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    if-eqz v0, :cond_3

    .line 2805
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    iput-object p1, v0, Landroid/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroid/app/Fragment$OnStartEnterTransitionListener;

    .line 2807
    :cond_3
    if-eqz p1, :cond_4

    .line 2808
    invoke-interface {p1}, Landroid/app/Fragment$OnStartEnterTransitionListener;->startListening()V

    .line 2810
    :cond_4
    return-void
.end method

.method public whitelist setReenterTransition(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2132
    sget-object v0, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    invoke-direct {p0, p1, v0}, Landroid/app/Fragment;->shouldChangeTransition(Landroid/transition/Transition;Landroid/transition/Transition;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2133
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fputmReenterTransition(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)V

    .line 2135
    :cond_0
    return-void
.end method

.method public whitelist setRetainInstance(Z)V
    .locals 0
    .param p1, "retain"    # Z

    .line 949
    iput-boolean p1, p0, Landroid/app/Fragment;->mRetainInstance:Z

    .line 950
    return-void
.end method

.method public whitelist setReturnTransition(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2053
    sget-object v0, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    invoke-direct {p0, p1, v0}, Landroid/app/Fragment;->shouldChangeTransition(Landroid/transition/Transition;Landroid/transition/Transition;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2054
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fputmReturnTransition(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)V

    .line 2056
    :cond_0
    return-void
.end method

.method public whitelist setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2169
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/Fragment;->shouldChangeTransition(Landroid/transition/Transition;Landroid/transition/Transition;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2170
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fputmSharedElementEnterTransition(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)V

    .line 2172
    :cond_0
    return-void
.end method

.method public whitelist setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2205
    sget-object v0, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    invoke-direct {p0, p1, v0}, Landroid/app/Fragment;->shouldChangeTransition(Landroid/transition/Transition;Landroid/transition/Transition;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2206
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fputmSharedElementReturnTransition(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)V

    .line 2208
    :cond_0
    return-void
.end method

.method greylist-max-o setStateAfterAnimating(I)V
    .locals 1
    .param p1, "state"    # I

    .line 2907
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    iput p1, v0, Landroid/app/Fragment$AnimationInfo;->mStateAfterAnimating:I

    .line 2908
    return-void
.end method

.method public whitelist setTargetFragment(Landroid/app/Fragment;I)V
    .locals 6
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "requestCode"    # I

    .line 720
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 721
    .local v0, "mine":Landroid/app/FragmentManager;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 722
    .local v1, "theirs":Landroid/app/FragmentManager;
    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 723
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must share the same FragmentManager to be set as a target fragment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 728
    :cond_2
    :goto_1
    move-object v2, p1

    .local v2, "check":Landroid/app/Fragment;
    :goto_2
    if-eqz v2, :cond_4

    .line 729
    if-eq v2, p0, :cond_3

    .line 728
    invoke-virtual {v2}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    goto :goto_2

    .line 730
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as the target of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " would create a target cycle"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 734
    .end local v2    # "check":Landroid/app/Fragment;
    :cond_4
    iput-object p1, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 735
    iput p2, p0, Landroid/app/Fragment;->mTargetRequestCode:I

    .line 736
    return-void
.end method

.method public whitelist setUserVisibleHint(Z)V
    .locals 7
    .param p1, "isVisibleToUser"    # Z

    .line 1021
    const/4 v0, 0x0

    .line 1022
    .local v0, "useBrokenAddedCheck":Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1023
    .local v1, "context":Landroid/content/Context;
    iget-object v2, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    iget-object v2, v2, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v2, :cond_0

    .line 1024
    iget-object v2, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1026
    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 1027
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x17

    if-gt v4, v5, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    move v0, v4

    .line 1031
    :cond_2
    const/4 v4, 0x4

    if-eqz v0, :cond_4

    .line 1032
    iget-boolean v5, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-nez v5, :cond_3

    if-eqz p1, :cond_3

    iget v5, p0, Landroid/app/Fragment;->mState:I

    if-ge v5, v4, :cond_3

    iget-object v5, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_1

    :cond_3
    move v5, v3

    .local v5, "performDeferredStart":Z
    :goto_1
    goto :goto_2

    .line 1035
    .end local v5    # "performDeferredStart":Z
    :cond_4
    iget-boolean v5, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-nez v5, :cond_5

    if-eqz p1, :cond_5

    iget v5, p0, Landroid/app/Fragment;->mState:I

    if-ge v5, v4, :cond_5

    iget-object v5, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v5, :cond_5

    .line 1036
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v2

    goto :goto_2

    :cond_5
    move v5, v3

    .line 1039
    .restart local v5    # "performDeferredStart":Z
    :goto_2
    if-eqz v5, :cond_6

    .line 1040
    iget-object v6, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v6, p0}, Landroid/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/app/Fragment;)V

    .line 1043
    :cond_6
    iput-boolean p1, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    .line 1044
    iget v6, p0, Landroid/app/Fragment;->mState:I

    if-ge v6, v4, :cond_7

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    move v2, v3

    :goto_3
    iput-boolean v2, p0, Landroid/app/Fragment;->mDeferStart:Z

    .line 1045
    return-void
.end method

.method public whitelist shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 1269
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 1270
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1271
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    .line 1270
    return v0

    .line 1273
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1080
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1081
    return-void
.end method

.method public whitelist startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 1093
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_1

    .line 1096
    const/4 v1, -0x1

    if-eqz p2, :cond_0

    .line 1097
    invoke-virtual {v0, p0, p1, v1, p2}, Landroid/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1101
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v1, v2}, Landroid/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1103
    :goto_0
    return-void

    .line 1094
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 1110
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1111
    return-void
.end method

.method public whitelist startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1118
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 1121
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1122
    return-void

    .line 1119
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 1131
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 1134
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentHostCallback;->onStartActivityAsUserFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1135
    return-void

    .line 1132
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 1144
    move-object v9, p0

    iget-object v0, v9, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 1147
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/app/FragmentHostCallback;->onStartIntentSenderFromFragment(Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 1149
    return-void

    .line 1145
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startPostponedEnterTransition()V
    .locals 2

    .line 2330
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2332
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iget-object v1, v1, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2333
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/Fragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/app/Fragment$$ExternalSyntheticLambda0;-><init>(Landroid/app/Fragment;)V

    .line 2334
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 2336
    :cond_1
    invoke-direct {p0}, Landroid/app/Fragment;->callStartTransitionListener()V

    goto :goto_1

    .line 2331
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 2338
    :goto_1
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 613
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 614
    iget v1, p0, Landroid/app/Fragment;->mIndex:I

    if-ltz v1, :cond_0

    .line 615
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    iget v1, p0, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 618
    :cond_0
    iget v1, p0, Landroid/app/Fragment;->mFragmentId:I

    if-eqz v1, :cond_1

    .line 619
    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    iget v1, p0, Landroid/app/Fragment;->mFragmentId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    :cond_1
    iget-object v1, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 623
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    iget-object v1, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist unregisterForContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1946
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1947
    return-void
.end method
