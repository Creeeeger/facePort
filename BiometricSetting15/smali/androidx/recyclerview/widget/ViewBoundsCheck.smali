.class public final Landroidx/recyclerview/widget/ViewBoundsCheck;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

.field public final mCallback:Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;

    .line 5
    .line 6
    new-instance p1, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p1, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final findOneViewWithinBoundFlags(IIII)Landroid/view/View;
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->mCallback:Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;

    .line 2
    .line 3
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    goto :goto_0

    .line 15
    :pswitch_0
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :goto_0
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->$r8$classId:I

    .line 22
    .line 23
    packed-switch v2, :pswitch_data_1

    .line 24
    .line 25
    .line 26
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 27
    .line 28
    iget v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 29
    .line 30
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    :goto_1
    sub-int/2addr v3, v2

    .line 35
    goto :goto_2

    .line 36
    :pswitch_1
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 37
    .line 38
    iget v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 39
    .line 40
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    goto :goto_1

    .line 45
    :goto_2
    if-le p2, p1, :cond_0

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    goto :goto_3

    .line 49
    :cond_0
    const/4 v2, -0x1

    .line 50
    :goto_3
    const/4 v4, 0x0

    .line 51
    :goto_4
    if-eq p1, p2, :cond_3

    .line 52
    .line 53
    iget v5, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->$r8$classId:I

    .line 54
    .line 55
    packed-switch v5, :pswitch_data_2

    .line 56
    .line 57
    .line 58
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 59
    .line 60
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    goto :goto_5

    .line 65
    :pswitch_2
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 66
    .line 67
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    :goto_5
    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->$r8$classId:I

    .line 72
    .line 73
    packed-switch v6, :pswitch_data_3

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 81
    .line 82
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 83
    .line 84
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 96
    .line 97
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 98
    .line 99
    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 100
    .line 101
    sub-int/2addr v7, v8

    .line 102
    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 103
    .line 104
    :goto_6
    sub-int/2addr v7, v6

    .line 105
    goto :goto_7

    .line 106
    :pswitch_3
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 111
    .line 112
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 113
    .line 114
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 126
    .line 127
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 128
    .line 129
    iget v8, v8, Landroid/graphics/Rect;->left:I

    .line 130
    .line 131
    sub-int/2addr v7, v8

    .line 132
    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 133
    .line 134
    goto :goto_6

    .line 135
    :goto_7
    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->$r8$classId:I

    .line 136
    .line 137
    packed-switch v6, :pswitch_data_4

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 145
    .line 146
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 147
    .line 148
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 156
    .line 157
    .line 158
    move-result-object v9

    .line 159
    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 160
    .line 161
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 162
    .line 163
    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    .line 164
    .line 165
    add-int/2addr v8, v9

    .line 166
    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 167
    .line 168
    :goto_8
    add-int/2addr v8, v6

    .line 169
    goto :goto_9

    .line 170
    :pswitch_4
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 175
    .line 176
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 177
    .line 178
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 190
    .line 191
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 192
    .line 193
    iget v9, v9, Landroid/graphics/Rect;->right:I

    .line 194
    .line 195
    add-int/2addr v8, v9

    .line 196
    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 197
    .line 198
    goto :goto_8

    .line 199
    :goto_9
    iget-object v6, p0, Landroidx/recyclerview/widget/ViewBoundsCheck;->mBoundFlags:Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;

    .line 200
    .line 201
    iput v1, v6, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    .line 202
    .line 203
    iput v3, v6, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    .line 204
    .line 205
    iput v7, v6, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    .line 206
    .line 207
    iput v8, v6, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    .line 208
    .line 209
    if-eqz p3, :cond_1

    .line 210
    .line 211
    iput p3, v6, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    .line 212
    .line 213
    invoke-virtual {v6}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->boundsMatch()Z

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    if-eqz v7, :cond_1

    .line 218
    .line 219
    return-object v5

    .line 220
    :cond_1
    if-eqz p4, :cond_2

    .line 221
    .line 222
    iput p4, v6, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    .line 223
    .line 224
    invoke-virtual {v6}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->boundsMatch()Z

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    if-eqz v6, :cond_2

    .line 229
    .line 230
    move-object v4, v5

    .line 231
    :cond_2
    add-int/2addr p1, v2

    .line 232
    goto/16 :goto_4

    .line 233
    .line 234
    :cond_3
    return-object v4

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method
