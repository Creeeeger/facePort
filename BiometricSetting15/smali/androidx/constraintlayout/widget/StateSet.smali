.class public final Landroidx/constraintlayout/widget/StateSet;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mDefaultState:I

.field public final mStateList:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet;->mDefaultState:I

    .line 6
    .line 7
    new-instance v1, Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 13
    .line 14
    const-string v1, "Error parsing XML resource"

    .line 15
    .line 16
    const-string v2, "ConstraintLayoutStates"

    .line 17
    .line 18
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    sget-object v4, Landroidx/constraintlayout/widget/R$styleable;->StateSet:[I

    .line 23
    .line 24
    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/4 v5, 0x0

    .line 33
    move v6, v5

    .line 34
    :goto_0
    if-ge v6, v4, :cond_1

    .line 35
    .line 36
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-nez v7, :cond_0

    .line 41
    .line 42
    iget v8, p0, Landroidx/constraintlayout/widget/StateSet;->mDefaultState:I

    .line 43
    .line 44
    invoke-virtual {v3, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    iput v7, p0, Landroidx/constraintlayout/widget/StateSet;->mDefaultState:I

    .line 49
    .line 50
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    .line 55
    .line 56
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 57
    .line 58
    .line 59
    move-result v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    const/4 v4, 0x0

    .line 61
    :goto_1
    const/4 v6, 0x1

    .line 62
    if-eq v3, v6, :cond_8

    .line 63
    .line 64
    const-string v7, "StateSet"

    .line 65
    .line 66
    const/4 v8, 0x3

    .line 67
    const/4 v9, 0x2

    .line 68
    if-eq v3, v9, :cond_3

    .line 69
    .line 70
    if-eq v3, v8, :cond_2

    .line 71
    .line 72
    goto/16 :goto_4

    .line 73
    .line 74
    :cond_2
    :try_start_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_7

    .line 83
    .line 84
    goto/16 :goto_7

    .line 85
    .line 86
    :catch_0
    move-exception p0

    .line 87
    goto :goto_5

    .line 88
    :catch_1
    move-exception p0

    .line 89
    goto :goto_6

    .line 90
    :cond_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    sparse-switch v10, :sswitch_data_0

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :sswitch_0
    const-string v6, "Variant"

    .line 103
    .line 104
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_4

    .line 109
    .line 110
    move v6, v8

    .line 111
    goto :goto_3

    .line 112
    :sswitch_1
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_4

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :sswitch_2
    const-string v6, "LayoutDescription"

    .line 120
    .line 121
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_4

    .line 126
    .line 127
    move v6, v5

    .line 128
    goto :goto_3

    .line 129
    :sswitch_3
    const-string v6, "State"

    .line 130
    .line 131
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-eqz v3, :cond_4

    .line 136
    .line 137
    move v6, v9

    .line 138
    goto :goto_3

    .line 139
    :cond_4
    :goto_2
    move v6, v0

    .line 140
    :goto_3
    if-eq v6, v9, :cond_6

    .line 141
    .line 142
    if-eq v6, v8, :cond_5

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_5
    new-instance v3, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 146
    .line 147
    invoke-direct {v3, p1, p2}, Landroidx/constraintlayout/widget/StateSet$Variant;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 148
    .line 149
    .line 150
    if-eqz v4, :cond_7

    .line 151
    .line 152
    iget-object v6, v4, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_6
    new-instance v4, Landroidx/constraintlayout/widget/StateSet$State;

    .line 159
    .line 160
    invoke-direct {v4, p1, p2}, Landroidx/constraintlayout/widget/StateSet$State;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 161
    .line 162
    .line 163
    iget-object v3, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 164
    .line 165
    iget v6, v4, Landroidx/constraintlayout/widget/StateSet$State;->mId:I

    .line 166
    .line 167
    invoke-virtual {v3, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    :cond_7
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 171
    .line 172
    .line 173
    move-result v3
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 174
    goto :goto_1

    .line 175
    :goto_5
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    .line 177
    .line 178
    goto :goto_7

    .line 179
    :goto_6
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .line 181
    .line 182
    :cond_8
    :goto_7
    return-void

    .line 183
    :sswitch_data_0
    .sparse-switch
        0x4c7d471 -> :sswitch_3
        0x4d92b252 -> :sswitch_2
        0x526c4e31 -> :sswitch_1
        0x7155a865 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final stateGetConstraintID(I)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    int-to-float v1, v0

    .line 3
    const/4 v2, 0x0

    .line 4
    if-ne v0, p1, :cond_6

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroidx/constraintlayout/widget/StateSet$State;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroidx/constraintlayout/widget/StateSet$State;

    .line 24
    .line 25
    :goto_0
    if-nez p0, :cond_1

    .line 26
    .line 27
    goto/16 :goto_6

    .line 28
    .line 29
    :cond_1
    :goto_1
    iget-object p1, p0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-ge v2, p1, :cond_3

    .line 36
    .line 37
    iget-object p1, p0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 44
    .line 45
    invoke-virtual {p1, v1, v1}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    move v2, v0

    .line 56
    :goto_2
    if-ne v0, v2, :cond_4

    .line 57
    .line 58
    goto :goto_6

    .line 59
    :cond_4
    if-ne v2, v0, :cond_5

    .line 60
    .line 61
    iget p0, p0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    .line 62
    .line 63
    :goto_3
    move v0, p0

    .line 64
    goto :goto_6

    .line 65
    :cond_5
    iget-object p0, p0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 72
    .line 73
    iget p0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_6
    iget-object p0, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    check-cast p0, Landroidx/constraintlayout/widget/StateSet$State;

    .line 83
    .line 84
    if-nez p0, :cond_7

    .line 85
    .line 86
    goto :goto_6

    .line 87
    :cond_7
    :goto_4
    iget-object p1, p0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-ge v2, p1, :cond_9

    .line 94
    .line 95
    iget-object p1, p0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 102
    .line 103
    invoke-virtual {p1, v1, v1}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_8

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_9
    move v2, v0

    .line 114
    :goto_5
    if-ne v2, v0, :cond_a

    .line 115
    .line 116
    iget p0, p0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_a
    iget-object p0, p0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    check-cast p0, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 126
    .line 127
    iget p0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :goto_6
    return v0
.end method
