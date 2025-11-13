.class abstract Landroid/app/ActivityTransitionCoordinator;
.super Landroid/os/ResultReceiver;
.source "ActivityTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;,
        Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;,
        Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;,
        Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;
    }
.end annotation


# static fields
.field protected static final greylist-max-o KEY_ELEVATION:Ljava/lang/String; = "shared_element:elevation"

.field protected static final greylist-max-o KEY_IMAGE_MATRIX:Ljava/lang/String; = "shared_element:imageMatrix"

.field static final greylist-max-o KEY_REMOTE_RECEIVER:Ljava/lang/String; = "android:remoteReceiver"

.field protected static final greylist-max-o KEY_SCALE_TYPE:Ljava/lang/String; = "shared_element:scaleType"

.field protected static final greylist-max-o KEY_SCREEN_BOTTOM:Ljava/lang/String; = "shared_element:screenBottom"

.field protected static final greylist-max-o KEY_SCREEN_LEFT:Ljava/lang/String; = "shared_element:screenLeft"

.field protected static final greylist-max-o KEY_SCREEN_RIGHT:Ljava/lang/String; = "shared_element:screenRight"

.field protected static final greylist-max-o KEY_SCREEN_TOP:Ljava/lang/String; = "shared_element:screenTop"

.field protected static final greylist-max-o KEY_SNAPSHOT:Ljava/lang/String; = "shared_element:bitmap"

.field protected static final greylist-max-o KEY_TRANSLATION_Z:Ljava/lang/String; = "shared_element:translationZ"

.field protected static final blacklist KEY_WINDOW_POSITION_Y:Ljava/lang/String; = "shared_element:windowPositionY"

.field public static final blacklist MSG_ALLOW_RETURN_TRANSITION:I = 0x6c

.field public static final greylist-max-o MSG_CANCEL:I = 0x6a

.field public static final greylist-max-o MSG_EXIT_TRANSITION_COMPLETE:I = 0x68

.field public static final greylist-max-o MSG_HIDE_SHARED_ELEMENTS:I = 0x65

.field public static final greylist-max-o MSG_SET_REMOTE_RECEIVER:I = 0x64

.field public static final greylist-max-o MSG_SHARED_ELEMENT_DESTINATION:I = 0x6b

.field public static final greylist-max-o MSG_START_EXIT_TRANSITION:I = 0x69

.field public static final greylist-max-o MSG_TAKE_SHARED_ELEMENTS:I = 0x67

.field protected static final greylist-max-o SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ActivityTransitionCoordinator"


# instance fields
.field protected final greylist-max-o mAllSharedElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBackgroundAnimatorComplete:Z

.field private final greylist-max-o mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

.field private greylist-max-o mGhostViewListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;",
            ">;"
        }
    .end annotation
.end field

.field protected final greylist-max-o mIsReturning:Z

.field private greylist-max-o mIsStartingTransition:Z

.field protected greylist-max-o mListener:Landroid/app/SharedElementCallback;

.field private greylist-max-o mOriginalAlphas:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPendingTransition:Ljava/lang/Runnable;

.field protected greylist-max-o mResultReceiver:Landroid/os/ResultReceiver;

.field protected final greylist-max-o mSharedElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSharedElementParentMatrices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSharedElementTransitionComplete:Z

.field protected final greylist-max-o mSharedElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mStrippedTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist-max-o mTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mViewsTransitionComplete:Z

.field private greylist-max-o mWindow:Landroid/view/Window;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPendingTransition(Landroid/app/ActivityTransitionCoordinator;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsStartingTransition(Landroid/app/ActivityTransitionCoordinator;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingTransition(Landroid/app/ActivityTransitionCoordinator;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 149
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityTransitionCoordinator;->SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/view/Window;Ljava/util/ArrayList;Landroid/app/SharedElementCallback;Z)V
    .locals 2
    .param p1, "window"    # Landroid/view/Window;
    .param p3, "listener"    # Landroid/app/SharedElementCallback;
    .param p4, "isReturning"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/SharedElementCallback;",
            "Z)V"
        }
    .end annotation

    .line 236
    .local p2, "allSharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;-><init>(Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback-IA;)V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    .line 226
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mStrippedTransitioningViews:Ljava/util/ArrayList;

    .line 237
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    .line 238
    iput-object p3, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    .line 239
    iput-object p2, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    .line 240
    iput-boolean p4, p0, Landroid/app/ActivityTransitionCoordinator;->mIsReturning:Z

    .line 241
    return-void
.end method

.method private static greylist-max-o findIncludedViews(Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/util/ArraySet;)V
    .locals 6
    .param p0, "transition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/ArraySet<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 442
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p2, "included":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    instance-of v0, p0, Landroid/transition/TransitionSet;

    if-eqz v0, :cond_3

    .line 443
    move-object v0, p0

    check-cast v0, Landroid/transition/TransitionSet;

    .line 444
    .local v0, "set":Landroid/transition/TransitionSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v1, "includedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 446
    .local v2, "numViews":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 447
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 448
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p0, v4}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 449
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 452
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v0}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v3

    .line 453
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 454
    invoke-virtual {v0, v4}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v5

    invoke-static {v5, v1, p2}, Landroid/app/ActivityTransitionCoordinator;->findIncludedViews(Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/util/ArraySet;)V

    .line 453
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 456
    .end local v0    # "set":Landroid/transition/TransitionSet;
    .end local v1    # "includedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "numViews":I
    .end local v3    # "count":I
    .end local v4    # "i":I
    :cond_2
    goto :goto_3

    .line 457
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 458
    .local v0, "numViews":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_5

    .line 459
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 460
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 461
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 458
    .end local v2    # "view":Landroid/view/View;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 465
    .end local v0    # "numViews":I
    .end local v1    # "i":I
    :cond_5
    :goto_3
    return-void
