.class public final Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;
.super Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mChainStyle:I

.field public final mWidgets:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getPreviousChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    :goto_0
    move-object v3, p2

    .line 20
    move-object p2, p1

    .line 21
    move-object p1, v3

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getPreviousChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 32
    .line 33
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 34
    .line 35
    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    const/4 v2, 0x1

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    if-ne v0, v2, :cond_2

    .line 45
    .line 46
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move-object v0, v1

    .line 50
    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    iget p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getNextChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :goto_2
    if-eqz p1, :cond_5

    .line 60
    .line 61
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 62
    .line 63
    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 64
    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    if-ne v0, v2, :cond_4

    .line 71
    .line 72
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_4
    move-object v0, v1

    .line 76
    :goto_3
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    iget p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getNextChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    goto :goto_2

    .line 86
    :cond_5
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-eqz p2, :cond_8

    .line 97
    .line 98
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    check-cast p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 103
    .line 104
    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 105
    .line 106
    if-nez v0, :cond_7

    .line 107
    .line 108
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 109
    .line 110
    iput-object p0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_7
    if-ne v0, v2, :cond_6

    .line 114
    .line 115
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 116
    .line 117
    iput-object p0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_8
    iget p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 121
    .line 122
    if-nez p1, :cond_9

    .line 123
    .line 124
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 125
    .line 126
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 127
    .line 128
    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 129
    .line 130
    iget-boolean p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 131
    .line 132
    if-eqz p1, :cond_9

    .line 133
    .line 134
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-le p1, v2, :cond_9

    .line 141
    .line 142
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    sub-int/2addr p2, v2

    .line 149
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 154
    .line 155
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 156
    .line 157
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 158
    .line 159
    :cond_9
    iget p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 160
    .line 161
    if-nez p1, :cond_a

    .line 162
    .line 163
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 164
    .line 165
    iget p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_a
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 169
    .line 170
    iget p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 171
    .line 172
    :goto_5
    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mChainStyle:I

    .line 173
    .line 174
    return-void
.end method


