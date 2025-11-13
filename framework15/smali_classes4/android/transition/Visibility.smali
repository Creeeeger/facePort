.class public abstract Landroid/transition/Visibility;
.super Landroid/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Visibility$VisibilityInfo;,
        Landroid/transition/Visibility$DisappearListener;,
        Landroid/transition/Visibility$VisibilityMode;
    }
.end annotation


# static fields
.field public static final whitelist MODE_IN:I = 0x1

.field public static final whitelist MODE_OUT:I = 0x2

.field private static final greylist-max-o PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final greylist-max-o PROPNAME_SCREEN_LOCATION:Ljava/lang/String; = "android:visibility:screenLocation"

.field static final greylist-max-o PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final greylist-max-o sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private greylist-max-o mMode:I

.field private greylist-max-o mSuppressLayout:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "android:visibility:visibility"

    const-string v1, "android:visibility:parent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Landroid/transition/Visibility;->mMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/Visibility;->mSuppressLayout:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    iput v0, p0, Landroid/transition/Visibility;->mMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/Visibility;->mSuppressLayout:Z

    sget-object v0, Lcom/android/internal/R$styleable;->VisibilityTransition:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/transition/Visibility;->setMode(I)V

    :cond_0
    return-void
.end method

.method private greylist-max-o captureValues(Landroid/transition/TransitionValues;)V
    .locals 4

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:visibility:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:screenLocation"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static greylist-max-o getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;
    .locals 7

    new-instance v0, Landroid/transition/Visibility$VisibilityInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/transition/Visibility$VisibilityInfo;-><init>(Landroid/transition/Visibility$VisibilityInfo-IA;)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    const-string v3, "android:visibility:parent"

    const/4 v4, -0x1

    const-string v5, "android:visibility:visibility"

    if-eqz p0, :cond_0

    iget-object v6, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget-object v6, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    iput v4, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    :goto_0
    if-eqz p1, :cond_1

    iget-object v6, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    iput v4, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    :goto_1
    const/4 v1, 0x1

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v4, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-ne v3, v4, :cond_2

    iget-object v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    iget-object v4, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_2

    return-object v0

    :cond_2
    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v4, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-eq v3, v4, :cond_4

    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-nez v3, :cond_3

    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    :cond_3
    iget v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v2, :cond_8

    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    :cond_4
    iget-object v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    iget-object v4, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-eq v3, v4, :cond_8

    iget-object v3, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-nez v3, :cond_5

    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    :cond_5
    iget-object v2, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_8

    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    :cond_6
    if-nez p0, :cond_7

    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v3, :cond_7

    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    :cond_7
    if-nez p1, :cond_8

    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-nez v3, :cond_8

    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    :cond_8
    :goto_2
    return-object v0
.end method


# virtual methods
.method public whitelist captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public whitelist captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public whitelist createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 8

    invoke-static {p2, p3}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v0

    iget-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    :cond_0
    iget-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    if-eqz v1, :cond_1

    iget v5, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v7, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v1

    return-object v1

    :cond_1
    iget v5, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v7, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v1

    return-object v1

    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getMode()I
    .locals 1

    iget v0, p0, Landroid/transition/Visibility;->mMode:I

    return v0
.end method

.method public whitelist getTransitionProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    invoke-static {p1, p2}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v1

    iget-boolean v2, v1, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz v2, :cond_3

    iget v2, v1, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-eqz v2, :cond_2

    iget v2, v1, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public whitelist isVisible(Landroid/transition/TransitionValues;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:parent"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public whitelist onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 6

    iget v0, p0, Landroid/transition/Visibility;->mMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    iget-object v1, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v4

    invoke-virtual {p0, v1, v3}, Landroid/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v3

    nop

    invoke-static {v4, v3}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v0

    iget-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz v5, :cond_1

    return-object v2

    :cond_1
    iget-object v0, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, p1, v0, p2, p4}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v2
.end method