.end method

.method private static greylist-max-o getOldSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "transitionArgs"    # Landroid/os/Bundle;

    .line 678
    new-instance v0, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;

    invoke-direct {v0}, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;-><init>()V

    .line 679
    .local v0, "state":Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mLeft:I

    .line 680
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mTop:I

    .line 681
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mRight:I

    .line 682
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mBottom:I

    .line 683
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMeasuredWidth:I

    .line 684
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMeasuredHeight:I

    .line 685
    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    move-result v1

    iput v1, v0, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mTranslationZ:F

    .line 686
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v1

    iput v1, v0, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mElevation:F

    .line 687
    instance-of v1, p0, Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 688
    return-object v0

    .line 690
    :cond_0
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 691
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 692
    return-object v0

    .line 694
    :cond_1
    const/4 v2, -0x1

    const-string/jumbo v3, "shared_element:scaleType"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 695
    .local v2, "scaleTypeInt":I
    if-gez v2, :cond_2

    .line 696
    return-object v0

    .line 699
    :cond_2
    move-object v3, p0

    check-cast v3, Landroid/widget/ImageView;

    .line 700
    .local v3, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    iput-object v4, v0, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 701
    iget-object v4, v0, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v4, v5, :cond_3

    .line 702
    new-instance v4, Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v4, v0, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMatrix:Landroid/graphics/Matrix;

    .line 704
    :cond_3
    return-object v0
.end method

.method private greylist-max-o getSharedElementParentMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 617
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 618
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    nop

    .line 619
    .local v0, "index":I
    if-gez v0, :cond_2

    .line 620
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 621
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 622
    .local v1, "viewParent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 624
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    .line 625
    .local v2, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 626
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 628
    .end local v1    # "viewParent":Landroid/view/ViewParent;
    .end local v2    # "parent":Landroid/view/ViewGroup;
    :cond_1
    goto :goto_1

    .line 631
    :cond_2
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    .line 632
    .local v1, "parentMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 634
    .end local v1    # "parentMatrix":Landroid/graphics/Matrix;
    :goto_1
    return-void
.end method

