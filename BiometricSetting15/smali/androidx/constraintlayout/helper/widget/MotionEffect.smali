.class public Landroidx/constraintlayout/helper/widget/MotionEffect;
.super Landroidx/constraintlayout/motion/widget/MotionHelper;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mFadeMove:I

.field public mMotionEffectAlpha:F

.field public mMotionEffectEnd:I

.field public mMotionEffectStart:I

.field public mMotionEffectStrictMove:Z

.field public mMotionEffectTranslationX:I

.field public mMotionEffectTranslationY:I

.field public mViewTransitionId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;)V

    const p1, 0x3dcccccd    # 0.1f

    .line 2
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectAlpha:F

    const/16 p1, 0x31

    .line 3
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectStart:I

    const/16 p1, 0x32

    .line 4
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectEnd:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectTranslationX:I

    .line 6
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectTranslationY:I

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectStrictMove:Z

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mViewTransitionId:I

    .line 9
    iput p1, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mFadeMove:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 10
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3dcccccd    # 0.1f

    .line 11
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectAlpha:F

    const/16 v0, 0x31

    .line 12
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectStart:I

    const/16 v0, 0x32

    .line 13
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectEnd:I

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectTranslationX:I

    .line 15
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectTranslationY:I

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectStrictMove:Z

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mViewTransitionId:I

    .line 18
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mFadeMove:I

    .line 19
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/MotionEffect;->init$1(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, 0x3dcccccd    # 0.1f

    .line 21
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectAlpha:F

    const/16 p3, 0x31

    .line 22
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectStart:I

    const/16 p3, 0x32

    .line 23
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectEnd:I

    const/4 p3, 0x0

    .line 24
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectTranslationX:I

    .line 25
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectTranslationY:I

    const/4 p3, 0x1

    .line 26
    iput-boolean p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectStrictMove:Z

    const/4 p3, -0x1

    .line 27
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mViewTransitionId:I

    .line 28
    iput p3, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mFadeMove:I

    .line 29
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/MotionEffect;->init$1(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final init$1(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    if-eqz p2, :cond_b

    .line 2
    .line 3
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->MotionEffect:[I

    .line 4
    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const/4 v0, 0x0

    .line 14
    move v1, v0

    .line 15
    :goto_0
    const/4 v2, 0x1

    .line 16
    if-ge v1, p2, :cond_8

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x3

    .line 23
    const/16 v5, 0x63

    .line 24
    .line 25
    if-ne v3, v4, :cond_0

    .line 26
    .line 27
    iget v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectStart:I

    .line 28
    .line 29
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectStart:I

    .line 34
    .line 35
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectStart:I

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    if-ne v3, v2, :cond_1

    .line 47
    .line 48
    iget v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectEnd:I

    .line 49
    .line 50
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectEnd:I

    .line 55
    .line 56
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectEnd:I

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const/4 v2, 0x5

    .line 68
    if-ne v3, v2, :cond_2

    .line 69
    .line 70
    iget v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectTranslationX:I

    .line 71
    .line 72
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectTranslationX:I

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const/4 v2, 0x6

    .line 80
    if-ne v3, v2, :cond_3

    .line 81
    .line 82
    iget v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectTranslationY:I

    .line 83
    .line 84
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectTranslationY:I

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    if-nez v3, :cond_4

    .line 92
    .line 93
    iget v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectAlpha:F

    .line 94
    .line 95
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectAlpha:F

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    const/4 v2, 0x2

    .line 103
    if-ne v3, v2, :cond_5

    .line 104
    .line 105
    iget v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mFadeMove:I

    .line 106
    .line 107
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mFadeMove:I

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_5
    const/4 v2, 0x4

    .line 115
    if-ne v3, v2, :cond_6

    .line 116
    .line 117
    iget-boolean v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectStrictMove:Z

    .line 118
    .line 119
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    iput-boolean v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectStrictMove:Z

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_6
    const/4 v2, 0x7

    .line 127
    if-ne v3, v2, :cond_7

    .line 128
    .line 129
    iget v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mViewTransitionId:I

    .line 130
    .line 131
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    iput v2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mViewTransitionId:I

    .line 136
    .line 137
    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_8
    iget p2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectStart:I

    .line 141
    .line 142
    iget v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectEnd:I

    .line 143
    .line 144
    if-ne p2, v0, :cond_a

    .line 145
    .line 146
    if-lez p2, :cond_9

    .line 147
    .line 148
    sub-int/2addr p2, v2

    .line 149
    iput p2, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectStart:I

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_9
    add-int/2addr v0, v2

    .line 153
    iput v0, p0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectEnd:I

    .line 154
    .line 155
    :cond_a
    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    .line 157
    .line 158
    :cond_b
    return-void
.end method

.method public final onPreSetup(Landroidx/constraintlayout/motion/widget/MotionLayout;Ljava/util/HashMap;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintHelper;->getViews(Landroidx/constraintlayout/widget/ConstraintLayout;)[Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLoc()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, " views = null"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "FadeMove"

    .line 39
    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    new-instance v3, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 45
    .line 46
    invoke-direct {v3}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v4, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 50
    .line 51
    invoke-direct {v4}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    .line 52
    .line 53
    .line 54
    iget v5, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectAlpha:F

    .line 55
    .line 56
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    const-string v6, "alpha"

    .line 61
    .line 62
    invoke-virtual {v3, v5, v6}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget v5, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectAlpha:F

    .line 66
    .line 67
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget v5, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectStart:I

    .line 75
    .line 76
    iput v5, v3, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 77
    .line 78
    iget v6, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectEnd:I

    .line 79
    .line 80
    iput v6, v4, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 81
    .line 82
    new-instance v6, Landroidx/constraintlayout/motion/widget/KeyPosition;

    .line 83
    .line 84
    invoke-direct {v6}, Landroidx/constraintlayout/motion/widget/KeyPosition;-><init>()V

    .line 85
    .line 86
    .line 87
    iput v5, v6, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 88
    .line 89
    const/4 v5, 0x0

    .line 90
    iput v5, v6, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    .line 91
    .line 92
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    const-string v8, "percentX"

    .line 97
    .line 98
    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    const-string v9, "percentY"

    .line 106
    .line 107
    invoke-virtual {v6, v7, v9}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    new-instance v7, Landroidx/constraintlayout/motion/widget/KeyPosition;

    .line 111
    .line 112
    invoke-direct {v7}, Landroidx/constraintlayout/motion/widget/KeyPosition;-><init>()V

    .line 113
    .line 114
    .line 115
    iget v10, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectEnd:I

    .line 116
    .line 117
    iput v10, v7, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 118
    .line 119
    iput v5, v7, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    .line 120
    .line 121
    const/4 v10, 0x1

    .line 122
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    invoke-virtual {v7, v11, v8}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/motion/widget/KeyPosition;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget v8, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectTranslationX:I

    .line 137
    .line 138
    const/4 v9, 0x0

    .line 139
    if-lez v8, :cond_1

    .line 140
    .line 141
    new-instance v8, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 142
    .line 143
    invoke-direct {v8}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    .line 144
    .line 145
    .line 146
    new-instance v11, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 147
    .line 148
    invoke-direct {v11}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    .line 149
    .line 150
    .line 151
    iget v12, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectTranslationX:I

    .line 152
    .line 153
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v12

    .line 157
    const-string v13, "translationX"

    .line 158
    .line 159
    invoke-virtual {v8, v12, v13}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget v12, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectEnd:I

    .line 163
    .line 164
    iput v12, v8, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 165
    .line 166
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget v12, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectEnd:I

    .line 174
    .line 175
    sub-int/2addr v12, v10

    .line 176
    iput v12, v11, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_1
    move-object v8, v9

    .line 180
    move-object v11, v8

    .line 181
    :goto_0
    iget v12, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectTranslationY:I

    .line 182
    .line 183
    if-lez v12, :cond_2

    .line 184
    .line 185
    new-instance v9, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 186
    .line 187
    invoke-direct {v9}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    .line 188
    .line 189
    .line 190
    new-instance v12, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 191
    .line 192
    invoke-direct {v12}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    .line 193
    .line 194
    .line 195
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectTranslationY:I

    .line 196
    .line 197
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v13

    .line 201
    const-string v14, "translationY"

    .line 202
    .line 203
    invoke-virtual {v9, v13, v14}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectEnd:I

    .line 207
    .line 208
    iput v13, v9, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 209
    .line 210
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v13

    .line 214
    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectEnd:I

    .line 218
    .line 219
    sub-int/2addr v13, v10

    .line 220
    iput v13, v12, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_2
    move-object v12, v9

    .line 224
    :goto_1
    iget v13, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mFadeMove:I

    .line 225
    .line 226
    const/4 v14, -0x1

    .line 227
    const/16 v16, 0x0

    .line 228
    .line 229
    if-ne v13, v14, :cond_a

    .line 230
    .line 231
    const/4 v13, 0x4

    .line 232
    new-array v14, v13, [I

    .line 233
    .line 234
    move v13, v5

    .line 235
    :goto_2
    array-length v15, v2

    .line 236
    if-ge v13, v15, :cond_8

    .line 237
    .line 238
    aget-object v15, v2, v13

    .line 239
    .line 240
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v15

    .line 244
    check-cast v15, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 245
    .line 246
    if-nez v15, :cond_3

    .line 247
    .line 248
    move-object/from16 v18, v12

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_3
    iget-object v5, v15, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 252
    .line 253
    iget v10, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 254
    .line 255
    iget-object v15, v15, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 256
    .line 257
    move-object/from16 v18, v12

    .line 258
    .line 259
    iget v12, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 260
    .line 261
    sub-float/2addr v10, v12

    .line 262
    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 263
    .line 264
    iget v12, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 265
    .line 266
    sub-float/2addr v5, v12

    .line 267
    cmpg-float v12, v5, v16

    .line 268
    .line 269
    if-gez v12, :cond_4

    .line 270
    .line 271
    const/4 v12, 0x1

    .line 272
    aget v15, v14, v12

    .line 273
    .line 274
    add-int/2addr v15, v12

    .line 275
    aput v15, v14, v12

    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_4
    const/4 v12, 0x1

    .line 279
    :goto_3
    cmpl-float v5, v5, v16

    .line 280
    .line 281
    if-lez v5, :cond_5

    .line 282
    .line 283
    const/4 v5, 0x0

    .line 284
    aget v15, v14, v5

    .line 285
    .line 286
    add-int/2addr v15, v12

    .line 287
    aput v15, v14, v5

    .line 288
    .line 289
    :cond_5
    cmpl-float v5, v10, v16

    .line 290
    .line 291
    if-lez v5, :cond_6

    .line 292
    .line 293
    const/4 v5, 0x3

    .line 294
    aget v15, v14, v5

    .line 295
    .line 296
    add-int/2addr v15, v12

    .line 297
    aput v15, v14, v5

    .line 298
    .line 299
    :cond_6
    cmpg-float v5, v10, v16

    .line 300
    .line 301
    if-gez v5, :cond_7

    .line 302
    .line 303
    const/4 v5, 0x2

    .line 304
    aget v10, v14, v5

    .line 305
    .line 306
    add-int/2addr v10, v12

    .line 307
    aput v10, v14, v5

    .line 308
    .line 309
    :cond_7
    :goto_4
    add-int/lit8 v13, v13, 0x1

    .line 310
    .line 311
    move-object/from16 v12, v18

    .line 312
    .line 313
    const/4 v5, 0x0

    .line 314
    const/4 v10, 0x1

    .line 315
    goto :goto_2

    .line 316
    :cond_8
    move-object/from16 v18, v12

    .line 317
    .line 318
    aget v10, v14, v5

    .line 319
    .line 320
    move v13, v5

    .line 321
    const/4 v12, 0x1

    .line 322
    const/4 v15, 0x4

    .line 323
    :goto_5
    if-ge v12, v15, :cond_b

    .line 324
    .line 325
    aget v5, v14, v12

    .line 326
    .line 327
    if-ge v10, v5, :cond_9

    .line 328
    .line 329
    move v10, v5

    .line 330
    move v13, v12

    .line 331
    :cond_9
    add-int/lit8 v12, v12, 0x1

    .line 332
    .line 333
    const/4 v5, 0x0

    .line 334
    goto :goto_5

    .line 335
    :cond_a
    move-object/from16 v18, v12

    .line 336
    .line 337
    :cond_b
    const/4 v5, 0x0

    .line 338
    :goto_6
    array-length v10, v2

    .line 339
    if-ge v5, v10, :cond_1c

    .line 340
    .line 341
    aget-object v10, v2, v5

    .line 342
    .line 343
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v10

    .line 347
    check-cast v10, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 348
    .line 349
    if-nez v10, :cond_d

    .line 350
    .line 351
    :cond_c
    :goto_7
    move-object/from16 v12, p1

    .line 352
    .line 353
    move-object/from16 v17, v2

    .line 354
    .line 355
    move-object/from16 v14, v18

    .line 356
    .line 357
    :goto_8
    const/4 v2, -0x1

    .line 358
    goto/16 :goto_f

    .line 359
    .line 360
    :cond_d
    iget-object v12, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 361
    .line 362
    iget v14, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 363
    .line 364
    iget-object v15, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 365
    .line 366
    iget v1, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 367
    .line 368
    sub-float/2addr v14, v1

    .line 369
    iget v1, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 370
    .line 371
    iget v12, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 372
    .line 373
    sub-float/2addr v1, v12

    .line 374
    if-nez v13, :cond_10

    .line 375
    .line 376
    cmpl-float v1, v1, v16

    .line 377
    .line 378
    if-lez v1, :cond_e

    .line 379
    .line 380
    iget-boolean v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectStrictMove:Z

    .line 381
    .line 382
    if-eqz v1, :cond_f

    .line 383
    .line 384
    cmpl-float v1, v14, v16

    .line 385
    .line 386
    if-nez v1, :cond_e

    .line 387
    .line 388
    goto :goto_9

    .line 389
    :cond_e
    const/4 v12, 0x3

    .line 390
    const/4 v15, 0x2

    .line 391
    goto :goto_c

    .line 392
    :cond_f
    :goto_9
    const/4 v12, 0x3

    .line 393
    const/4 v15, 0x2

    .line 394
    goto :goto_b

    .line 395
    :cond_10
    const/4 v12, 0x1

    .line 396
    if-ne v13, v12, :cond_11

    .line 397
    .line 398
    cmpg-float v1, v1, v16

    .line 399
    .line 400
    if-gez v1, :cond_e

    .line 401
    .line 402
    iget-boolean v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectStrictMove:Z

    .line 403
    .line 404
    if-eqz v1, :cond_f

    .line 405
    .line 406
    cmpl-float v1, v14, v16

    .line 407
    .line 408
    if-nez v1, :cond_e

    .line 409
    .line 410
    goto :goto_9

    .line 411
    :cond_11
    const/4 v15, 0x2

    .line 412
    if-ne v13, v15, :cond_14

    .line 413
    .line 414
    cmpg-float v14, v14, v16

    .line 415
    .line 416
    if-gez v14, :cond_12

    .line 417
    .line 418
    iget-boolean v14, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectStrictMove:Z

    .line 419
    .line 420
    if-eqz v14, :cond_13

    .line 421
    .line 422
    cmpl-float v1, v1, v16

    .line 423
    .line 424
    if-nez v1, :cond_12

    .line 425
    .line 426
    goto :goto_a

    .line 427
    :cond_12
    const/4 v12, 0x3

    .line 428
    goto :goto_c

    .line 429
    :cond_13
    :goto_a
    const/4 v12, 0x3

    .line 430
    goto :goto_b

    .line 431
    :cond_14
    const/4 v12, 0x3

    .line 432
    if-ne v13, v12, :cond_15

    .line 433
    .line 434
    cmpl-float v14, v14, v16

    .line 435
    .line 436
    if-lez v14, :cond_15

    .line 437
    .line 438
    iget-boolean v14, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectStrictMove:Z

    .line 439
    .line 440
    if-eqz v14, :cond_c

    .line 441
    .line 442
    cmpl-float v1, v1, v16

    .line 443
    .line 444
    if-nez v1, :cond_15

    .line 445
    .line 446
    :goto_b
    goto :goto_7

    .line 447
    :cond_15
    :goto_c
    iget v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mViewTransitionId:I

    .line 448
    .line 449
    const/4 v14, -0x1

    .line 450
    if-ne v1, v14, :cond_19

    .line 451
    .line 452
    invoke-virtual {v10, v3}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v10, v4}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v10, v6}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v10, v7}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 462
    .line 463
    .line 464
    iget v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectTranslationX:I

    .line 465
    .line 466
    if-lez v1, :cond_16

    .line 467
    .line 468
    invoke-virtual {v10, v8}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 472
    .line 473
    .line 474
    :cond_16
    iget v1, v0, Landroidx/constraintlayout/helper/widget/MotionEffect;->mMotionEffectTranslationY:I

    .line 475
    .line 476
    if-lez v1, :cond_18

    .line 477
    .line 478
    invoke-virtual {v10, v9}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 479
    .line 480
    .line 481
    move-object/from16 v14, v18

    .line 482
    .line 483
    invoke-virtual {v10, v14}, Landroidx/constraintlayout/motion/widget/MotionController;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 484
    .line 485
    .line 486
    :goto_d
    move-object/from16 v12, p1

    .line 487
    .line 488
    :cond_17
    move-object/from16 v17, v2

    .line 489
    .line 490
    goto/16 :goto_8

    .line 491
    .line 492
    :cond_18
    move-object/from16 v14, v18

    .line 493
    .line 494
    goto :goto_d

    .line 495
    :cond_19
    move-object/from16 v12, p1

    .line 496
    .line 497
    move-object/from16 v14, v18

    .line 498
    .line 499
    iget-object v15, v12, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 500
    .line 501
    if-eqz v15, :cond_17

    .line 502
    .line 503
    iget-object v15, v15, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 504
    .line 505
    iget-object v15, v15, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mViewTransitions:Ljava/util/ArrayList;

    .line 506
    .line 507
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 508
    .line 509
    .line 510
    move-result-object v15

    .line 511
    :goto_e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 512
    .line 513
    .line 514
    move-result v17

    .line 515
    if-eqz v17, :cond_17

    .line 516
    .line 517
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v17

    .line 521
    move-object/from16 v0, v17

    .line 522
    .line 523
    check-cast v0, Landroidx/constraintlayout/motion/widget/ViewTransition;

    .line 524
    .line 525
    move-object/from16 v17, v2

    .line 526
    .line 527
    iget v2, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mId:I

    .line 528
    .line 529
    if-ne v2, v1, :cond_1a

    .line 530
    .line 531
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mKeyFrames:Landroidx/constraintlayout/motion/widget/KeyFrames;

    .line 532
    .line 533
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/KeyFrames;->mFramesMap:Ljava/util/HashMap;

    .line 534
    .line 535
    const/4 v2, -0x1

    .line 536
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    check-cast v0, Ljava/util/ArrayList;

    .line 545
    .line 546
    if-eqz v0, :cond_1b

    .line 547
    .line 548
    iget-object v1, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 549
    .line 550
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 551
    .line 552
    .line 553
    goto :goto_f

    .line 554
    :cond_1a
    move-object/from16 v0, p0

    .line 555
    .line 556
    move-object/from16 v2, v17

    .line 557
    .line 558
    goto :goto_e

    .line 559
    :cond_1b
    :goto_f
    add-int/lit8 v5, v5, 0x1

    .line 560
    .line 561
    move-object/from16 v0, p0

    .line 562
    .line 563
    move-object/from16 v1, p2

    .line 564
    .line 565
    move-object/from16 v18, v14

    .line 566
    .line 567
    move-object/from16 v2, v17

    .line 568
    .line 569
    goto/16 :goto_6

    .line 570
    .line 571
    :cond_1c
    return-void
.end method