.method public whitelist onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    iget v5, v0, Landroid/transition/Visibility;->mMode:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    const/4 v7, 0x0

    if-eq v5, v6, :cond_0

    return-object v7

    :cond_0
    if-nez v2, :cond_1

    return-object v7

    :cond_1
    iget-object v5, v2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v8, v3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object v8, v7

    :goto_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x1020670

    invoke-virtual {v5, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    const/4 v14, 0x1

    if-eqz v13, :cond_3

    move-object v9, v13

    const/4 v11, 0x1

    goto/16 :goto_3

    :cond_3
    const/4 v15, 0x0

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    if-nez v16, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x4

    if-ne v4, v7, :cond_5

    move-object v10, v8

    goto :goto_2

    :cond_5
    if-ne v5, v8, :cond_6

    move-object v10, v8

    goto :goto_2

    :cond_6
    const/4 v15, 0x1

    goto :goto_2

    :cond_7
    :goto_1
    if-eqz v8, :cond_8

    move-object v9, v8

    goto :goto_2

    :cond_8
    const/4 v15, 0x1

    :goto_2
    if-eqz v15, :cond_c

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_9

    move-object v9, v5

    goto :goto_3

    :cond_9
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/view/View;

    if-eqz v7, :cond_c

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v0, v7, v14}, Landroid/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v12

    invoke-virtual {v0, v7, v14}, Landroid/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v6

    nop

    invoke-static {v12, v6}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v14

    move-object/from16 v18, v6

    iget-boolean v6, v14, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-nez v6, :cond_a

    invoke-static {v1, v5, v7}, Landroid/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v9

    goto :goto_3

    :cond_a
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    if-nez v19, :cond_b

    move-object/from16 v19, v7

    const/4 v7, -0x1

    if-eq v6, v7, :cond_c

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_c

    iget-boolean v7, v0, Landroid/transition/Visibility;->mCanRemoveViews:Z

    if-eqz v7, :cond_c

    move-object v9, v5

    goto :goto_3

    :cond_b
    move-object/from16 v19, v7

    :cond_c
    :goto_3
    const/4 v6, 0x0

    if-eqz v9, :cond_10

    if-nez v11, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v7

    iget-object v12, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v14, "android:visibility:screenLocation"

    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    aget v14, v12, v6

    const/4 v15, 0x1

    aget v16, v12, v15

    const/4 v15, 0x2

    new-array v15, v15, [I

    invoke-virtual {v1, v15}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    aget v6, v15, v6

    sub-int v6, v14, v6

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v17

    sub-int v6, v6, v17

    invoke-virtual {v9, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    const/4 v6, 0x1

    aget v6, v15, v6

    sub-int v6, v16, v6

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v6, v6, v17

    invoke-virtual {v9, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {v7, v9}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    goto :goto_4

    :cond_d
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v6

    if-nez v11, :cond_f

    if-nez v6, :cond_e

    invoke-virtual {v7, v9}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    goto :goto_5

    :cond_e
    const v12, 0x1020670

    invoke-virtual {v5, v12, v9}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    move-object v12, v9

    new-instance v14, Landroid/transition/Visibility$1;

    invoke-direct {v14, v0, v7, v12, v5}, Landroid/transition/Visibility$1;-><init>(Landroid/transition/Visibility;Landroid/view/ViewGroupOverlay;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v14}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    :cond_f
    :goto_5
    return-object v6

    :cond_10
    if-eqz v10, :cond_12

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-virtual {v10, v6}, Landroid/view/View;->setTransitionVisibility(I)V

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v6

    if-eqz v6, :cond_11

    new-instance v12, Landroid/transition/Visibility$DisappearListener;

    iget-boolean v14, v0, Landroid/transition/Visibility;->mSuppressLayout:Z

    invoke-direct {v12, v10, v4, v14}, Landroid/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;IZ)V

    invoke-virtual {v6, v12}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v6, v12}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    invoke-virtual {v0, v12}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto :goto_6

    :cond_11
    invoke-virtual {v10, v7}, Landroid/view/View;->setTransitionVisibility(I)V

    :goto_6
    return-object v6

    :cond_12
    const/4 v6, 0x0

    return-object v6
.end method

.method public whitelist onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist setMode(I)V
    .locals 2

    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_0

    iput p1, p0, Landroid/transition/Visibility;->mMode:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setSuppressLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/transition/Visibility;->mSuppressLayout:Z

    return-void
.end method