.method public static greylist-max-o isInTransitionGroup(Landroid/view/ViewParent;Landroid/view/ViewGroup;)Z
    .locals 2
    .param p0, "viewParent"    # Landroid/view/ViewParent;
    .param p1, "decor"    # Landroid/view/ViewGroup;

    .line 944
    if-eq p0, p1, :cond_2

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    .line 947
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 948
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 949
    const/4 v1, 0x1

    return v1

    .line 951
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/app/ActivityTransitionCoordinator;->isInTransitionGroup(Landroid/view/ViewParent;Landroid/view/ViewGroup;)Z

    move-result v1

    return v1

    .line 945
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o isNested(Landroid/view/View;Landroid/util/ArrayMap;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .line 291
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 292
    .local v0, "parent":Landroid/view/ViewParent;
    const/4 v1, 0x0

    .line 293
    .local v1, "isNested":Z
    :goto_0
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 294
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 295
    .local v2, "parentView":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 296
    const/4 v1, 0x1

    .line 297
    goto :goto_1

    .line 299
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 300
    .end local v2    # "parentView":Landroid/view/View;
    goto :goto_0

    .line 301
    :cond_1
    :goto_1
    return v1
.end method

.method protected static greylist-max-o mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 1
    .param p0, "transition1"    # Landroid/transition/Transition;
    .param p1, "transition2"    # Landroid/transition/Transition;

    .line 468
    if-nez p0, :cond_0

    .line 469
    return-object p1

    .line 470
    :cond_0
    if-nez p1, :cond_1

    .line 471
    return-object p0

    .line 473
    :cond_1
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 474
    .local v0, "transitionSet":Landroid/transition/TransitionSet;
    invoke-virtual {v0, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 475
    invoke-virtual {v0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 476
    return-object v0
.end method

.method private static greylist-max-o noLayoutSuppressionForVisibilityTransitions(Landroid/transition/Transition;)V
    .locals 4
    .param p0, "transition"    # Landroid/transition/Transition;

    .line 1082
    instance-of v0, p0, Landroid/transition/Visibility;

    if-eqz v0, :cond_0

    .line 1083
    move-object v0, p0

    check-cast v0, Landroid/transition/Visibility;

    .line 1084
    .local v0, "visibility":Landroid/transition/Visibility;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/transition/Visibility;->setSuppressLayout(Z)V

    .end local v0    # "visibility":Landroid/transition/Visibility;
    goto :goto_1

    .line 1085
    :cond_0
    instance-of v0, p0, Landroid/transition/TransitionSet;

    if-eqz v0, :cond_1

    .line 1086
    move-object v0, p0

    check-cast v0, Landroid/transition/TransitionSet;

    .line 1087
    .local v0, "set":Landroid/transition/TransitionSet;
    invoke-virtual {v0}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v1

    .line 1088
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1089
    invoke-virtual {v0, v2}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ActivityTransitionCoordinator;->noLayoutSuppressionForVisibilityTransitions(Landroid/transition/Transition;)V

    .line 1088
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1085
    .end local v0    # "set":Landroid/transition/TransitionSet;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    nop

    .line 1092
    :cond_2
    return-void
.end method

.method protected static greylist-max-o removeExcludedViews(Landroid/transition/Transition;Ljava/util/ArrayList;)V
    .locals 1
    .param p0, "transition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 424
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 425
    .local v0, "included":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    invoke-static {p0, p1, v0}, Landroid/app/ActivityTransitionCoordinator;->findIncludedViews(Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/util/ArraySet;)V

    .line 426
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 427
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 428
    return-void
.end method

.method private static greylist-max-o scaleTypeToInt(Landroid/widget/ImageView$ScaleType;)I
    .locals 3
    .param p0, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .line 1054
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/app/ActivityTransitionCoordinator;->SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1055
    aget-object v1, v1, v0

    if-ne p0, v1, :cond_0

    .line 1056
    return v0

    .line 1054
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1059
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private greylist-max-o setEpicenter(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 341
    if-nez p1, :cond_0

    .line 342
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;->setEpicenter(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 344
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 345
    .local v0, "epicenter":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 346
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    invoke-virtual {v1, v0}, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;->setEpicenter(Landroid/graphics/Rect;)V

    .line 348
    .end local v0    # "epicenter":Landroid/graphics/Rect;
    :goto_0
    return-void
.end method

.method protected static greylist-max-o setOriginalSharedElementState(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;",
            ">;)V"
        }
    .end annotation

    .line 740
    .local p0, "sharedElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p1, "originalState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 741
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 742
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;

    .line 743
    .local v2, "state":Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    instance-of v3, v1, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v3, :cond_0

    .line 744
    move-object v3, v1

    check-cast v3, Landroid/widget/ImageView;

    .line 745
    .local v3, "imageView":Landroid/widget/ImageView;
    iget-object v4, v2, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 746
    iget-object v4, v2, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v4, v5, :cond_0

    .line 747
    iget-object v4, v2, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 750
    .end local v3    # "imageView":Landroid/widget/ImageView;
    :cond_0
    iget v3, v2, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mElevation:F

    invoke-virtual {v1, v3}, Landroid/view/View;->setElevation(F)V

    .line 751
    iget v3, v2, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mTranslationZ:F

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationZ(F)V

    .line 752
    iget v3, v2, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMeasuredWidth:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 754
    .local v3, "widthSpec":I
    iget v5, v2, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMeasuredHeight:I

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 756
    .local v4, "heightSpec":I
    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 757
    iget v5, v2, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mLeft:I

    iget v6, v2, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mTop:I

    iget v7, v2, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mRight:I

    iget v8, v2, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mBottom:I

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 740
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "state":Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    .end local v3    # "widthSpec":I
    .end local v4    # "heightSpec":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 759
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private greylist-max-o setSharedElementMatrices()V
    .locals 7

    .line 598
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 599
    .local v0, "numSharedElements":I
    if-lez v0, :cond_0

    .line 600
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    .line 602
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 603
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 606
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 607
    .local v3, "parent":Landroid/view/ViewGroup;
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 608
    .local v4, "matrix":Landroid/graphics/Matrix;
    if-eqz v3, :cond_1

    .line 609
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 610
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 612
    :cond_1
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "parent":Landroid/view/ViewGroup;
    .end local v4    # "matrix":Landroid/graphics/Matrix;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 614
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private greylist-max-o setSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;[I)V
    .locals 20
    .param p1, "view"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "transitionArgs"    # Landroid/os/Bundle;
    .param p4, "tempMatrix"    # Landroid/graphics/Matrix;
    .param p5, "tempRect"    # Landroid/graphics/RectF;
    .param p6, "decorLoc"    # [I

    .line 504
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 505
    .local v5, "sharedElementBundle":Landroid/os/Bundle;
    if-nez v5, :cond_0

    .line 506
    return-void

    .line 509
    :cond_0
    instance-of v6, v0, Landroid/widget/ImageView;

    if-eqz v6, :cond_1

    .line 510
    const/4 v6, -0x1

    const-string/jumbo v7, "shared_element:scaleType"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 511
    .local v6, "scaleTypeInt":I
    if-ltz v6, :cond_1

    .line 512
    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    .line 513
    .local v7, "imageView":Landroid/widget/ImageView;
    sget-object v8, Landroid/app/ActivityTransitionCoordinator;->SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

    aget-object v8, v8, v6

    .line 514
    .local v8, "scaleType":Landroid/widget/ImageView$ScaleType;
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 515
    sget-object v9, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_1

    .line 516
    const-string/jumbo v9, "shared_element:imageMatrix"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v9

    .line 517
    .local v9, "matrixValues":[F
    invoke-virtual {v1, v9}, Landroid/graphics/Matrix;->setValues([F)V

    .line 518
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 523
    .end local v6    # "scaleTypeInt":I
    .end local v7    # "imageView":Landroid/widget/ImageView;
    .end local v8    # "scaleType":Landroid/widget/ImageView$ScaleType;
    .end local v9    # "matrixValues":[F
    :cond_1
    const-string/jumbo v6, "shared_element:translationZ"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    .line 524
    .local v6, "z":F
    invoke-virtual {v0, v6}, Landroid/view/View;->setTranslationZ(F)V

    .line 525
    const-string/jumbo v7, "shared_element:elevation"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    .line 526
    .local v7, "elevation":F
    invoke-virtual {v0, v7}, Landroid/view/View;->setElevation(F)V

    .line 528
    const-string/jumbo v8, "shared_element:screenLeft"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v8

    .line 529
    .local v8, "left":F
    const-string/jumbo v9, "shared_element:screenTop"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    .line 530
    .local v9, "top":F
    const-string/jumbo v10, "shared_element:screenRight"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    .line 531
    .local v10, "right":F
    const-string/jumbo v11, "shared_element:screenBottom"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v11

    .line 533
    .local v11, "bottom":F
    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz p6, :cond_2

    .line 534
    aget v14, p6, v13

    int-to-float v14, v14

    sub-float/2addr v8, v14

    .line 535
    aget v14, p6, v12

    int-to-float v14, v14

    sub-float/2addr v9, v14

    .line 536
    aget v13, p6, v13

    int-to-float v13, v13

    sub-float/2addr v10, v13

    .line 537
    aget v12, p6, v12

    int-to-float v12, v12

    sub-float/2addr v11, v12

    move-object/from16 v14, p0

    move-object/from16 v18, v5

    goto/16 :goto_2

    .line 540
    :cond_2
    move-object/from16 v14, p0

    invoke-direct {v14, v0, v1}, Landroid/app/ActivityTransitionCoordinator;->getSharedElementParentMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 543
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v15

    .line 544
    .local v15, "decor":Landroid/view/ViewGroup;
    if-eqz v15, :cond_3

    move-object/from16 v16, v15

    check-cast v16, Lcom/android/internal/policy/DecorView;

    goto :goto_0

    :cond_3
    const/16 v16, 0x0

    .line 545
    .local v16, "decorView":Lcom/android/internal/policy/DecorView;
    :goto_0
    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 546
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getLocationOnScreen()[I

    move-result-object v17

    aget v12, v17, v12

    .line 547
    .local v12, "newTop":I
    const-string/jumbo v13, "shared_element:windowPositionY"

    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 548
    .local v13, "oldTop":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    move-object/from16 v3, v18

    check-cast v3, Landroid/view/ViewGroup;

    .line 549
    .local v3, "parent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_4

    .line 550
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Matrix;->reset()V

    .line 551
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 552
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v18, v5

    .end local v5    # "sharedElementBundle":Landroid/os/Bundle;
    .local v18, "sharedElementBundle":Landroid/os/Bundle;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 553
    const/16 v4, 0x9

    new-array v4, v4, [F

    .line 554
    .local v4, "tempFloats":[F
    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 555
    const/4 v5, 0x5

    aget v19, v4, v5

    sub-int v5, v12, v13

    int-to-float v5, v5

    add-float v19, v19, v5

    const/4 v5, 0x5

    aput v19, v4, v5

    .line 556
    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->setValues([F)V

    goto :goto_1

    .line 549
    .end local v4    # "tempFloats":[F
    .end local v18    # "sharedElementBundle":Landroid/os/Bundle;
    .restart local v5    # "sharedElementBundle":Landroid/os/Bundle;
    :cond_4
    move-object/from16 v18, v5

    .end local v5    # "sharedElementBundle":Landroid/os/Bundle;
    .restart local v18    # "sharedElementBundle":Landroid/os/Bundle;
    goto :goto_1

    .line 545
    .end local v3    # "parent":Landroid/view/ViewGroup;
    .end local v12    # "newTop":I
    .end local v13    # "oldTop":I
    .end local v18    # "sharedElementBundle":Landroid/os/Bundle;
    .restart local v5    # "sharedElementBundle":Landroid/os/Bundle;
    :cond_5
    move-object/from16 v18, v5

    .line 561
    .end local v5    # "sharedElementBundle":Landroid/os/Bundle;
    .end local v15    # "decor":Landroid/view/ViewGroup;
    .end local v16    # "decorView":Lcom/android/internal/policy/DecorView;
    .restart local v18    # "sharedElementBundle":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 562
    invoke-virtual/range {p4 .. p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 564
    iget v3, v2, Landroid/graphics/RectF;->left:F

    .line 565
    .local v3, "leftInParent":F
    iget v4, v2, Landroid/graphics/RectF;->top:F

    .line 568
    .local v4, "topInParent":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 569
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 570
    .local v5, "width":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->height()F

    move-result v12

    .line 573
    .local v12, "height":F
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/view/View;->setLeft(I)V

    .line 574
    invoke-virtual {v0, v13}, Landroid/view/View;->setTop(I)V

    .line 575
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-virtual {v0, v13}, Landroid/view/View;->setRight(I)V

    .line 576
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-virtual {v0, v13}, Landroid/view/View;->setBottom(I)V

    .line 577
    const/4 v13, 0x0

    invoke-virtual {v2, v13, v13, v5, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 578
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 580
    iget v13, v2, Landroid/graphics/RectF;->left:F

    sub-float v8, v3, v13

    .line 581
    iget v13, v2, Landroid/graphics/RectF;->top:F

    sub-float v9, v4, v13

    .line 582
    add-float v10, v8, v5

    .line 583
    add-float v11, v9, v12

    .line 586
    .end local v3    # "leftInParent":F
    .end local v4    # "topInParent":F
    .end local v5    # "width":F
    .end local v12    # "height":F
    :goto_2
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 587
    .local v3, "x":I
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 588
    .local v4, "y":I
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v5, v3

    .line 589
    .local v5, "width":I
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v12

    sub-int/2addr v12, v4

    .line 590
    .local v12, "height":I
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 591
    .local v15, "widthSpec":I
    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 592
    .local v13, "heightSpec":I
    invoke-virtual {v0, v15, v13}, Landroid/view/View;->measure(II)V

    .line 594
    add-int v1, v3, v5

    add-int v2, v4, v12

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 595
    return-void
.end method

.method private greylist-max-o setSharedElements(Landroid/util/ArrayMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 269
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v0, 0x1

    .line 270
    .local v0, "isFirstRun":Z
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 271
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 272
    .local v1, "numSharedElements":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 273
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 274
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 275
    .local v4, "name":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v4, :cond_1

    .line 276
    :cond_0
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_2

    .line 277
    :cond_1
    invoke-static {v3, p1}, Landroid/app/ActivityTransitionCoordinator;->isNested(Landroid/view/View;Landroid/util/ArrayMap;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 278
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 272
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 283
    .end local v2    # "i":I
    :cond_3
    const/4 v0, 0x0

    .line 284
    .end local v1    # "numSharedElements":I
    goto :goto_0

    .line 285
    :cond_4
    return-void
.end method

.method private greylist-max-o showView(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "setTransitionAlpha"    # Z

    .line 822
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 823
    .local v0, "alpha":Ljava/lang/Float;
    if-eqz v0, :cond_0

    .line 824
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 826
    :cond_0
    if-eqz p2, :cond_1

    .line 827
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 829
    :cond_1
    return-void
.end method

.method private greylist-max-o startInputWhenTransitionsComplete()V
    .locals 3

    .line 1014
    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mViewsTransitionComplete:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementTransitionComplete:Z

    if-eqz v0, :cond_1

    .line 1015
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 1016
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1017
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 1018
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_0

    .line 1019
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->setPausedForTransition(Z)V

    .line 1022
    .end local v1    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->onTransitionsComplete()V

    .line 1024
    .end local v0    # "decor":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method protected greylist-max-o backgroundAnimatorComplete()V
    .locals 1

    .line 1006
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mBackgroundAnimatorComplete:Z

    .line 1007
    return-void
.end method

.method protected greylist-max-o cancelPendingTransitions()Z
    .locals 1

    .line 906
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    .line 907
    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    return v0
.end method

.method protected greylist-max-o captureSharedElementState()Landroid/os/Bundle;
    .locals 10

    .line 762
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 763
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 764
    .local v6, "tempBounds":Landroid/graphics/RectF;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 765
    .local v5, "tempMatrix":Landroid/graphics/Matrix;
    const/4 v1, 0x0

    move v7, v1

    .local v7, "i":I
    :goto_0
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_0

    .line 766
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/view/View;

    .line 767
    .local v8, "sharedElement":Landroid/view/View;
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .line 768
    .local v9, "name":Ljava/lang/String;
    move-object v1, p0

    move-object v2, v8

    move-object v3, v9

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityTransitionCoordinator;->captureSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 765
    .end local v8    # "sharedElement":Landroid/view/View;
    .end local v9    # "name":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 770
    .end local v7    # "i":I
    :cond_0
    return-object v0
.end method

.method protected greylist-max-o captureSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "transitionArgs"    # Landroid/os/Bundle;
    .param p4, "tempMatrix"    # Landroid/graphics/Matrix;
    .param p5, "tempBounds"    # Landroid/graphics/RectF;

    .line 843
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 844
    .local v0, "sharedElementBundle":Landroid/os/Bundle;
    invoke-virtual {p4}, Landroid/graphics/Matrix;->reset()V

    .line 845
    invoke-virtual {p1, p4}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 846
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p5, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 847
    invoke-virtual {p4, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 849
    iget v1, p5, Landroid/graphics/RectF;->left:F

    const-string/jumbo v2, "shared_element:screenLeft"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 850
    iget v1, p5, Landroid/graphics/RectF;->right:F

    const-string/jumbo v2, "shared_element:screenRight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 851
    iget v1, p5, Landroid/graphics/RectF;->top:F

    const-string/jumbo v2, "shared_element:screenTop"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 852
    iget v1, p5, Landroid/graphics/RectF;->bottom:F

    const-string/jumbo v2, "shared_element:screenBottom"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 853
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v1

    const-string/jumbo v2, "shared_element:translationZ"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 854
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v1

    const-string/jumbo v2, "shared_element:elevation"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 857
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 858
    .local v1, "decor":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 859
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLocationOnScreen()[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    const-string/jumbo v3, "shared_element:windowPositionY"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 864
    .end local v1    # "decor":Landroid/view/ViewGroup;
    :cond_0
    const/4 v1, 0x0

    .line 865
    .local v1, "bitmap":Landroid/os/Parcelable;
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v2, :cond_1

    .line 866
    invoke-virtual {v2, p1, p4, p5}, Landroid/app/SharedElementCallback;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object v1

    .line 869
    :cond_1
    if-eqz v1, :cond_2

    .line 870
    const-string/jumbo v2, "shared_element:bitmap"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 873
    :cond_2
    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    .line 874
    move-object v2, p1

    check-cast v2, Landroid/widget/ImageView;

    .line 875
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ActivityTransitionCoordinator;->scaleTypeToInt(Landroid/widget/ImageView$ScaleType;)I

    move-result v3

    .line 876
    .local v3, "scaleTypeInt":I
    const-string/jumbo v4, "shared_element:scaleType"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 877
    invoke-virtual {v2}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    sget-object v5, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v4, v5, :cond_3

    .line 878
    const/16 v4, 0x9

    new-array v4, v4, [F

    .line 879
    .local v4, "matrix":[F
    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 880
    const-string/jumbo v5, "shared_element:imageMatrix"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 884
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "scaleTypeInt":I
    .end local v4    # "matrix":[F
    :cond_3
    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 885
    return-void
.end method

.method protected greylist-max-o clearState()V
    .locals 4

    .line 780
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 781
    .local v0, "decor":Landroid/view/View;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 782
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    :goto_0
    if-eqz v2, :cond_1

    .line 783
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl;->setPausedForTransition(Z)V

    .line 788
    .end local v0    # "decor":Landroid/view/View;
    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_1
    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    .line 789
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 790
    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    .line 791
    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mStrippedTransitioningViews:Ljava/util/ArrayList;

    .line 792
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 793
    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 794
    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    .line 795
    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    .line 796
    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    .line 797
    return-void
.end method

.method protected greylist-max-o configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "includeTransitioningViews"    # Z

    .line 404
    if-eqz p1, :cond_0

    .line 405
    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object p1

    .line 406
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 407
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityTransitionCoordinator;->setTargets(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    move-result-object p1

    .line 409
    :cond_0
    invoke-static {p1}, Landroid/app/ActivityTransitionCoordinator;->noLayoutSuppressionForVisibilityTransitions(Landroid/transition/Transition;)V

    .line 410
    return-object p1
.end method

.method public greylist-max-o copyMappedViews()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected greylist-max-o createSnapshots(Landroid/os/Bundle;Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 18
    .param p1, "state"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 708
    .local p2, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 709
    .local v0, "numSharedElements":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 710
    .local v1, "snapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v0, :cond_0

    .line 711
    return-object v1

    .line 713
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 714
    .local v2, "context":Landroid/content/Context;
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 715
    .local v3, "decorLoc":[I
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v11

    .line 716
    .local v11, "decorView":Landroid/view/ViewGroup;
    if-eqz v11, :cond_1

    .line 717
    invoke-virtual {v11, v3}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 719
    :cond_1
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 720
    .local v8, "tempMatrix":Landroid/graphics/Matrix;
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    .line 721
    .local v13, "name":Ljava/lang/String;
    move-object/from16 v14, p1

    invoke-virtual {v14, v13}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    .line 722
    .local v15, "sharedElementBundle":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 723
    .local v4, "snapshot":Landroid/view/View;
    if-eqz v15, :cond_5

    .line 724
    const-string/jumbo v5, "shared_element:bitmap"

    invoke-virtual {v15, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    .line 725
    .local v10, "parcelable":Landroid/os/Parcelable;
    if-eqz v10, :cond_2

    move-object/from16 v9, p0

    iget-object v5, v9, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v5, :cond_3

    .line 726
    invoke-virtual {v5, v2, v10}, Landroid/app/SharedElementCallback;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    move-result-object v4

    move-object/from16 v16, v4

    goto :goto_1

    .line 725
    :cond_2
    move-object/from16 v9, p0

    .line 728
    :cond_3
    move-object/from16 v16, v4

    .end local v4    # "snapshot":Landroid/view/View;
    .local v16, "snapshot":Landroid/view/View;
    :goto_1
    if-eqz v16, :cond_4

    .line 729
    const/16 v17, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, v16

    move-object v6, v13

    move-object/from16 v7, p1

    move-object/from16 v9, v17

    move-object/from16 v17, v10

    .end local v10    # "parcelable":Landroid/os/Parcelable;
    .local v17, "parcelable":Landroid/os/Parcelable;
    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Landroid/app/ActivityTransitionCoordinator;->setSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;[I)V

    goto :goto_2

    .line 728
    .end local v17    # "parcelable":Landroid/os/Parcelable;
    .restart local v10    # "parcelable":Landroid/os/Parcelable;
    :cond_4
    move-object/from16 v17, v10

    .line 733
    .end local v10    # "parcelable":Landroid/os/Parcelable;
    :goto_2
    move-object/from16 v4, v16

    .end local v16    # "snapshot":Landroid/view/View;
    .restart local v4    # "snapshot":Landroid/view/View;
    :cond_5
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    .end local v4    # "snapshot":Landroid/view/View;
    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "sharedElementBundle":Landroid/os/Bundle;
    goto :goto_0

    .line 735
    :cond_6
    move-object/from16 v14, p1

    return-object v1
.end method

.method public greylist-max-o getAcceptedNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public greylist-max-o getDecor()Landroid/view/ViewGroup;
    .locals 1

    .line 323
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    return-object v0
.end method

.method protected greylist-max-o getFadeDuration()J
    .locals 2

    .line 800
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getTransitionBackgroundFadeDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getMappedNames()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 356
    .local v0, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 357
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method protected abstract greylist-max-o getViewsTransition()Landroid/transition/Transition;
.end method

.method protected greylist-max-o getWindow()Landroid/view/Window;
    .locals 1

    .line 319
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method protected greylist-max-o hideViews(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 804
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 805
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 806
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 807
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 808
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 805
    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 812
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public greylist-max-o isTransitionRunning()Z
    .locals 1

    .line 1095
    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mViewsTransitionComplete:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementTransitionComplete:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mBackgroundAnimatorComplete:Z

    if-nez v0, :cond_0

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

.method protected greylist-max-o isViewsTransitionComplete()Z
    .locals 1

    .line 997
    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mViewsTransitionComplete:Z

    return v0
.end method

.method synthetic blacklist lambda$scheduleGhostVisibilityChange$1$android-app-ActivityTransitionCoordinator(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 991
    invoke-virtual {p0, p1}, Landroid/app/ActivityTransitionCoordinator;->setGhostVisibility(I)V

    .line 992
    return-void
.end method

.method synthetic blacklist lambda$scheduleSetSharedElementEnd$0$android-app-ActivityTransitionCoordinator(Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "snapshots"    # Ljava/util/ArrayList;

    .line 670
    invoke-virtual {p0, p1}, Landroid/app/ActivityTransitionCoordinator;->notifySharedElementEnd(Ljava/util/ArrayList;)V

    .line 671
    return-void
.end method

.method protected greylist-max-o mapSharedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 482
    .local p1, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "localViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 483
    .local v0, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p1, :cond_1

    .line 484
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 485
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 488
    :cond_1
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 489
    .local v1, "decorView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    .line 490
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findNamedViews(Ljava/util/Map;)V

    .line 493
    .end local v1    # "decorView":Landroid/view/ViewGroup;
    :cond_2
    :goto_1
    return-object v0
.end method

.method protected greylist-max-o moveSharedElementWithParent()Z
    .locals 1

    .line 940
    const/4 v0, 0x1

    return v0
.end method

.method protected greylist-max-o moveSharedElementsFromOverlay()V
    .locals 6

    .line 956
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 957
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 958
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;

    .line 959
    .local v2, "listener":Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;
    invoke-virtual {v2}, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->removeListener()V

    .line 957
    .end local v2    # "listener":Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 961
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 963
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/Window;->getSharedElementsUseOverlay()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 966
    :cond_1
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 967
    .local v1, "decor":Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    .line 968
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    .line 969
    .local v2, "overlay":Landroid/view/ViewGroupOverlay;
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 970
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 971
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 972
    .local v5, "sharedElement":Landroid/view/View;
    invoke-static {v5}, Landroid/view/GhostView;->removeGhost(Landroid/view/View;)V

    .line 970
    .end local v5    # "sharedElement":Landroid/view/View;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 975
    .end local v2    # "overlay":Landroid/view/ViewGroupOverlay;
    .end local v3    # "count":I
    .end local v4    # "i":I
    :cond_2
    return-void

    .line 964
    .end local v1    # "decor":Landroid/view/ViewGroup;
    :cond_3
    :goto_2
    return-void
.end method

.method protected greylist-max-o moveSharedElementsToOverlay()V
    .locals 9

    .line 911
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementsUseOverlay()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 914
    :cond_0
    invoke-direct {p0}, Landroid/app/ActivityTransitionCoordinator;->setSharedElementMatrices()V

    .line 915
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 916
    .local v0, "numSharedElements":I
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 917
    .local v1, "decor":Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    .line 918
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->moveSharedElementWithParent()Z

    move-result v2

    .line 919
    .local v2, "moveWithParent":Z
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 920
    .local v3, "tempMatrix":Landroid/graphics/Matrix;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 921
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 922
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 923
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 924
    iget-object v6, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Matrix;

    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 925
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 926
    invoke-static {v5, v1, v3}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/GhostView;

    .line 927
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 928
    .local v6, "parent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_1

    invoke-static {v6, v1}, Landroid/app/ActivityTransitionCoordinator;->isInTransitionGroup(Landroid/view/ViewParent;Landroid/view/ViewGroup;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 929
    new-instance v7, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;

    invoke-direct {v7, v5, v6, v1}, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 930
    .local v7, "listener":Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 931
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 932
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "parent":Landroid/view/ViewGroup;
    .end local v7    # "listener":Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 937
    .end local v2    # "moveWithParent":Z
    .end local v3    # "tempMatrix":Landroid/graphics/Matrix;
    .end local v4    # "i":I
    :cond_2
    return-void

    .line 912
    .end local v0    # "numSharedElements":I
    .end local v1    # "decor":Landroid/view/ViewGroup;
    :cond_3
    :goto_1
    return-void
.end method

.method protected greylist-max-o notifySharedElementEnd(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 661
    .local p1, "snapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v0, :cond_0

    .line 662
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 664
    :cond_0
    return-void
.end method

.method protected greylist-max-o onTransitionsComplete()V
    .locals 0

    .line 1034
    return-void
.end method

.method protected greylist-max-o pauseInput()V
    .locals 3

    .line 1027
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 1028
    .local v0, "decor":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 1029
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    :goto_0
    if-eqz v1, :cond_1

    .line 1030
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->setPausedForTransition(Z)V

    .line 1032
    :cond_1
    return-void
.end method

.method protected greylist-max-o scheduleGhostVisibilityChange(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 988
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 989
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 990
    new-instance v1, Landroid/app/ActivityTransitionCoordinator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/app/ActivityTransitionCoordinator$$ExternalSyntheticLambda1;-><init>(Landroid/app/ActivityTransitionCoordinator;I)V

    invoke-static {v0, v1}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 994
    :cond_0
    return-void
.end method

.method protected greylist-max-o scheduleSetSharedElementEnd(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 667
    .local p1, "snapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 668
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 669
    new-instance v1, Landroid/app/ActivityTransitionCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/ActivityTransitionCoordinator$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityTransitionCoordinator;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    .line 673
    :cond_0
    return-void
.end method

.method protected greylist-max-o setEpicenter()V
    .locals 4

    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "epicenter":Landroid/view/View;
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 333
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 334
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/view/View;

    .line 337
    .end local v1    # "index":I
    :cond_0
    invoke-direct {p0, v0}, Landroid/app/ActivityTransitionCoordinator;->setEpicenter(Landroid/view/View;)V

    .line 338
    return-void
.end method

.method protected greylist-max-o setGhostVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .line 978
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 979
    .local v0, "numSharedElements":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 980
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Landroid/view/GhostView;->getGhost(Landroid/view/View;)Landroid/view/GhostView;

    move-result-object v2

    .line 981
    .local v2, "ghostView":Landroid/view/GhostView;
    if-eqz v2, :cond_0

    .line 982
    invoke-virtual {v2, p1}, Landroid/view/GhostView;->setVisibility(I)V

    .line 979
    .end local v2    # "ghostView":Landroid/view/GhostView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 985
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected greylist-max-o setResultReceiver(Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 497
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 498
    return-void
.end method

.method protected greylist-max-o setSharedElementState(Landroid/os/Bundle;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "sharedElementState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;",
            ">;"
        }
    .end annotation

    .line 638
    .local p2, "snapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 640
    .local v0, "originalImageState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;>;"
    if-eqz p1, :cond_0

    .line 641
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 642
    .local v5, "tempMatrix":Landroid/graphics/Matrix;
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 643
    .local v6, "tempRect":Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 644
    .local v8, "numSharedElements":I
    const/4 v1, 0x0

    move v9, v1

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_0

    .line 645
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/view/View;

    .line 646
    .local v10, "sharedElement":Landroid/view/View;
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    .line 647
    .local v11, "name":Ljava/lang/String;
    invoke-static {v10, v11, p1}, Landroid/app/ActivityTransitionCoordinator;->getOldSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;

    move-result-object v12

    .line 649
    .local v12, "originalState":Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v10

    move-object v3, v11

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Landroid/app/ActivityTransitionCoordinator;->setSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;[I)V

    .line 644
    .end local v10    # "sharedElement":Landroid/view/View;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "originalState":Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 654
    .end local v5    # "tempMatrix":Landroid/graphics/Matrix;
    .end local v6    # "tempRect":Landroid/graphics/RectF;
    .end local v8    # "numSharedElements":I
    .end local v9    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v1, :cond_1

    .line 655
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, p2}, Landroid/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 657
    :cond_1
    return-object v0
.end method

.method protected greylist-max-o setTargets(Landroid/transition/Transition;Z)Landroid/transition/Transition;
    .locals 4
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "add"    # Z

    .line 367
    if-eqz p1, :cond_5

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 368
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 373
    :cond_0
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 374
    .local v0, "set":Landroid/transition/TransitionSet;
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 375
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 376
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 377
    .local v3, "view":Landroid/view/View;
    if-eqz p2, :cond_1

    .line 378
    invoke-virtual {v0, v3}, Landroid/transition/TransitionSet;->addTarget(Landroid/view/View;)Landroid/transition/TransitionSet;

    goto :goto_1

    .line 380
    :cond_1
    invoke-virtual {v0, v3, v2}, Landroid/transition/TransitionSet;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 375
    .end local v3    # "view":Landroid/view/View;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 384
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mStrippedTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 385
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_3

    .line 386
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mStrippedTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 387
    .restart local v3    # "view":Landroid/view/View;
    invoke-virtual {v0, v3, v2}, Landroid/transition/TransitionSet;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 385
    .end local v3    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 392
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 394
    if-nez p2, :cond_4

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 396
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v0

    .line 399
    :cond_4
    return-object v0

    .line 369
    .end local v0    # "set":Landroid/transition/TransitionSet;
    :cond_5
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method protected greylist-max-o setTransitioningViewsVisiblity(IZ)V
    .locals 3
    .param p1, "visiblity"    # I
    .param p2, "invalidate"    # Z

    .line 1063
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1064
    .local v0, "numElements":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1065
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1066
    .local v2, "view":Landroid/view/View;
    if-eqz p2, :cond_1

    .line 1068
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1071
    :cond_1
    invoke-virtual {v2, p1}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 1064
    .end local v2    # "view":Landroid/view/View;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1074
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method protected greylist-max-o sharedElementTransitionComplete()V
    .locals 1

    .line 1010
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementTransitionComplete:Z

    .line 1011
    invoke-direct {p0}, Landroid/app/ActivityTransitionCoordinator;->startInputWhenTransitionsComplete()V

    .line 1012
    return-void
.end method

.method protected greylist-max-o showViews(Ljava/util/ArrayList;Z)V
    .locals 3
    .param p2, "setTransitionAlpha"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .line 815
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 816
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 817
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2, p2}, Landroid/app/ActivityTransitionCoordinator;->showView(Landroid/view/View;Z)V

    .line 816
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 819
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected greylist-max-o startTransition(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 889
    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    if-eqz v0, :cond_0

    .line 890
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    goto :goto_0

    .line 892
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    .line 893
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 895
    :goto_0
    return-void
.end method

.method protected greylist-max-o stripOffscreenViews()V
    .locals 4

    .line 305
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 306
    return-void

    .line 308
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 309
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 310
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 311
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 312
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 313
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mStrippedTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 316
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method protected greylist-max-o transitionStarted()V
    .locals 1

    .line 898
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    .line 899
    return-void
.end method

.method protected greylist-max-o viewsReady(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 244
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 245
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v0, :cond_0

    .line 246
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 248
    :cond_0
    invoke-direct {p0, p1}, Landroid/app/ActivityTransitionCoordinator;->setSharedElements(Landroid/util/ArrayMap;)V

    .line 249
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 250
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 251
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 252
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->captureTransitioningViews(Ljava/util/List;)V

    .line 254
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 256
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->setEpicenter()V

    .line 257
    return-void
.end method

.method protected greylist-max-o viewsTransitionComplete()V
    .locals 1

    .line 1001
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mViewsTransitionComplete:Z

    .line 1002
    invoke-direct {p0}, Landroid/app/ActivityTransitionCoordinator;->startInputWhenTransitionsComplete()V

    .line 1003
    return-void
.end method
