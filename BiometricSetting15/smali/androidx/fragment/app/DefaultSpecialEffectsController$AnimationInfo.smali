.class public final Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;
.super Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public animation:Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

.field public isAnimLoaded:Z

.field public final isPop:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;Z)V
    .locals 1

    .line 1
    const-string v0, "operation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;)V

    .line 7
    .line 8
    .line 9
    iput-boolean p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->isPop:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getAnimation(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->isAnimLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->animation:Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 6
    .line 7
    goto/16 :goto_7

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->operation:Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    .line 10
    .line 11
    iget-object v1, v0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->fragment:Landroidx/fragment/app/Fragment;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->finalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 14
    .line 15
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    move v0, v4

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v0, v3

    .line 24
    :goto_0
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 25
    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    move v5, v3

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    iget v5, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mNextTransition:I

    .line 31
    .line 32
    :goto_1
    iget-boolean v6, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->isPop:Z

    .line 33
    .line 34
    if-eqz v6, :cond_6

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    if-nez v2, :cond_3

    .line 39
    .line 40
    :goto_2
    move v2, v3

    .line 41
    goto :goto_3

    .line 42
    :cond_3
    iget v2, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopEnterAnim:I

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_4
    if-nez v2, :cond_5

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_5
    iget v2, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopExitAnim:I

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_6
    if-eqz v0, :cond_8

    .line 52
    .line 53
    if-nez v2, :cond_7

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_7
    iget v2, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterAnim:I

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_8
    if-nez v2, :cond_9

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_9
    iget v2, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitAnim:I

    .line 63
    .line 64
    :goto_3
    invoke-virtual {v1, v3, v3, v3, v3}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 65
    .line 66
    .line 67
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    if-eqz v3, :cond_a

    .line 71
    .line 72
    const v7, 0x7f0a0200

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    if-eqz v3, :cond_a

    .line 80
    .line 81
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 82
    .line 83
    invoke-virtual {v3, v7, v6}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_a
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 87
    .line 88
    if-eqz v1, :cond_c

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-eqz v1, :cond_c

    .line 95
    .line 96
    :cond_b
    move-object v3, v6

    .line 97
    goto/16 :goto_6

    .line 98
    .line 99
    :cond_c
    if-nez v2, :cond_17

    .line 100
    .line 101
    if-eqz v5, :cond_17

    .line 102
    .line 103
    const/16 v1, 0x1001

    .line 104
    .line 105
    if-eq v5, v1, :cond_15

    .line 106
    .line 107
    const/16 v1, 0x2002

    .line 108
    .line 109
    if-eq v5, v1, :cond_13

    .line 110
    .line 111
    const/16 v1, 0x2005

    .line 112
    .line 113
    if-eq v5, v1, :cond_11

    .line 114
    .line 115
    const/16 v1, 0x1003

    .line 116
    .line 117
    if-eq v5, v1, :cond_f

    .line 118
    .line 119
    const/16 v1, 0x1004

    .line 120
    .line 121
    if-eq v5, v1, :cond_d

    .line 122
    .line 123
    const/4 v0, -0x1

    .line 124
    :goto_4
    move v2, v0

    .line 125
    goto :goto_5

    .line 126
    :cond_d
    if-eqz v0, :cond_e

    .line 127
    .line 128
    const v0, 0x10100b8

    .line 129
    .line 130
    .line 131
    invoke-static {p1, v0}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(Landroid/content/Context;I)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    goto :goto_4

    .line 136
    :cond_e
    const v0, 0x10100b9

    .line 137
    .line 138
    .line 139
    invoke-static {p1, v0}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(Landroid/content/Context;I)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    goto :goto_4

    .line 144
    :cond_f
    if-eqz v0, :cond_10

    .line 145
    .line 146
    const v0, 0x7f020002

    .line 147
    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_10
    const v0, 0x7f020003

    .line 151
    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_11
    if-eqz v0, :cond_12

    .line 155
    .line 156
    const v0, 0x10100ba

    .line 157
    .line 158
    .line 159
    invoke-static {p1, v0}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(Landroid/content/Context;I)I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    goto :goto_4

    .line 164
    :cond_12
    const v0, 0x10100bb

    .line 165
    .line 166
    .line 167
    invoke-static {p1, v0}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(Landroid/content/Context;I)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    goto :goto_4

    .line 172
    :cond_13
    if-eqz v0, :cond_14

    .line 173
    .line 174
    const/high16 v0, 0x7f020000

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_14
    const v0, 0x7f020001

    .line 178
    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_15
    if-eqz v0, :cond_16

    .line 182
    .line 183
    const v0, 0x7f020004

    .line 184
    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_16
    const v0, 0x7f020005

    .line 188
    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_17
    :goto_5
    if-eqz v2, :cond_b

    .line 192
    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    const-string v1, "anim"

    .line 202
    .line 203
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_18

    .line 208
    .line 209
    :try_start_0
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    if-eqz v1, :cond_b

    .line 214
    .line 215
    new-instance v3, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 216
    .line 217
    invoke-direct {v3, v1}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 218
    .line 219
    .line 220
    goto :goto_6

    .line 221
    :catch_0
    move-exception p0

    .line 222
    throw p0

    .line 223
    :catch_1
    :cond_18
    :try_start_1
    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    if-eqz v1, :cond_b

    .line 228
    .line 229
    new-instance v3, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 230
    .line 231
    invoke-direct {v3, v1}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 232
    .line 233
    .line 234
    goto :goto_6

    .line 235
    :catch_2
    move-exception v1

    .line 236
    if-nez v0, :cond_19

    .line 237
    .line 238
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    if-eqz p1, :cond_b

    .line 243
    .line 244
    new-instance v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 245
    .line 246
    invoke-direct {v0, p1}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    .line 247
    .line 248
    .line 249
    move-object v3, v0

    .line 250
    goto :goto_6

    .line 251
    :cond_19
    throw v1

    .line 252
    :goto_6
    iput-object v3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->animation:Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 253
    .line 254
    iput-boolean v4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->isAnimLoaded:Z

    .line 255
    .line 256
    move-object p0, v3

    .line 257
    :goto_7
    return-object p0
.end method
