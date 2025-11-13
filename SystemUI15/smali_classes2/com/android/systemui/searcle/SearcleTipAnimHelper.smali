.class public final Lcom/android/systemui/searcle/SearcleTipAnimHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final HIDE_ANIM_BUBBLE_ALPHA_PROPERTY:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

.field public static final HIDE_ANIM_BUBBLE_SCALE_PROPERTY:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

.field public static final HIDE_ANIM_CONTENT_ALPHA_PROPERTY:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

.field public static final INIT_BUBBLE_PROPERTY_FIELDS:[Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

.field public static final INIT_CONTENT_PROPERTY_FIELDS:[Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

.field public static final SHOW_ANIM_BUBBLE_ALPHA_PROPERTY:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

.field public static final SHOW_ANIM_BUBBLE_SCALE_PROPERTY:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

.field public static final SHOW_ANIM_BUBBLE_TRANS_PROPERTY:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

.field public static final SHOW_ANIM_CONTENT_ALPHA_PROPERTY:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;


# instance fields
.field public final addViewRunnable:Ljava/lang/Runnable;

.field public final bubbleLayout:Landroid/widget/LinearLayout;

.field public final contentLayout:Landroid/widget/LinearLayout;

.field public final context:Landroid/content/Context;

.field public final hideAnimList:Ljava/util/ArrayList;

.field public hideAnimSet:Landroid/animation/AnimatorSet;

.field public final hideImmediateRunnable:Ljava/lang/Runnable;

.field public final showAnimList:Ljava/util/ArrayList;

.field public showAnimSet:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/searcle/SearcleTipAnimHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3fa66666    # 1.3f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FF)V

    new-instance v9, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {v9, v2, v3, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v15, Landroid/view/animation/PathInterpolator;

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v15, v2, v3, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sget-object v1, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;->Alpha:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    sget-object v14, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;->Scale:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    sget-object v2, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;->TransXOnRTL:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    sget-object v13, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;->TransY:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    filled-new-array {v1, v14, v2, v13}, [Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->INIT_BUBBLE_PROPERTY_FIELDS:[Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    filled-new-array {v1}, [Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->INIT_CONTENT_PROPERTY_FIELDS:[Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;

    new-instance v2, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

    const/16 v5, 0x53

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v3, v2

    move-object v4, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;-><init>(Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V

    sput-object v2, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->SHOW_ANIM_BUBBLE_ALPHA_PROPERTY:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

    new-instance v9, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

    const/16 v4, 0xa7

    const/4 v5, 0x0

    const v6, 0x3ea3d70a    # 0.32f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, v9

    move-object v3, v14

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;-><init>(Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V

    sput-object v9, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->SHOW_ANIM_BUBBLE_SCALE_PROPERTY:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

    new-instance v2, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

    const/16 v12, 0xa7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v10, v2

    move-object v11, v1

    move-object v6, v13

    move v13, v3

    move-object v9, v14

    move v14, v4

    move-object/from16 v17, v15

    move v15, v5

    move-object/from16 v16, v17

    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;-><init>(Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V

    sput-object v2, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->SHOW_ANIM_CONTENT_ALPHA_PROPERTY:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

    new-instance v10, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

    const/16 v4, 0xa7

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    move-object v3, v6

    move v6, v7

    move v7, v8

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;-><init>(Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V

    sput-object v10, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->SHOW_ANIM_BUBBLE_TRANS_PROPERTY:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

    new-instance v2, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;-><init>(Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V

    sput-object v2, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->HIDE_ANIM_BUBBLE_ALPHA_PROPERTY:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

    new-instance v10, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3ea3d70a    # 0.32f

    move-object v2, v10

    move-object v3, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;-><init>(Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V

    sput-object v10, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->HIDE_ANIM_BUBBLE_SCALE_PROPERTY:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

    new-instance v0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

    const/4 v12, 0x0

    const v15, 0x3ea3d70a    # 0.32f

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;-><init>(Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V

    sput-object v0, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->HIDE_ANIM_CONTENT_ALPHA_PROPERTY:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->addViewRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->hideImmediateRunnable:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->bubbleLayout:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->contentLayout:Landroid/widget/LinearLayout;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->showAnimList:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->hideAnimList:Ljava/util/ArrayList;

    return-void
.end method

.method public static varargs initProperty([Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;[Landroid/view/View;)V
    .locals 8

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    array-length v4, p0

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_0

    aget-object v6, p0, v5

    const/4 v7, 0x0

    invoke-static {v3, v7, v6}, Lcom/android/systemui/searcle/SearcleTipAnimHelper;->updateProperty(Landroid/view/View;FLcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static updateProperty(Landroid/view/View;FLcom/android/systemui/searcle/SearcleTipAnimHelper$AnimationType;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/searcle/SearcleTipAnimHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :pswitch_4
    neg-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final makeAnimSet([Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimPairSet;Ljava/util/ArrayList;Lcom/android/systemui/searcle/SearcleTipAnimHelper$BaseAnimatorListener;)Landroid/animation/AnimatorSet;
    .locals 9

    const/4 v0, 0x1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    iget-object v5, v4, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimPairSet;->view:Landroid/view/View;

    iget-object v4, v4, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimPairSet;->property:Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;

    if-eqz v4, :cond_1

    iget v6, v4, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->toValue:F

    iget v7, v4, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->fromValue:F

    const/4 v8, 0x2

    new-array v8, v8, [F

    aput v7, v8, v2

    aput v6, v8, v0

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    iget v7, v4, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->duration:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget v7, v4, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->startDelay:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v7, v4, Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Lcom/android/systemui/searcle/SearcleTipAnimHelper$makeAnimator$1$1$1;

    invoke-direct {v7, p0, v5, v4}, Lcom/android/systemui/searcle/SearcleTipAnimHelper$makeAnimator$1$1$1;-><init>(Lcom/android/systemui/searcle/SearcleTipAnimHelper;Landroid/view/View;Lcom/android/systemui/searcle/SearcleTipAnimHelper$AnimProperty;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/2addr v3, v0

    goto :goto_0

    :cond_3
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {p0, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p0
.end method
