.class public final Landroidx/core/view/NestedScrollingChildHelper;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mIsNestedScrollingEnabled:Z

.field public mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

.field public mNestedScrollingParentTouch:Landroid/view/ViewParent;

.field public mTempNestedScrollConsumed:[I

.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dispatchNestedFling(FFZ)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 13
    .line 14
    :try_start_0
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedFling(Landroid/view/View;FFZ)Z

    .line 15
    .line 16
    .line 17
    move-result v1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string p2, "ViewParent "

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p2, " does not implement interface method onNestedFling"

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string p2, "ViewParentCompat"

    .line 40
    .line 41
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    :cond_0
    :goto_0
    return v1
.end method

.method public final dispatchNestedPreFling(FF)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 13
    .line 14
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z

    .line 15
    .line 16
    .line 17
    move-result v1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string p2, "ViewParent "

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p2, " does not implement interface method onNestedPreFling"

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string p2, "ViewParentCompat"

    .line 40
    .line 41
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    :cond_0
    :goto_0
    return v1
.end method

.method public final dispatchNestedPreScroll(III[I[I)Z
    .locals 14

    .line 1
    move-object v1, p0

    .line 2
    move v0, p1

    .line 3
    move/from16 v5, p2

    .line 4
    .line 5
    move/from16 v7, p3

    .line 6
    .line 7
    move-object/from16 v8, p5

    .line 8
    .line 9
    iget-boolean v2, v1, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 10
    .line 11
    const/4 v9, 0x0

    .line 12
    if-eqz v2, :cond_a

    .line 13
    .line 14
    invoke-virtual {p0, v7}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    return v9

    .line 21
    :cond_0
    const/4 v10, 0x1

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    if-eqz v5, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    if-eqz v8, :cond_a

    .line 28
    .line 29
    aput v9, v8, v9

    .line 30
    .line 31
    aput v9, v8, v10

    .line 32
    .line 33
    goto/16 :goto_4

    .line 34
    .line 35
    :cond_2
    :goto_0
    if-eqz v8, :cond_3

    .line 36
    .line 37
    iget-object v3, v1, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 38
    .line 39
    invoke-virtual {v3, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 40
    .line 41
    .line 42
    aget v3, v8, v9

    .line 43
    .line 44
    aget v4, v8, v10

    .line 45
    .line 46
    move v11, v3

    .line 47
    move v12, v4

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    move v11, v9

    .line 50
    move v12, v11

    .line 51
    :goto_1
    if-nez p4, :cond_5

    .line 52
    .line 53
    iget-object v3, v1, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 54
    .line 55
    if-nez v3, :cond_4

    .line 56
    .line 57
    const/4 v3, 0x2

    .line 58
    new-array v3, v3, [I

    .line 59
    .line 60
    iput-object v3, v1, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 61
    .line 62
    :cond_4
    iget-object v3, v1, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 63
    .line 64
    move-object v13, v3

    .line 65
    goto :goto_2

    .line 66
    :cond_5
    move-object/from16 v13, p4

    .line 67
    .line 68
    :goto_2
    aput v9, v13, v9

    .line 69
    .line 70
    aput v9, v13, v10

    .line 71
    .line 72
    iget-object v3, v1, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 73
    .line 74
    instance-of v4, v2, Landroidx/core/view/NestedScrollingParent2;

    .line 75
    .line 76
    if-eqz v4, :cond_6

    .line 77
    .line 78
    check-cast v2, Landroidx/core/view/NestedScrollingParent2;

    .line 79
    .line 80
    move v4, p1

    .line 81
    move/from16 v5, p2

    .line 82
    .line 83
    move-object v6, v13

    .line 84
    move/from16 v7, p3

    .line 85
    .line 86
    invoke-interface/range {v2 .. v7}, Landroidx/core/view/NestedScrollingParent2;->onNestedPreScroll(Landroid/view/View;II[II)V

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_6
    if-nez v7, :cond_7

    .line 91
    .line 92
    :try_start_0
    invoke-interface {v2, v3, p1, v5, v13}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :catch_0
    move-exception v0

    .line 97
    move-object v3, v0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v4, "ViewParent "

    .line 101
    .line 102
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v2, " does not implement interface method onNestedPreScroll"

    .line 109
    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const-string v2, "ViewParentCompat"

    .line 118
    .line 119
    invoke-static {v2, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .line 121
    .line 122
    :cond_7
    :goto_3
    if-eqz v8, :cond_8

    .line 123
    .line 124
    iget-object v0, v1, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 125
    .line 126
    invoke-virtual {v0, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 127
    .line 128
    .line 129
    aget v0, v8, v9

    .line 130
    .line 131
    sub-int/2addr v0, v11

    .line 132
    aput v0, v8, v9

    .line 133
    .line 134
    aget v0, v8, v10

    .line 135
    .line 136
    sub-int/2addr v0, v12

    .line 137
    aput v0, v8, v10

    .line 138
    .line 139
    :cond_8
    aget v0, v13, v9

    .line 140
    .line 141
    if-nez v0, :cond_9

    .line 142
    .line 143
    aget v0, v13, v10

    .line 144
    .line 145
    if-eqz v0, :cond_a

    .line 146
    .line 147
    :cond_9
    move v9, v10

    .line 148
    :cond_a
    :goto_4
    return v9
.end method

.method public final dispatchNestedScrollInternal(IIII[II[I)Z
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v10, p5

    .line 3
    .line 4
    move/from16 v0, p6

    .line 5
    .line 6
    iget-boolean v2, v1, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 7
    .line 8
    const/4 v11, 0x0

    .line 9
    if-eqz v2, :cond_a

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    .line 12
    .line 13
    .line 14
    move-result-object v8

    .line 15
    if-nez v8, :cond_0

    .line 16
    .line 17
    return v11

    .line 18
    :cond_0
    const/4 v12, 0x1

    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    if-nez p2, :cond_2

    .line 22
    .line 23
    if-nez p3, :cond_2

    .line 24
    .line 25
    if-eqz p4, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    if-eqz v10, :cond_a

    .line 29
    .line 30
    aput v11, v10, v11

    .line 31
    .line 32
    aput v11, v10, v12

    .line 33
    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :cond_2
    :goto_0
    if-eqz v10, :cond_3

    .line 37
    .line 38
    iget-object v2, v1, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {v2, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 41
    .line 42
    .line 43
    aget v2, v10, v11

    .line 44
    .line 45
    aget v3, v10, v12

    .line 46
    .line 47
    move v13, v2

    .line 48
    move v14, v3

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    move v13, v11

    .line 51
    move v14, v13

    .line 52
    :goto_1
    if-nez p7, :cond_5

    .line 53
    .line 54
    iget-object v2, v1, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 55
    .line 56
    if-nez v2, :cond_4

    .line 57
    .line 58
    const/4 v2, 0x2

    .line 59
    new-array v2, v2, [I

    .line 60
    .line 61
    iput-object v2, v1, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 62
    .line 63
    :cond_4
    iget-object v2, v1, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 64
    .line 65
    aput v11, v2, v11

    .line 66
    .line 67
    aput v11, v2, v12

    .line 68
    .line 69
    move-object v9, v2

    .line 70
    goto :goto_2

    .line 71
    :cond_5
    move-object/from16 v9, p7

    .line 72
    .line 73
    :goto_2
    iget-object v3, v1, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 74
    .line 75
    instance-of v2, v8, Landroidx/core/view/NestedScrollingParent3;

    .line 76
    .line 77
    if-eqz v2, :cond_6

    .line 78
    .line 79
    move-object v2, v8

    .line 80
    check-cast v2, Landroidx/core/view/NestedScrollingParent3;

    .line 81
    .line 82
    move/from16 v4, p1

    .line 83
    .line 84
    move/from16 v5, p2

    .line 85
    .line 86
    move/from16 v6, p3

    .line 87
    .line 88
    move/from16 v7, p4

    .line 89
    .line 90
    move/from16 v8, p6

    .line 91
    .line 92
    invoke-interface/range {v2 .. v9}, Landroidx/core/view/NestedScrollingParent3;->onNestedScroll(Landroid/view/View;IIIII[I)V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_6
    aget v2, v9, v11

    .line 97
    .line 98
    add-int v2, v2, p3

    .line 99
    .line 100
    aput v2, v9, v11

    .line 101
    .line 102
    aget v2, v9, v12

    .line 103
    .line 104
    add-int v2, v2, p4

    .line 105
    .line 106
    aput v2, v9, v12

    .line 107
    .line 108
    instance-of v2, v8, Landroidx/core/view/NestedScrollingParent2;

    .line 109
    .line 110
    if-eqz v2, :cond_7

    .line 111
    .line 112
    move-object v2, v8

    .line 113
    check-cast v2, Landroidx/core/view/NestedScrollingParent2;

    .line 114
    .line 115
    move/from16 v4, p1

    .line 116
    .line 117
    move/from16 v5, p2

    .line 118
    .line 119
    move/from16 v6, p3

    .line 120
    .line 121
    move/from16 v7, p4

    .line 122
    .line 123
    move/from16 v8, p6

    .line 124
    .line 125
    invoke-interface/range {v2 .. v8}, Landroidx/core/view/NestedScrollingParent2;->onNestedScroll(Landroid/view/View;IIIII)V

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_7
    if-nez v0, :cond_8

    .line 130
    .line 131
    move-object v2, v8

    .line 132
    move/from16 v4, p1

    .line 133
    .line 134
    move/from16 v5, p2

    .line 135
    .line 136
    move/from16 v6, p3

    .line 137
    .line 138
    move/from16 v7, p4

    .line 139
    .line 140
    :try_start_0
    invoke-interface/range {v2 .. v7}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :catch_0
    move-exception v0

    .line 145
    move-object v2, v0

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v3, "ViewParent "

    .line 149
    .line 150
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v3, " does not implement interface method onNestedScroll"

    .line 157
    .line 158
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const-string v3, "ViewParentCompat"

    .line 166
    .line 167
    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .line 169
    .line 170
    :cond_8
    :goto_3
    if-eqz v10, :cond_9

    .line 171
    .line 172
    iget-object v0, v1, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 173
    .line 174
    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 175
    .line 176
    .line 177
    aget v0, v10, v11

    .line 178
    .line 179
    sub-int/2addr v0, v13

    .line 180
    aput v0, v10, v11

    .line 181
    .line 182
    aget v0, v10, v12

    .line 183
    .line 184
    sub-int/2addr v0, v14

    .line 185
    aput v0, v10, v12

    .line 186
    .line 187
    :cond_9
    return v12

    .line 188
    :cond_a
    :goto_4
    return v11
.end method

.method public final getNestedScrollingParentForType(I)Landroid/view/ViewParent;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_1
    iget-object p0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    .line 12
    .line 13
    return-object p0
.end method

.method public final hasNestedScrollingParent(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final startNestedScroll(II)Z
    .locals 10

    .line 1
    invoke-virtual {p0, p2}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_9

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v3, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 21
    .line 22
    :goto_0
    if-eqz v0, :cond_9

    .line 23
    .line 24
    iget-object v4, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 25
    .line 26
    instance-of v5, v0, Landroidx/core/view/NestedScrollingParent2;

    .line 27
    .line 28
    const-string v6, "ViewParentCompat"

    .line 29
    .line 30
    const-string v7, "ViewParent "

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    move-object v8, v0

    .line 35
    check-cast v8, Landroidx/core/view/NestedScrollingParent2;

    .line 36
    .line 37
    invoke-interface {v8, v3, v4, p1, p2}, Landroidx/core/view/NestedScrollingParent2;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    if-nez p2, :cond_2

    .line 43
    .line 44
    :try_start_0
    invoke-interface {v0, v3, v4, p1}, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    .line 45
    .line 46
    .line 47
    move-result v4
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception v4

    .line 50
    new-instance v8, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v9, " does not implement interface method onStartNestedScroll"

    .line 59
    .line 60
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    invoke-static {v6, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .line 69
    .line 70
    :cond_2
    move v4, v2

    .line 71
    :goto_1
    if-eqz v4, :cond_7

    .line 72
    .line 73
    if-eqz p2, :cond_4

    .line 74
    .line 75
    if-eq p2, v1, :cond_3

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    iput-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    iput-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    .line 82
    .line 83
    :goto_2
    iget-object p0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 84
    .line 85
    if-eqz v5, :cond_5

    .line 86
    .line 87
    check-cast v0, Landroidx/core/view/NestedScrollingParent2;

    .line 88
    .line 89
    invoke-interface {v0, v3, p0, p1, p2}, Landroidx/core/view/NestedScrollingParent2;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 90
    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_5
    if-nez p2, :cond_6

    .line 94
    .line 95
    :try_start_1
    invoke-interface {v0, v3, p0, p1}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :catch_1
    move-exception p0

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p2, " does not implement interface method onNestedScrollAccepted"

    .line 109
    .line 110
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {v6, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .line 119
    .line 120
    :cond_6
    :goto_3
    return v1

    .line 121
    :cond_7
    instance-of v4, v0, Landroid/view/View;

    .line 122
    .line 123
    if-eqz v4, :cond_8

    .line 124
    .line 125
    move-object v3, v0

    .line 126
    check-cast v3, Landroid/view/View;

    .line 127
    .line 128
    :cond_8
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    goto :goto_0

    .line 133
    :cond_9
    return v2
.end method

.method public final stopNestedScroll(I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 8
    .line 9
    instance-of v2, v0, Landroidx/core/view/NestedScrollingParent2;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    check-cast v0, Landroidx/core/view/NestedScrollingParent2;

    .line 14
    .line 15
    invoke-interface {v0, v1, p1}, Landroidx/core/view/NestedScrollingParent2;->onStopNestedScroll(Landroid/view/View;I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-nez p1, :cond_1

    .line 20
    .line 21
    :try_start_0
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v3, "ViewParent "

    .line 29
    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, " does not implement interface method onStopNestedScroll"

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v2, "ViewParentCompat"

    .line 46
    .line 47
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    if-eq p1, v1, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    iput-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    iput-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    .line 61
    .line 62
    :cond_4
    :goto_1
    return-void
.end method