# virtual methods
.method public final apply()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->apply()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-ge v0, v1, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 41
    .line 42
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 43
    .line 44
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 45
    .line 46
    sub-int/2addr v0, v1

    .line 47
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 52
    .line 53
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 54
    .line 55
    iget v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 56
    .line 57
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 58
    .line 59
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 60
    .line 61
    if-nez v4, :cond_5

    .line 62
    .line 63
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 64
    .line 65
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 66
    .line 67
    invoke-static {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getFirstVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    if-eqz v4, :cond_2

    .line 80
    .line 81
    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 82
    .line 83
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    :cond_2
    if-eqz v2, :cond_3

    .line 88
    .line 89
    invoke-static {v6, v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-static {v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getLastVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    if-eqz v2, :cond_4

    .line 105
    .line 106
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 107
    .line 108
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    :cond_4
    if-eqz v1, :cond_9

    .line 113
    .line 114
    neg-int v0, v0

    .line 115
    invoke-static {v5, v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 120
    .line 121
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 122
    .line 123
    invoke-static {v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getFirstVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    if-eqz v4, :cond_6

    .line 136
    .line 137
    iget-object v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 138
    .line 139
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    :cond_6
    if-eqz v3, :cond_7

    .line 144
    .line 145
    invoke-static {v6, v3, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 146
    .line 147
    .line 148
    :cond_7
    invoke-static {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->getLastVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    if-eqz v2, :cond_8

    .line 161
    .line 162
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 163
    .line 164
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    :cond_8
    if-eqz v1, :cond_9

    .line 169
    .line 170
    neg-int v0, v0

    .line 171
    invoke-static {v5, v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V

    .line 172
    .line 173
    .line 174
    :cond_9
    :goto_1
    iput-object p0, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 175
    .line 176
    iput-object p0, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 177
    .line 178
    return-void
.end method

.method public final applyToWidget()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->applyToWidget()V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mRunGroup:Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    .line 3
    .line 4
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->clear()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public final getFirstVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 17
    .line 18
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 19
    .line 20
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 21
    .line 22
    const/16 v3, 0x8

    .line 23
    .line 24
    if-eq v2, v3, :cond_0

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public final getLastVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 18
    .line 19
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 20
    .line 21
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 22
    .line 23
    const/16 v3, 0x8

    .line 24
    .line 25
    if-eq v2, v3, :cond_0

    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method public final getWrapDimension()J
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v0, :cond_0

    .line 11
    .line 12
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 19
    .line 20
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 21
    .line 22
    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 23
    .line 24
    int-to-long v5, v5

    .line 25
    add-long/2addr v1, v5

    .line 26
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getWrapDimension()J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    add-long/2addr v5, v1

    .line 31
    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 32
    .line 33
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 34
    .line 35
    int-to-long v1, v1

    .line 36
    add-long/2addr v1, v5

    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-wide v1
.end method

.method public final supportsWrapComputation()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->supportsWrapComputation()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x1

    .line 30
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ChainRun "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string v1, "horizontal : "

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v1, "vertical : "

    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 37
    .line 38
    const-string v2, "<"

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, "> "

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method

.method public final update(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 4
    .line 5
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 6
    .line 7
    if-eqz v2, :cond_57

    .line 8
    .line 9
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 10
    .line 11
    iget-boolean v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    goto/16 :goto_34

    .line 16
    .line 17
    :cond_0
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 18
    .line 19
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 20
    .line 21
    instance-of v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 26
    .line 27
    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v3, 0x0

    .line 31
    :goto_0
    iget v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 32
    .line 33
    iget v6, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 34
    .line 35
    sub-int/2addr v4, v6

    .line 36
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const/4 v7, 0x0

    .line 43
    :goto_1
    const/4 v8, -0x1

    .line 44
    const/16 v9, 0x8

    .line 45
    .line 46
    if-ge v7, v6, :cond_2

    .line 47
    .line 48
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    check-cast v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 55
    .line 56
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 57
    .line 58
    iget v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 59
    .line 60
    if-ne v10, v9, :cond_3

    .line 61
    .line 62
    add-int/lit8 v7, v7, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move v7, v8

    .line 66
    :cond_3
    add-int/lit8 v10, v6, -0x1

    .line 67
    .line 68
    move v11, v10

    .line 69
    :goto_2
    if-ltz v11, :cond_5

    .line 70
    .line 71
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    check-cast v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 78
    .line 79
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 80
    .line 81
    iget v12, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 82
    .line 83
    if-ne v12, v9, :cond_4

    .line 84
    .line 85
    add-int/lit8 v11, v11, -0x1

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    move v8, v11

    .line 89
    :cond_5
    const/4 v11, 0x0

    .line 90
    :goto_3
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 91
    .line 92
    const/4 v14, 0x2

    .line 93
    if-ge v11, v14, :cond_14

    .line 94
    .line 95
    const/4 v5, 0x0

    .line 96
    const/4 v14, 0x0

    .line 97
    const/16 v16, 0x0

    .line 98
    .line 99
    const/16 v17, 0x0

    .line 100
    .line 101
    const/16 v18, 0x0

    .line 102
    .line 103
    :goto_4
    if-ge v5, v6, :cond_11

    .line 104
    .line 105
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    check-cast v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 112
    .line 113
    iget-object v15, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 114
    .line 115
    move/from16 v20, v6

    .line 116
    .line 117
    iget v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 118
    .line 119
    if-ne v6, v9, :cond_6

    .line 120
    .line 121
    move/from16 v23, v7

    .line 122
    .line 123
    goto/16 :goto_a

    .line 124
    .line 125
    :cond_6
    add-int/lit8 v17, v17, 0x1

    .line 126
    .line 127
    if-lez v5, :cond_7

    .line 128
    .line 129
    if-lt v5, v7, :cond_7

    .line 130
    .line 131
    iget-object v6, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 132
    .line 133
    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 134
    .line 135
    add-int/2addr v14, v6

    .line 136
    :cond_7
    iget-object v6, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 137
    .line 138
    iget v9, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 139
    .line 140
    move/from16 v21, v9

    .line 141
    .line 142
    iget-object v9, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 143
    .line 144
    if-eq v9, v13, :cond_8

    .line 145
    .line 146
    const/4 v9, 0x1

    .line 147
    goto :goto_5

    .line 148
    :cond_8
    const/4 v9, 0x0

    .line 149
    :goto_5
    if-eqz v9, :cond_b

    .line 150
    .line 151
    iget v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 152
    .line 153
    move/from16 v22, v9

    .line 154
    .line 155
    if-nez v6, :cond_9

    .line 156
    .line 157
    iget-object v9, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 158
    .line 159
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 160
    .line 161
    iget-boolean v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 162
    .line 163
    if-nez v9, :cond_9

    .line 164
    .line 165
    return-void

    .line 166
    :cond_9
    const/4 v9, 0x1

    .line 167
    if-ne v6, v9, :cond_a

    .line 168
    .line 169
    iget-object v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 170
    .line 171
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 172
    .line 173
    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 174
    .line 175
    if-nez v6, :cond_a

    .line 176
    .line 177
    return-void

    .line 178
    :cond_a
    move/from16 v23, v7

    .line 179
    .line 180
    goto :goto_7

    .line 181
    :cond_b
    move/from16 v23, v7

    .line 182
    .line 183
    move/from16 v22, v9

    .line 184
    .line 185
    const/4 v9, 0x1

    .line 186
    iget v7, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    .line 187
    .line 188
    if-ne v7, v9, :cond_c

    .line 189
    .line 190
    if-nez v11, :cond_c

    .line 191
    .line 192
    iget v9, v6, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 193
    .line 194
    add-int/lit8 v16, v16, 0x1

    .line 195
    .line 196
    :goto_6
    const/16 v22, 0x1

    .line 197
    .line 198
    goto :goto_8

    .line 199
    :cond_c
    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 200
    .line 201
    if-eqz v6, :cond_d

    .line 202
    .line 203
    move/from16 v9, v21

    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_d
    :goto_7
    move/from16 v9, v21

    .line 207
    .line 208
    :goto_8
    if-nez v22, :cond_e

    .line 209
    .line 210
    add-int/lit8 v16, v16, 0x1

    .line 211
    .line 212
    iget-object v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    .line 213
    .line 214
    iget v7, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 215
    .line 216
    aget v6, v6, v7

    .line 217
    .line 218
    const/4 v7, 0x0

    .line 219
    cmpl-float v9, v6, v7

    .line 220
    .line 221
    if-ltz v9, :cond_f

    .line 222
    .line 223
    add-float v18, v18, v6

    .line 224
    .line 225
    goto :goto_9

    .line 226
    :cond_e
    add-int/2addr v14, v9

    .line 227
    :cond_f
    :goto_9
    if-ge v5, v10, :cond_10

    .line 228
    .line 229
    if-ge v5, v8, :cond_10

    .line 230
    .line 231
    iget-object v6, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 232
    .line 233
    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 234
    .line 235
    neg-int v6, v6

    .line 236
    add-int/2addr v14, v6

    .line 237
    :cond_10
    :goto_a
    add-int/lit8 v5, v5, 0x1

    .line 238
    .line 239
    move/from16 v6, v20

    .line 240
    .line 241
    move/from16 v7, v23

    .line 242
    .line 243
    const/16 v9, 0x8

    .line 244
    .line 245
    goto/16 :goto_4

    .line 246
    .line 247
    :cond_11
    move/from16 v20, v6

    .line 248
    .line 249
    move/from16 v23, v7

    .line 250
    .line 251
    if-lt v14, v4, :cond_13

    .line 252
    .line 253
    if-nez v16, :cond_12

    .line 254
    .line 255
    goto :goto_b

    .line 256
    :cond_12
    add-int/lit8 v11, v11, 0x1

    .line 257
    .line 258
    move/from16 v6, v20

    .line 259
    .line 260
    move/from16 v7, v23

    .line 261
    .line 262
    const/16 v9, 0x8

    .line 263
    .line 264
    goto/16 :goto_3

    .line 265
    .line 266
    :cond_13
    :goto_b
    move/from16 v5, v16

    .line 267
    .line 268
    move/from16 v6, v17

    .line 269
    .line 270
    goto :goto_c

    .line 271
    :cond_14
    move/from16 v20, v6

    .line 272
    .line 273
    move/from16 v23, v7

    .line 274
    .line 275
    const/4 v5, 0x0

    .line 276
    const/4 v6, 0x0

    .line 277
    const/4 v14, 0x0

    .line 278
    const/16 v18, 0x0

    .line 279
    .line 280
    :goto_c
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 281
    .line 282
    if-eqz v3, :cond_15

    .line 283
    .line 284
    iget v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 285
    .line 286
    :cond_15
    const/high16 v2, 0x3f000000    # 0.5f

    .line 287
    .line 288
    if-le v14, v4, :cond_17

    .line 289
    .line 290
    const/high16 v7, 0x40000000    # 2.0f

    .line 291
    .line 292
    if-eqz v3, :cond_16

    .line 293
    .line 294
    sub-int v9, v14, v4

    .line 295
    .line 296
    int-to-float v9, v9

    .line 297
    div-float/2addr v9, v7

    .line 298
    add-float/2addr v9, v2

    .line 299
    float-to-int v7, v9

    .line 300
    add-int/2addr v1, v7

    .line 301
    goto :goto_d

    .line 302
    :cond_16
    sub-int v9, v14, v4

    .line 303
    .line 304
    int-to-float v9, v9

    .line 305
    div-float/2addr v9, v7

    .line 306
    add-float/2addr v9, v2

    .line 307
    float-to-int v7, v9

    .line 308
    sub-int/2addr v1, v7

    .line 309
    :cond_17
    :goto_d
    if-lez v5, :cond_26

    .line 310
    .line 311
    sub-int v7, v4, v14

    .line 312
    .line 313
    int-to-float v7, v7

    .line 314
    int-to-float v9, v5

    .line 315
    div-float v9, v7, v9

    .line 316
    .line 317
    add-float/2addr v9, v2

    .line 318
    float-to-int v9, v9

    .line 319
    move/from16 v11, v20

    .line 320
    .line 321
    const/4 v12, 0x0

    .line 322
    const/4 v15, 0x0

    .line 323
    :goto_e
    if-ge v12, v11, :cond_1f

    .line 324
    .line 325
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 326
    .line 327
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 332
    .line 333
    move/from16 v17, v9

    .line 334
    .line 335
    iget-object v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 336
    .line 337
    move/from16 v20, v14

    .line 338
    .line 339
    iget v14, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 340
    .line 341
    move/from16 v21, v1

    .line 342
    .line 343
    const/16 v1, 0x8

    .line 344
    .line 345
    if-ne v14, v1, :cond_19

    .line 346
    .line 347
    :cond_18
    move/from16 v24, v7

    .line 348
    .line 349
    move-object/from16 v22, v13

    .line 350
    .line 351
    goto :goto_12

    .line 352
    :cond_19
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 353
    .line 354
    if-ne v1, v13, :cond_18

    .line 355
    .line 356
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 357
    .line 358
    iget-boolean v14, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 359
    .line 360
    if-nez v14, :cond_18

    .line 361
    .line 362
    const/4 v14, 0x0

    .line 363
    cmpl-float v19, v18, v14

    .line 364
    .line 365
    if-lez v19, :cond_1a

    .line 366
    .line 367
    iget-object v14, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    .line 368
    .line 369
    move-object/from16 v22, v13

    .line 370
    .line 371
    iget v13, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 372
    .line 373
    aget v13, v14, v13

    .line 374
    .line 375
    mul-float/2addr v13, v7

    .line 376
    div-float v13, v13, v18

    .line 377
    .line 378
    const/high16 v14, 0x3f000000    # 0.5f

    .line 379
    .line 380
    add-float/2addr v13, v14

    .line 381
    float-to-int v13, v13

    .line 382
    goto :goto_f

    .line 383
    :cond_1a
    move-object/from16 v22, v13

    .line 384
    .line 385
    move/from16 v13, v17

    .line 386
    .line 387
    :goto_f
    iget v14, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 388
    .line 389
    if-nez v14, :cond_1b

    .line 390
    .line 391
    iget v14, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 392
    .line 393
    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 394
    .line 395
    goto :goto_10

    .line 396
    :cond_1b
    iget v14, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 397
    .line 398
    iget v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 399
    .line 400
    :goto_10
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    .line 401
    .line 402
    move/from16 v24, v7

    .line 403
    .line 404
    const/4 v7, 0x1

    .line 405
    if-ne v2, v7, :cond_1c

    .line 406
    .line 407
    iget v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 408
    .line 409
    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    goto :goto_11

    .line 414
    :cond_1c
    move v2, v13

    .line 415
    :goto_11
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    .line 416
    .line 417
    .line 418
    move-result v2

    .line 419
    if-lez v14, :cond_1d

    .line 420
    .line 421
    invoke-static {v14, v2}, Ljava/lang/Math;->min(II)I

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    :cond_1d
    if-eq v2, v13, :cond_1e

    .line 426
    .line 427
    add-int/lit8 v15, v15, 0x1

    .line 428
    .line 429
    move v13, v2

    .line 430
    :cond_1e
    invoke-virtual {v1, v13}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 431
    .line 432
    .line 433
    :goto_12
    add-int/lit8 v12, v12, 0x1

    .line 434
    .line 435
    move/from16 v9, v17

    .line 436
    .line 437
    move/from16 v14, v20

    .line 438
    .line 439
    move/from16 v1, v21

    .line 440
    .line 441
    move-object/from16 v13, v22

    .line 442
    .line 443
    move/from16 v7, v24

    .line 444
    .line 445
    const/high16 v2, 0x3f000000    # 0.5f

    .line 446
    .line 447
    goto :goto_e

    .line 448
    :cond_1f
    move/from16 v21, v1

    .line 449
    .line 450
    move-object/from16 v22, v13

    .line 451
    .line 452
    move/from16 v20, v14

    .line 453
    .line 454
    if-lez v15, :cond_24

    .line 455
    .line 456
    sub-int/2addr v5, v15

    .line 457
    const/4 v1, 0x0

    .line 458
    const/4 v14, 0x0

    .line 459
    :goto_13
    if-ge v1, v11, :cond_23

    .line 460
    .line 461
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 462
    .line 463
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 468
    .line 469
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 470
    .line 471
    iget v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 472
    .line 473
    const/16 v9, 0x8

    .line 474
    .line 475
    if-ne v7, v9, :cond_20

    .line 476
    .line 477
    move/from16 v7, v23

    .line 478
    .line 479
    goto :goto_14

    .line 480
    :cond_20
    move/from16 v7, v23

    .line 481
    .line 482
    if-lez v1, :cond_21

    .line 483
    .line 484
    if-lt v1, v7, :cond_21

    .line 485
    .line 486
    iget-object v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 487
    .line 488
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 489
    .line 490
    add-int/2addr v14, v9

    .line 491
    :cond_21
    iget-object v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 492
    .line 493
    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 494
    .line 495
    add-int/2addr v14, v9

    .line 496
    if-ge v1, v10, :cond_22

    .line 497
    .line 498
    if-ge v1, v8, :cond_22

    .line 499
    .line 500
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 501
    .line 502
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 503
    .line 504
    neg-int v2, v2

    .line 505
    add-int/2addr v14, v2

    .line 506
    :cond_22
    :goto_14
    add-int/lit8 v1, v1, 0x1

    .line 507
    .line 508
    move/from16 v23, v7

    .line 509
    .line 510
    goto :goto_13

    .line 511
    :cond_23
    move/from16 v7, v23

    .line 512
    .line 513
    goto :goto_15

    .line 514
    :cond_24
    move/from16 v7, v23

    .line 515
    .line 516
    move/from16 v14, v20

    .line 517
    .line 518
    :goto_15
    iget v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mChainStyle:I

    .line 519
    .line 520
    const/4 v2, 0x2

    .line 521
    if-ne v1, v2, :cond_25

    .line 522
    .line 523
    if-nez v15, :cond_25

    .line 524
    .line 525
    const/4 v1, 0x0

    .line 526
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mChainStyle:I

    .line 527
    .line 528
    goto :goto_16

    .line 529
    :cond_25
    const/4 v1, 0x0

    .line 530
    goto :goto_16

    .line 531
    :cond_26
    move/from16 v21, v1

    .line 532
    .line 533
    move-object/from16 v22, v13

    .line 534
    .line 535
    move/from16 v11, v20

    .line 536
    .line 537
    move/from16 v7, v23

    .line 538
    .line 539
    const/4 v1, 0x0

    .line 540
    const/4 v2, 0x2

    .line 541
    move/from16 v20, v14

    .line 542
    .line 543
    :goto_16
    if-le v14, v4, :cond_27

    .line 544
    .line 545
    iput v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mChainStyle:I

    .line 546
    .line 547
    :cond_27
    if-lez v6, :cond_28

    .line 548
    .line 549
    if-nez v5, :cond_28

    .line 550
    .line 551
    if-ne v7, v8, :cond_28

    .line 552
    .line 553
    iput v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mChainStyle:I

    .line 554
    .line 555
    :cond_28
    iget v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mChainStyle:I

    .line 556
    .line 557
    const/4 v9, 0x1

    .line 558
    if-ne v2, v9, :cond_39

    .line 559
    .line 560
    if-le v6, v9, :cond_29

    .line 561
    .line 562
    sub-int/2addr v4, v14

    .line 563
    sub-int/2addr v6, v9

    .line 564
    div-int/2addr v4, v6

    .line 565
    goto :goto_17

    .line 566
    :cond_29
    if-ne v6, v9, :cond_2a

    .line 567
    .line 568
    sub-int/2addr v4, v14

    .line 569
    const/4 v2, 0x2

    .line 570
    div-int/2addr v4, v2

    .line 571
    goto :goto_17

    .line 572
    :cond_2a
    move v4, v1

    .line 573
    :goto_17
    if-lez v5, :cond_2b

    .line 574
    .line 575
    move v4, v1

    .line 576
    :cond_2b
    move v5, v1

    .line 577
    move/from16 v1, v21

    .line 578
    .line 579
    :goto_18
    if-ge v5, v11, :cond_57

    .line 580
    .line 581
    if-eqz v3, :cond_2c

    .line 582
    .line 583
    add-int/lit8 v2, v5, 0x1

    .line 584
    .line 585
    sub-int v6, v11, v2

    .line 586
    .line 587
    goto :goto_19

    .line 588
    :cond_2c
    move v6, v5

    .line 589
    :goto_19
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 590
    .line 591
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v2

    .line 595
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 596
    .line 597
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 598
    .line 599
    iget v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 600
    .line 601
    iget-object v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 602
    .line 603
    iget-object v12, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 604
    .line 605
    const/16 v13, 0x8

    .line 606
    .line 607
    if-ne v6, v13, :cond_2d

    .line 608
    .line 609
    invoke-virtual {v12, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v9, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 613
    .line 614
    .line 615
    move/from16 p1, v4

    .line 616
    .line 617
    move-object/from16 v15, v22

    .line 618
    .line 619
    goto :goto_21

    .line 620
    :cond_2d
    if-lez v5, :cond_2f

    .line 621
    .line 622
    if-eqz v3, :cond_2e

    .line 623
    .line 624
    sub-int/2addr v1, v4

    .line 625
    goto :goto_1a

    .line 626
    :cond_2e
    add-int/2addr v1, v4

    .line 627
    :cond_2f
    :goto_1a
    if-lez v5, :cond_31

    .line 628
    .line 629
    if-lt v5, v7, :cond_31

    .line 630
    .line 631
    if-eqz v3, :cond_30

    .line 632
    .line 633
    iget v6, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 634
    .line 635
    sub-int/2addr v1, v6

    .line 636
    goto :goto_1b

    .line 637
    :cond_30
    iget v6, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 638
    .line 639
    add-int/2addr v1, v6

    .line 640
    :cond_31
    :goto_1b
    if-eqz v3, :cond_32

    .line 641
    .line 642
    invoke-virtual {v9, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 643
    .line 644
    .line 645
    goto :goto_1c

    .line 646
    :cond_32
    invoke-virtual {v12, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 647
    .line 648
    .line 649
    :goto_1c
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 650
    .line 651
    iget v13, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 652
    .line 653
    iget-object v14, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 654
    .line 655
    move-object/from16 v15, v22

    .line 656
    .line 657
    if-ne v14, v15, :cond_33

    .line 658
    .line 659
    iget v14, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    .line 660
    .line 661
    move/from16 p1, v4

    .line 662
    .line 663
    const/4 v4, 0x1

    .line 664
    if-ne v14, v4, :cond_34

    .line 665
    .line 666
    iget v13, v6, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 667
    .line 668
    goto :goto_1d

    .line 669
    :cond_33
    move/from16 p1, v4

    .line 670
    .line 671
    :cond_34
    :goto_1d
    if-eqz v3, :cond_35

    .line 672
    .line 673
    sub-int/2addr v1, v13

    .line 674
    goto :goto_1e

    .line 675
    :cond_35
    add-int/2addr v1, v13

    .line 676
    :goto_1e
    if-eqz v3, :cond_36

    .line 677
    .line 678
    invoke-virtual {v12, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 679
    .line 680
    .line 681
    :goto_1f
    const/4 v4, 0x1

    .line 682
    goto :goto_20

    .line 683
    :cond_36
    invoke-virtual {v9, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 684
    .line 685
    .line 686
    goto :goto_1f

    .line 687
    :goto_20
    iput-boolean v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mResolved:Z

    .line 688
    .line 689
    if-ge v5, v10, :cond_38

    .line 690
    .line 691
    if-ge v5, v8, :cond_38

    .line 692
    .line 693
    if-eqz v3, :cond_37

    .line 694
    .line 695
    iget v2, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 696
    .line 697
    neg-int v2, v2

    .line 698
    sub-int/2addr v1, v2

    .line 699
    goto :goto_21

    .line 700
    :cond_37
    iget v2, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 701
    .line 702
    neg-int v2, v2

    .line 703
    add-int/2addr v1, v2

    .line 704
    :cond_38
    :goto_21
    add-int/lit8 v5, v5, 0x1

    .line 705
    .line 706
    move/from16 v4, p1

    .line 707
    .line 708
    move-object/from16 v22, v15

    .line 709
    .line 710
    goto/16 :goto_18

    .line 711
    .line 712
    :cond_39
    move-object/from16 v15, v22

    .line 713
    .line 714
    if-nez v2, :cond_46

    .line 715
    .line 716
    sub-int/2addr v4, v14

    .line 717
    const/4 v2, 0x1

    .line 718
    add-int/2addr v6, v2

    .line 719
    div-int/2addr v4, v6

    .line 720
    if-lez v5, :cond_3a

    .line 721
    .line 722
    move v4, v1

    .line 723
    :cond_3a
    move v5, v1

    .line 724
    move/from16 v1, v21

    .line 725
    .line 726
    :goto_22
    if-ge v5, v11, :cond_57

    .line 727
    .line 728
    if-eqz v3, :cond_3b

    .line 729
    .line 730
    add-int/lit8 v2, v5, 0x1

    .line 731
    .line 732
    sub-int v6, v11, v2

    .line 733
    .line 734
    goto :goto_23

    .line 735
    :cond_3b
    move v6, v5

    .line 736
    :goto_23
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 737
    .line 738
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object v2

    .line 742
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 743
    .line 744
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 745
    .line 746
    iget v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 747
    .line 748
    iget-object v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 749
    .line 750
    iget-object v12, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 751
    .line 752
    const/16 v13, 0x8

    .line 753
    .line 754
    if-ne v6, v13, :cond_3c

    .line 755
    .line 756
    invoke-virtual {v12, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 757
    .line 758
    .line 759
    invoke-virtual {v9, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 760
    .line 761
    .line 762
    goto :goto_29

    .line 763
    :cond_3c
    if-eqz v3, :cond_3d

    .line 764
    .line 765
    sub-int/2addr v1, v4

    .line 766
    goto :goto_24

    .line 767
    :cond_3d
    add-int/2addr v1, v4

    .line 768
    :goto_24
    if-lez v5, :cond_3f

    .line 769
    .line 770
    if-lt v5, v7, :cond_3f

    .line 771
    .line 772
    if-eqz v3, :cond_3e

    .line 773
    .line 774
    iget v6, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 775
    .line 776
    sub-int/2addr v1, v6

    .line 777
    goto :goto_25

    .line 778
    :cond_3e
    iget v6, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 779
    .line 780
    add-int/2addr v1, v6

    .line 781
    :cond_3f
    :goto_25
    if-eqz v3, :cond_40

    .line 782
    .line 783
    invoke-virtual {v9, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 784
    .line 785
    .line 786
    goto :goto_26

    .line 787
    :cond_40
    invoke-virtual {v12, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 788
    .line 789
    .line 790
    :goto_26
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 791
    .line 792
    iget v13, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 793
    .line 794
    iget-object v14, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 795
    .line 796
    if-ne v14, v15, :cond_41

    .line 797
    .line 798
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    .line 799
    .line 800
    const/4 v14, 0x1

    .line 801
    if-ne v2, v14, :cond_41

    .line 802
    .line 803
    iget v2, v6, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 804
    .line 805
    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    .line 806
    .line 807
    .line 808
    move-result v13

    .line 809
    :cond_41
    if-eqz v3, :cond_42

    .line 810
    .line 811
    sub-int/2addr v1, v13

    .line 812
    goto :goto_27

    .line 813
    :cond_42
    add-int/2addr v1, v13

    .line 814
    :goto_27
    if-eqz v3, :cond_43

    .line 815
    .line 816
    invoke-virtual {v12, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 817
    .line 818
    .line 819
    goto :goto_28

    .line 820
    :cond_43
    invoke-virtual {v9, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 821
    .line 822
    .line 823
    :goto_28
    if-ge v5, v10, :cond_45

    .line 824
    .line 825
    if-ge v5, v8, :cond_45

    .line 826
    .line 827
    if-eqz v3, :cond_44

    .line 828
    .line 829
    iget v2, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 830
    .line 831
    neg-int v2, v2

    .line 832
    sub-int/2addr v1, v2

    .line 833
    goto :goto_29

    .line 834
    :cond_44
    iget v2, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 835
    .line 836
    neg-int v2, v2

    .line 837
    add-int/2addr v1, v2

    .line 838
    :cond_45
    :goto_29
    add-int/lit8 v5, v5, 0x1

    .line 839
    .line 840
    goto :goto_22

    .line 841
    :cond_46
    const/4 v6, 0x2

    .line 842
    if-ne v2, v6, :cond_57

    .line 843
    .line 844
    iget v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 845
    .line 846
    if-nez v2, :cond_47

    .line 847
    .line 848
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 849
    .line 850
    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 851
    .line 852
    goto :goto_2a

    .line 853
    :cond_47
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 854
    .line 855
    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 856
    .line 857
    :goto_2a
    if-eqz v3, :cond_48

    .line 858
    .line 859
    const/high16 v6, 0x3f800000    # 1.0f

    .line 860
    .line 861
    sub-float v2, v6, v2

    .line 862
    .line 863
    :cond_48
    sub-int/2addr v4, v14

    .line 864
    int-to-float v4, v4

    .line 865
    mul-float/2addr v4, v2

    .line 866
    const/high16 v2, 0x3f000000    # 0.5f

    .line 867
    .line 868
    add-float/2addr v4, v2

    .line 869
    float-to-int v2, v4

    .line 870
    if-ltz v2, :cond_49

    .line 871
    .line 872
    if-lez v5, :cond_4a

    .line 873
    .line 874
    :cond_49
    move v2, v1

    .line 875
    :cond_4a
    if-eqz v3, :cond_4b

    .line 876
    .line 877
    sub-int v2, v21, v2

    .line 878
    .line 879
    goto :goto_2b

    .line 880
    :cond_4b
    add-int v2, v21, v2

    .line 881
    .line 882
    :goto_2b
    move v5, v1

    .line 883
    :goto_2c
    if-ge v5, v11, :cond_57

    .line 884
    .line 885
    if-eqz v3, :cond_4c

    .line 886
    .line 887
    add-int/lit8 v1, v5, 0x1

    .line 888
    .line 889
    sub-int v6, v11, v1

    .line 890
    .line 891
    goto :goto_2d

    .line 892
    :cond_4c
    move v6, v5

    .line 893
    :goto_2d
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->mWidgets:Ljava/util/ArrayList;

    .line 894
    .line 895
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 896
    .line 897
    .line 898
    move-result-object v1

    .line 899
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 900
    .line 901
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 902
    .line 903
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 904
    .line 905
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 906
    .line 907
    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 908
    .line 909
    const/16 v12, 0x8

    .line 910
    .line 911
    if-ne v4, v12, :cond_4d

    .line 912
    .line 913
    invoke-virtual {v9, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 914
    .line 915
    .line 916
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 917
    .line 918
    .line 919
    const/4 v14, 0x1

    .line 920
    goto :goto_33

    .line 921
    :cond_4d
    if-lez v5, :cond_4f

    .line 922
    .line 923
    if-lt v5, v7, :cond_4f

    .line 924
    .line 925
    if-eqz v3, :cond_4e

    .line 926
    .line 927
    iget v4, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 928
    .line 929
    sub-int/2addr v2, v4

    .line 930
    goto :goto_2e

    .line 931
    :cond_4e
    iget v4, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 932
    .line 933
    add-int/2addr v2, v4

    .line 934
    :cond_4f
    :goto_2e
    if-eqz v3, :cond_50

    .line 935
    .line 936
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 937
    .line 938
    .line 939
    goto :goto_2f

    .line 940
    :cond_50
    invoke-virtual {v9, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 941
    .line 942
    .line 943
    :goto_2f
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 944
    .line 945
    iget v13, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 946
    .line 947
    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mDimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 948
    .line 949
    if-ne v14, v15, :cond_51

    .line 950
    .line 951
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    .line 952
    .line 953
    const/4 v14, 0x1

    .line 954
    if-ne v1, v14, :cond_52

    .line 955
    .line 956
    iget v13, v4, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 957
    .line 958
    goto :goto_30

    .line 959
    :cond_51
    const/4 v14, 0x1

    .line 960
    :cond_52
    :goto_30
    if-eqz v3, :cond_53

    .line 961
    .line 962
    sub-int/2addr v2, v13

    .line 963
    goto :goto_31

    .line 964
    :cond_53
    add-int/2addr v2, v13

    .line 965
    :goto_31
    if-eqz v3, :cond_54

    .line 966
    .line 967
    invoke-virtual {v9, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 968
    .line 969
    .line 970
    goto :goto_32

    .line 971
    :cond_54
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 972
    .line 973
    .line 974
    :goto_32
    if-ge v5, v10, :cond_56

    .line 975
    .line 976
    if-ge v5, v8, :cond_56

    .line 977
    .line 978
    if-eqz v3, :cond_55

    .line 979
    .line 980
    iget v1, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 981
    .line 982
    neg-int v1, v1

    .line 983
    sub-int/2addr v2, v1

    .line 984
    goto :goto_33

    .line 985
    :cond_55
    iget v1, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    .line 986
    .line 987
    neg-int v1, v1

    .line 988
    add-int/2addr v2, v1

    .line 989
    :cond_56
    :goto_33
    add-int/lit8 v5, v5, 0x1

    .line 990
    .line 991
    goto :goto_2c

    .line 992
    :cond_57
    :goto_34
    return-void
.end method
