.class public Landroid/graphics/drawable/AnimatedVectorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AnimatedVectorDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;,
        Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;,
        Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;,
        Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;
    }
.end annotation


# static fields
.field private static final greylist-max-o ANIMATED_VECTOR:Ljava/lang/String; = "animated-vector"

.field private static final greylist-max-o DBG_ANIMATION_VECTOR_DRAWABLE:Z = false

.field private static final greylist-max-o LOGTAG:Ljava/lang/String; = "AnimatedVectorDrawable"

.field private static final greylist-max-o TARGET:Ljava/lang/String; = "target"


# instance fields
.field private greylist-max-r mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

.field private greylist-max-o mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Animatable2$AnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private greylist mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

.field private greylist-max-o mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

.field private final greylist-max-o mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private greylist-max-o mMutated:Z

.field private greylist-max-o mRes:Landroid/content/res/Resources;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAnimatedVectorState(Landroid/graphics/drawable/AnimatedVectorDrawable;)Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;
    .locals 0

    iget-object p0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAnimationCallbacks(Landroid/graphics/drawable/AnimatedVectorDrawable;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnAddAnimator(JJJJJII)V
    .locals 0

    invoke-static/range {p0 .. p11}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nAddAnimator(JJJJJII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreateAnimatorSet()J
    .locals 2

    invoke-static {}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nCreateAnimatorSet()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreateGroupPropertyHolder(JIFF)J
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nCreateGroupPropertyHolder(JIFF)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreatePathColorPropertyHolder(JIII)J
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nCreatePathColorPropertyHolder(JIII)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreatePathDataPropertyHolder(JJJ)J
    .locals 0

    invoke-static/range {p0 .. p5}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nCreatePathDataPropertyHolder(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreatePathPropertyHolder(JIFF)J
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nCreatePathPropertyHolder(JIFF)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreateRootAlphaPropertyHolder(JFF)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nCreateRootAlphaPropertyHolder(JFF)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnEnd(J)V
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nEnd(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnReset(J)V
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nReset(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnReverse(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nReverse(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetPropertyHolderData(J[FI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nSetPropertyHolderData(J[FI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetPropertyHolderData(J[II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nSetPropertyHolderData(J[II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetVectorDrawableTarget(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nSetVectorDrawableTarget(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnStart(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->nStart(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smshouldIgnoreInvalidAnimation()Z
    .locals 1

    invoke-static {}, Landroid/graphics/drawable/AnimatedVectorDrawable;->shouldIgnoreInvalidAnimation()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smupdateAnimatorProperty(Landroid/animation/Animator;Ljava/lang/String;Landroid/graphics/drawable/VectorDrawable;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->updateAnimatorProperty(Landroid/animation/Animator;Ljava/lang/String;Landroid/graphics/drawable/VectorDrawable;Z)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 331
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;)V

    .line 332
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 334
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

    .line 327
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 328
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 981
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable$1;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$1;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 335
    new-instance v1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    invoke-direct {v1, p1, v0, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    .line 336
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    .line 337
    iput-object p2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    .line 338
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedVectorDrawable-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private static greylist-max-o containsSameValueType(Landroid/animation/PropertyValuesHolder;Landroid/util/Property;)Z
    .locals 5
    .param p0, "holder"    # Landroid/animation/PropertyValuesHolder;
    .param p1, "property"    # Landroid/util/Property;

    .line 625
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder;->getValueType()Ljava/lang/Class;

    move-result-object v0

    .line 626
    .local v0, "type1":Ljava/lang/Class;
    invoke-virtual {p1}, Landroid/util/Property;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 627
    .local v1, "type2":Ljava/lang/Class;
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_6

    const-class v2, Ljava/lang/Float;

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 629
    :cond_0
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_3

    const-class v2, Ljava/lang/Integer;

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 632
    :cond_1
    if-ne v0, v1, :cond_2

    move v3, v4

    :cond_2
    return v3

    .line 630
    :cond_3
    :goto_0
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_4

    const-class v2, Ljava/lang/Integer;

    if-ne v1, v2, :cond_5

    :cond_4
    move v3, v4

    :cond_5
    return v3

    .line 628
    :cond_6
    :goto_1
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_7

    const-class v2, Ljava/lang/Float;

    if-ne v1, v2, :cond_8

    :cond_7
    move v3, v4

    :cond_8
    return v3
.end method

.method private greylist-max-o ensureAnimatorSet()V
    .locals 3

    .line 934
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 937
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

    .line 938
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->prepareLocalAnimators(Landroid/animation/AnimatorSet;Landroid/content/res/Resources;)V

    .line 939
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

    invoke-interface {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->init(Landroid/animation/AnimatorSet;)V

    .line 940
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    .line 942
    :cond_0
    return-void
.end method

.method private greylist-max-o fallbackOntoUI()V
    .locals 3

    .line 653
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    if-eqz v1, :cond_2

    .line 654
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    .line 655
    .local v0, "oldAnim":Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    new-instance v1, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorUI;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    .line 656
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSetFromXml:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 657
    invoke-interface {v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->init(Landroid/animation/AnimatorSet;)V

    .line 660
    :cond_0
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->-$$Nest$fgetmListener(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 661
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->-$$Nest$fgetmListener(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 663
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->-$$Nest$mtransferPendingActions(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;)V

    .line 665
    .end local v0    # "oldAnim":Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    :cond_2
    return-void
.end method

.method private static native greylist-max-o nAddAnimator(JJJJJII)V
.end method

.method private static native greylist-max-o nCreateAnimatorSet()J
.end method

.method private static native greylist-max-o nCreateGroupPropertyHolder(JIFF)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nCreatePathColorPropertyHolder(JIII)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nCreatePathDataPropertyHolder(JJJ)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nCreatePathPropertyHolder(JIFF)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nCreateRootAlphaPropertyHolder(JFF)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nEnd(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nReset(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nReverse(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V
.end method

.method private static native greylist-max-o nSetPropertyHolderData(J[FI)V
.end method

.method private static native greylist-max-o nSetPropertyHolderData(J[II)V
.end method

.method private static native greylist-max-o nSetVectorDrawableTarget(JJ)V
.end method

.method private static native greylist-max-o nStart(JLandroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V
.end method

.method private greylist-max-o removeAnimatorSetListener()V
    .locals 2

    .line 1039
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 1040
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v1, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1041
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 1043
    :cond_0
    return-void
.end method

.method private static greylist-max-o shouldIgnoreInvalidAnimation()Z
    .locals 2

    .line 369
    invoke-static {}, Landroid/graphics/Compatibility;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static greylist-max-o updateAnimatorProperty(Landroid/animation/Animator;Ljava/lang/String;Landroid/graphics/drawable/VectorDrawable;Z)V
    .locals 9
    .param p0, "animator"    # Landroid/animation/Animator;
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "vectorDrawable"    # Landroid/graphics/drawable/VectorDrawable;
    .param p3, "ignoreInvalidAnim"    # Z

    .line 589
    instance-of v0, p0, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_6

    .line 594
    move-object v0, p0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 595
    .local v0, "holders":[Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 596
    aget-object v2, v0, v1

    .line 597
    .local v2, "pvh":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    .line 598
    .local v3, "propertyName":Ljava/lang/String;
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/VectorDrawable;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 599
    .local v4, "targetNameObj":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 600
    .local v5, "property":Landroid/util/Property;
    instance-of v6, v4, Landroid/graphics/drawable/VectorDrawable$VObject;

    if-eqz v6, :cond_0

    .line 601
    move-object v6, v4

    check-cast v6, Landroid/graphics/drawable/VectorDrawable$VObject;

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/VectorDrawable$VObject;->getProperty(Ljava/lang/String;)Landroid/util/Property;

    move-result-object v5

    goto :goto_1

    .line 602
    :cond_0
    instance-of v6, v4, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz v6, :cond_1

    .line 603
    move-object v6, v4

    check-cast v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 604
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getProperty(Ljava/lang/String;)Landroid/util/Property;

    move-result-object v5

    .line 606
    :cond_1
    :goto_1
    if-eqz v5, :cond_4

    .line 607
    invoke-static {v2, v5}, Landroid/graphics/drawable/AnimatedVectorDrawable;->containsSameValueType(Landroid/animation/PropertyValuesHolder;Landroid/util/Property;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 608
    invoke-virtual {v2, v5}, Landroid/animation/PropertyValuesHolder;->setProperty(Landroid/util/Property;)V

    goto :goto_2

    .line 609
    :cond_2
    if-eqz p3, :cond_3

    goto :goto_2

    .line 610
    :cond_3
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrong valueType for Property: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Expected type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 611
    invoke-virtual {v5}, Landroid/util/Property;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Actual type defined in resources: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 612
    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getValueType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 595
    .end local v2    # "pvh":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v4    # "targetNameObj":Ljava/lang/Object;
    .end local v5    # "property":Landroid/util/Property;
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "holders":[Landroid/animation/PropertyValuesHolder;
    .end local v1    # "i":I
    :cond_5
    goto :goto_4

    .line 617
    :cond_6
    instance-of v0, p0, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_7

    .line 618
    move-object v0, p0

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 619
    .local v1, "anim":Landroid/animation/Animator;
    invoke-static {v1, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->updateAnimatorProperty(Landroid/animation/Animator;Ljava/lang/String;Landroid/graphics/drawable/VectorDrawable;Z)V

    .line 620
    .end local v1    # "anim":Landroid/animation/Animator;
    goto :goto_3

    .line 617
    :cond_7
    :goto_4
    nop

    .line 622
    :cond_8
    return-void
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 675
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 677
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    .line 678
    .local v0, "vectorDrawable":Landroid/graphics/drawable/VectorDrawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 679
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 682
    :cond_0
    if-eqz p1, :cond_1

    .line 683
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->inflatePendingAnimators(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 688
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v1, v1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 689
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    .line 691
    :cond_2
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .locals 1

    .line 669
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    .line 670
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 669
    :goto_0
    return v0
.end method

.method public greylist-max-o canReverse()Z
    .locals 1

    .line 978
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->canReverse()Z

    move-result v0

    return v0
.end method

.method public whitelist clearAnimationCallbacks()V
    .locals 1

    .line 1062
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->removeAnimatorSetListener()V

    .line 1063
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1064
    return-void

    .line 1067
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1068
    return-void
.end method

.method public greylist-max-o clearMutated()V
    .locals 1

    .line 354
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 355
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->clearMutated()V

    .line 358
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mMutated:Z

    .line 359
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 396
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    if-eqz v1, :cond_0

    .line 399
    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->-$$Nest$fgetmPendingAnimationActions(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)Landroid/util/IntArray;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 401
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->fallbackOntoUI()V

    .line 404
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->onDraw(Landroid/graphics/Canvas;)V

    .line 405
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 406
    return-void
.end method

.method public greylist forceAnimationOnUI()V
    .locals 3

    .line 642
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    if-eqz v1, :cond_1

    .line 643
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    .line 644
    .local v0, "animator":Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 648
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->fallbackOntoUI()V

    goto :goto_0

    .line 645
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Cannot force Animated Vector Drawable to run on UI thread when the animation has started on RenderThread."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 650
    .end local v0    # "animator":Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist getAlpha()I
    .locals 1

    .line 437
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .locals 2

    .line 380
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 452
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 374
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mChangingConfigurations:I

    .line 375
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    return-object v0
.end method

.method public whitelist getIntrinsicHeight()I
    .locals 1

    .line 507
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .locals 1

    .line 502
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public whitelist getOpacity()I
    .locals 1

    .line 497
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    .line 517
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 512
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->getOutline(Landroid/graphics/Outline;)V

    .line 513
    return-void
.end method

.method public blacklist getTotalDuration()J
    .locals 2

    .line 698
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->getTotalDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 16
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget-object v4, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    .line 525
    .local v4, "state":Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 526
    .local v5, "eventType":I
    const/high16 v6, 0x3f800000    # 1.0f

    .line 527
    .local v6, "pathErrorScale":F
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    .line 530
    .local v7, "innerDepth":I
    :goto_0
    const/4 v9, 0x0

    if-eq v5, v8, :cond_8

    .line 531
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-ge v10, v7, :cond_0

    const/4 v10, 0x3

    if-eq v5, v10, :cond_8

    .line 532
    :cond_0
    const/4 v10, 0x2

    if-ne v5, v10, :cond_7

    .line 533
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 534
    .local v10, "tagName":Ljava/lang/String;
    const-string v11, "animated-vector"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_4

    .line 535
    sget-object v11, Lcom/android/internal/R$styleable;->AnimatedVectorDrawable:[I

    invoke-static {v1, v3, v2, v11}, Landroid/graphics/drawable/AnimatedVectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 537
    .local v11, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v11, v12, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 539
    .local v13, "drawableRes":I
    if-eqz v13, :cond_2

    .line 540
    invoke-virtual {v1, v13, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 541
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    check-cast v14, Landroid/graphics/drawable/VectorDrawable;

    .line 542
    .local v14, "vectorDrawable":Landroid/graphics/drawable/VectorDrawable;
    invoke-virtual {v14, v12}, Landroid/graphics/drawable/VectorDrawable;->setAllowCaching(Z)V

    .line 543
    iget-object v12, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v14, v12}, Landroid/graphics/drawable/VectorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 544
    invoke-virtual {v14}, Landroid/graphics/drawable/VectorDrawable;->getPixelSize()F

    move-result v6

    .line 545
    iget-object v12, v4, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    if-eqz v12, :cond_1

    .line 546
    iget-object v12, v4, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v12, v9}, Landroid/graphics/drawable/VectorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 548
    :cond_1
    iput-object v14, v4, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    .line 550
    .end local v14    # "vectorDrawable":Landroid/graphics/drawable/VectorDrawable;
    :cond_2
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 551
    .end local v11    # "a":Landroid/content/res/TypedArray;
    .end local v13    # "drawableRes":I
    :cond_3
    goto :goto_2

    :cond_4
    const-string/jumbo v9, "target"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 552
    sget-object v9, Lcom/android/internal/R$styleable;->AnimatedVectorDrawableTarget:[I

    invoke-static {v1, v3, v2, v9}, Landroid/graphics/drawable/AnimatedVectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 554
    .local v9, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 556
    .local v11, "target":Ljava/lang/String;
    invoke-virtual {v9, v8, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 558
    .local v12, "animResId":I
    if-eqz v12, :cond_6

    .line 559
    if-eqz v3, :cond_5

    .line 561
    invoke-static {v1, v3, v12, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object v13

    .line 563
    .local v13, "animator":Landroid/animation/Animator;
    iget-object v14, v4, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-static {v4}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->-$$Nest$fgetmShouldIgnoreInvalidAnim(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z

    move-result v15

    invoke-static {v13, v11, v14, v15}, Landroid/graphics/drawable/AnimatedVectorDrawable;->updateAnimatorProperty(Landroid/animation/Animator;Ljava/lang/String;Landroid/graphics/drawable/VectorDrawable;Z)V

    .line 565
    invoke-virtual {v4, v11, v13}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->addTargetAnimator(Ljava/lang/String;Landroid/animation/Animator;)V

    .line 566
    .end local v13    # "animator":Landroid/animation/Animator;
    goto :goto_1

    .line 571
    :cond_5
    invoke-virtual {v4, v12, v6, v11}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->addPendingAnimator(IFLjava/lang/String;)V

    .line 575
    :cond_6
    :goto_1
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 579
    .end local v9    # "a":Landroid/content/res/TypedArray;
    .end local v10    # "tagName":Ljava/lang/String;
    .end local v11    # "target":Ljava/lang/String;
    .end local v12    # "animResId":I
    :cond_7
    :goto_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto/16 :goto_0

    .line 584
    :cond_8
    iget-object v8, v4, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    if-nez v8, :cond_9

    goto :goto_3

    :cond_9
    move-object v9, v1

    :goto_3
    iput-object v9, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    .line 585
    return-void
.end method

.method public whitelist isRunning()Z
    .locals 1

    .line 903
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public whitelist isStateful()Z
    .locals 1

    .line 492
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 342
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 343
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    iget-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mRes:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mMutated:Z

    .line 347
    :cond_0
    return-object p0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 410
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 411
    return-void
.end method

.method public whitelist onLayoutDirectionChanged(I)Z
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 425
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setLayoutDirection(I)Z

    move-result v0

    return v0
.end method

.method protected whitelist onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .line 420
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setLevel(I)Z

    move-result v0

    return v0
.end method

.method protected whitelist onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .line 415
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setState([I)Z

    move-result v0

    return v0
.end method

.method public whitelist registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 1000
    if-nez p1, :cond_0

    .line 1001
    return-void

    .line 1005
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1006
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 1009
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-nez v0, :cond_2

    .line 1014
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable$2;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$2;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 1034
    :cond_2
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1035
    return-void
.end method

.method public whitelist reset()V
    .locals 1

    .line 910
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->ensureAnimatorSet()V

    .line 917
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->reset()V

    .line 918
    return-void
.end method

.method public greylist-max-o reverse()V
    .locals 2

    .line 963
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->ensureAnimatorSet()V

    .line 966
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->canReverse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 967
    const-string v0, "AnimatedVectorDrawable"

    const-string v1, "AnimatedVectorDrawable can\'t reverse()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    return-void

    .line 971
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->reverse()V

    .line 972
    return-void
.end method

.method public whitelist setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 442
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setAlpha(I)V

    .line 443
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 447
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 448
    return-void
.end method

.method public whitelist setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 462
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->setHotspot(FF)V

    .line 463
    return-void
.end method

.method public whitelist setHotspotBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 467
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/VectorDrawable;->setHotspotBounds(IIII)V

    .line 468
    return-void
.end method

.method public whitelist setTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 1
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;

    .line 472
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 473
    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 457
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 458
    return-void
.end method

.method public whitelist setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 477
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    if-eqz p1, :cond_0

    .line 480
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->resume()V

    goto :goto_0

    .line 483
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->pause()V

    .line 486
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->setVisible(ZZ)Z

    .line 487
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public whitelist start()V
    .locals 1

    .line 922
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->ensureAnimatorSet()V

    .line 929
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->start()V

    .line 930
    return-void
.end method

.method public whitelist stop()V
    .locals 1

    .line 952
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatorSet:Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;

    invoke-interface {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimator;->end()V

    .line 953
    return-void
.end method

.method public whitelist unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z
    .locals 2
    .param p1, "callback"    # Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 1047
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1051
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1054
    .local v0, "removed":Z
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1055
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->removeAnimatorSetListener()V

    .line 1057
    :cond_1
    return v0

    .line 1049
    .end local v0    # "removed":Z
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
