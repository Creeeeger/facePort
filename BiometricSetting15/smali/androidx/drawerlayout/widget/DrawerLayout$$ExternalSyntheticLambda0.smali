.class public final synthetic Landroidx/drawerlayout/widget/DrawerLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    .line 11
    .line 12
    iget-object v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 13
    .line 14
    iget v1, v1, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    .line 15
    .line 16
    const/4 v2, 0x3

    .line 17
    const/4 v3, 0x1

    .line 18
    iget v4, v0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    if-ne v4, v2, :cond_0

    .line 22
    .line 23
    move v6, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v6, v5

    .line 26
    :goto_0
    const/4 v7, 0x5

    .line 27
    iget-object v8, v0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 28
    .line 29
    if-eqz v6, :cond_2

    .line 30
    .line 31
    invoke-virtual {v8, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v9

    .line 35
    if-eqz v9, :cond_1

    .line 36
    .line 37
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v10

    .line 41
    neg-int v10, v10

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v10, v5

    .line 44
    :goto_1
    add-int/2addr v10, v1

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    invoke-virtual {v8, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    .line 51
    .line 52
    .line 53
    move-result v10

    .line 54
    sub-int/2addr v10, v1

    .line 55
    :goto_2
    if-eqz v9, :cond_8

    .line 56
    .line 57
    if-eqz v6, :cond_3

    .line 58
    .line 59
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-lt v1, v10, :cond_4

    .line 64
    .line 65
    :cond_3
    if-nez v6, :cond_8

    .line 66
    .line 67
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-le v1, v10, :cond_8

    .line 72
    .line 73
    :cond_4
    invoke-virtual {v8, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_8

    .line 78
    .line 79
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 84
    .line 85
    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 86
    .line 87
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    invoke-virtual {v0, v9, v10, v6}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 92
    .line 93
    .line 94
    iput-boolean v3, v1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    .line 95
    .line 96
    invoke-virtual {v8}, Landroid/view/ViewGroup;->invalidate()V

    .line 97
    .line 98
    .line 99
    if-ne v4, v2, :cond_5

    .line 100
    .line 101
    move v2, v7

    .line 102
    :cond_5
    invoke-virtual {v8, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-eqz v0, :cond_6

    .line 107
    .line 108
    invoke-virtual {v8, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 109
    .line 110
    .line 111
    :cond_6
    iget-boolean v0, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 112
    .line 113
    if-nez v0, :cond_8

    .line 114
    .line 115
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 116
    .line 117
    .line 118
    move-result-wide v11

    .line 119
    const/4 v13, 0x3

    .line 120
    const/4 v14, 0x0

    .line 121
    const/4 v15, 0x0

    .line 122
    const/16 v16, 0x0

    .line 123
    .line 124
    move-wide v9, v11

    .line 125
    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    :goto_3
    if-ge v5, v1, :cond_7

    .line 134
    .line 135
    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 140
    .line 141
    .line 142
    add-int/lit8 v5, v5, 0x1

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_7
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 146
    .line 147
    .line 148
    iput-boolean v3, v8, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 149
    .line 150
    :cond_8
    return-void

    .line 151
    :pswitch_0
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 152
    .line 153
    const/4 v1, 0x0

    .line 154
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    nop

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
