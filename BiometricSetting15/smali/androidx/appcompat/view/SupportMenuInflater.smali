.class public final Landroidx/appcompat/view/SupportMenuInflater;
.super Landroid/view/MenuInflater;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

.field public static final ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;


# instance fields
.field public final mActionProviderConstructorArguments:[Ljava/lang/Object;

.field public final mActionViewConstructorArguments:[Ljava/lang/Object;

.field public final mContext:Landroid/content/Context;

.field public mRealOwner:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const-class v2, Landroid/content/Context;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    sput-object v0, Landroidx/appcompat/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 10
    .line 11
    sput-object v0, Landroidx/appcompat/view/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method

.method public static findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p0, Landroid/content/ContextWrapper;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Landroidx/appcompat/view/SupportMenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final inflate(ILandroid/view/Menu;)V
    .locals 6

    .line 1
    const-string v0, "Error inflating menu XML"

    .line 2
    .line 3
    instance-of v1, p2, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_0
    iget-object v3, p0, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    instance-of v3, p2, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    move-object v3, p2

    .line 32
    check-cast v3, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 33
    .line 34
    iget-boolean v4, v3, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    xor-int/2addr v4, v5

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 41
    .line 42
    .line 43
    move v2, v5

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_3

    .line 47
    :catch_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :catch_1
    move-exception p0

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, p1, p2}, Landroidx/appcompat/view/SupportMenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    check-cast p2, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 57
    .line 58
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :goto_1
    :try_start_1
    new-instance p1, Landroid/view/InflateException;

    .line 66
    .line 67
    invoke-direct {p1, v0, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :goto_2
    new-instance p1, Landroid/view/InflateException;

    .line 72
    .line 73
    invoke-direct {p1, v0, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :goto_3
    if-eqz v2, :cond_3

    .line 78
    .line 79
    check-cast p2, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 80
    .line 81
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 82
    .line 83
    .line 84
    :cond_3
    if-eqz v1, :cond_4

    .line 85
    .line 86
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 87
    .line 88
    .line 89
    :cond_4
    throw p0
.end method

.method public final parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-direct {v2, v0, v3}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;-><init>(Landroidx/appcompat/view/SupportMenuInflater;Landroid/view/Menu;)V

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    :goto_0
    const/4 v4, 0x1

    .line 17
    const-string v5, "menu"

    .line 18
    .line 19
    const/4 v6, 0x2

    .line 20
    if-ne v3, v6, :cond_1

    .line 21
    .line 22
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    if-eqz v7, :cond_0

    .line 31
    .line 32
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    const-string v1, "Expecting menu, got "

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-ne v3, v4, :cond_18

    .line 54
    .line 55
    :goto_1
    const/4 v7, 0x0

    .line 56
    move v9, v7

    .line 57
    move v10, v9

    .line 58
    const/4 v11, 0x0

    .line 59
    :goto_2
    if-nez v9, :cond_17

    .line 60
    .line 61
    if-eq v3, v4, :cond_16

    .line 62
    .line 63
    const-string v12, "item"

    .line 64
    .line 65
    const-string v13, "group"

    .line 66
    .line 67
    const/4 v14, 0x3

    .line 68
    if-eq v3, v6, :cond_8

    .line 69
    .line 70
    if-eq v3, v14, :cond_3

    .line 71
    .line 72
    :cond_2
    :goto_3
    move-object/from16 v8, p1

    .line 73
    .line 74
    move v6, v4

    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-eqz v10, :cond_4

    .line 82
    .line 83
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    if-eqz v14, :cond_4

    .line 88
    .line 89
    move-object/from16 v8, p1

    .line 90
    .line 91
    move v6, v4

    .line 92
    move v10, v7

    .line 93
    const/4 v4, 0x0

    .line 94
    const/4 v11, 0x0

    .line 95
    goto/16 :goto_d

    .line 96
    .line 97
    :cond_4
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v13

    .line 101
    if-eqz v13, :cond_5

    .line 102
    .line 103
    iput v7, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupId:I

    .line 104
    .line 105
    iput v7, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 106
    .line 107
    iput v7, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 108
    .line 109
    iput v7, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 110
    .line 111
    iput-boolean v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 112
    .line 113
    iput-boolean v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_5
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    if-eqz v12, :cond_7

    .line 121
    .line 122
    iget-boolean v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 123
    .line 124
    if-nez v3, :cond_2

    .line 125
    .line 126
    iget-object v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroidx/core/view/ActionProvider;

    .line 127
    .line 128
    if-eqz v3, :cond_6

    .line 129
    .line 130
    check-cast v3, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;

    .line 131
    .line 132
    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/view/ActionProvider;

    .line 133
    .line 134
    invoke-virtual {v3}, Landroid/view/ActionProvider;->hasSubMenu()Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_6

    .line 139
    .line 140
    iput-boolean v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 141
    .line 142
    iget-object v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 143
    .line 144
    iget v12, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupId:I

    .line 145
    .line 146
    iget v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemId:I

    .line 147
    .line 148
    iget v14, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    .line 149
    .line 150
    iget-object v15, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 151
    .line 152
    invoke-interface {v3, v12, v13, v14, v15}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {v2, v3}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_6
    iput-boolean v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 165
    .line 166
    iget-object v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 167
    .line 168
    iget v12, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupId:I

    .line 169
    .line 170
    iget v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemId:I

    .line 171
    .line 172
    iget v14, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    .line 173
    .line 174
    iget-object v15, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 175
    .line 176
    invoke-interface {v3, v12, v13, v14, v15}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {v2, v3}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_7
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-eqz v3, :cond_2

    .line 189
    .line 190
    move-object/from16 v8, p1

    .line 191
    .line 192
    move v6, v4

    .line 193
    move v9, v6

    .line 194
    :goto_4
    const/4 v4, 0x0

    .line 195
    goto/16 :goto_d

    .line 196
    .line 197
    :cond_8
    if-eqz v10, :cond_9

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v13

    .line 208
    const/4 v15, 0x5

    .line 209
    const/4 v8, 0x4

    .line 210
    iget-object v6, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    .line 211
    .line 212
    if-eqz v13, :cond_a

    .line 213
    .line 214
    iget-object v3, v6, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    .line 215
    .line 216
    sget-object v6, Landroidx/appcompat/R$styleable;->MenuGroup:[I

    .line 217
    .line 218
    invoke-virtual {v3, v1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-virtual {v3, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    iput v6, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupId:I

    .line 227
    .line 228
    invoke-virtual {v3, v14, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    iput v6, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 233
    .line 234
    invoke-virtual {v3, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    iput v6, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 239
    .line 240
    invoke-virtual {v3, v15, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    iput v6, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 245
    .line 246
    const/4 v6, 0x2

    .line 247
    invoke-virtual {v3, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 248
    .line 249
    .line 250
    move-result v8

    .line 251
    iput-boolean v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 252
    .line 253
    invoke-virtual {v3, v7, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 254
    .line 255
    .line 256
    move-result v6

    .line 257
    iput-boolean v6, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 258
    .line 259
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_3

    .line 263
    .line 264
    :cond_a
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v12

    .line 268
    if-eqz v12, :cond_14

    .line 269
    .line 270
    iget-object v3, v6, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    .line 271
    .line 272
    sget-object v12, Landroidx/appcompat/R$styleable;->MenuItem:[I

    .line 273
    .line 274
    invoke-virtual {v3, v1, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 275
    .line 276
    .line 277
    move-result-object v12

    .line 278
    const/4 v13, 0x2

    .line 279
    invoke-virtual {v12, v13, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    iput v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemId:I

    .line 284
    .line 285
    iget v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 286
    .line 287
    invoke-virtual {v12, v15, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    iget v15, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 292
    .line 293
    const/4 v13, 0x6

    .line 294
    invoke-virtual {v12, v13, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 295
    .line 296
    .line 297
    move-result v13

    .line 298
    const/high16 v15, -0x10000

    .line 299
    .line 300
    and-int/2addr v4, v15

    .line 301
    const v15, 0xffff

    .line 302
    .line 303
    .line 304
    and-int/2addr v13, v15

    .line 305
    or-int/2addr v4, v13

    .line 306
    iput v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    .line 307
    .line 308
    const/4 v4, 0x7

    .line 309
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    iput-object v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 314
    .line 315
    const/16 v4, 0x8

    .line 316
    .line 317
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    iput-object v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 322
    .line 323
    invoke-virtual {v12, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    iput v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconResId:I

    .line 328
    .line 329
    const/16 v4, 0x9

    .line 330
    .line 331
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    if-nez v4, :cond_b

    .line 336
    .line 337
    move v4, v7

    .line 338
    goto :goto_5

    .line 339
    :cond_b
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    .line 340
    .line 341
    .line 342
    move-result v4

    .line 343
    :goto_5
    iput-char v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 344
    .line 345
    const/16 v4, 0x10

    .line 346
    .line 347
    const/16 v13, 0x1000

    .line 348
    .line 349
    invoke-virtual {v12, v4, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    iput v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAlphabeticModifiers:I

    .line 354
    .line 355
    const/16 v4, 0xa

    .line 356
    .line 357
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    if-nez v4, :cond_c

    .line 362
    .line 363
    move v4, v7

    .line 364
    goto :goto_6

    .line 365
    :cond_c
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    .line 366
    .line 367
    .line 368
    move-result v4

    .line 369
    :goto_6
    iput-char v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    .line 370
    .line 371
    const/16 v4, 0x14

    .line 372
    .line 373
    invoke-virtual {v12, v4, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 374
    .line 375
    .line 376
    move-result v4

    .line 377
    iput v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemNumericModifiers:I

    .line 378
    .line 379
    const/16 v4, 0xb

    .line 380
    .line 381
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 382
    .line 383
    .line 384
    move-result v13

    .line 385
    if-eqz v13, :cond_d

    .line 386
    .line 387
    invoke-virtual {v12, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 388
    .line 389
    .line 390
    move-result v4

    .line 391
    iput v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCheckable:I

    .line 392
    .line 393
    goto :goto_7

    .line 394
    :cond_d
    iget v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 395
    .line 396
    iput v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCheckable:I

    .line 397
    .line 398
    :goto_7
    invoke-virtual {v12, v14, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 399
    .line 400
    .line 401
    move-result v4

    .line 402
    iput-boolean v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemChecked:Z

    .line 403
    .line 404
    iget-boolean v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 405
    .line 406
    invoke-virtual {v12, v8, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 407
    .line 408
    .line 409
    move-result v4

    .line 410
    iput-boolean v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemVisible:Z

    .line 411
    .line 412
    iget-boolean v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 413
    .line 414
    const/4 v8, 0x1

    .line 415
    invoke-virtual {v12, v8, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 416
    .line 417
    .line 418
    move-result v4

    .line 419
    iput-boolean v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    .line 420
    .line 421
    const/16 v4, 0x15

    .line 422
    .line 423
    const/4 v8, -0x1

    .line 424
    invoke-virtual {v12, v4, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 425
    .line 426
    .line 427
    move-result v4

    .line 428
    iput v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    .line 429
    .line 430
    const/16 v4, 0xc

    .line 431
    .line 432
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v4

    .line 436
    iput-object v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    .line 437
    .line 438
    const/16 v4, 0xd

    .line 439
    .line 440
    invoke-virtual {v12, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 441
    .line 442
    .line 443
    move-result v4

    .line 444
    iput v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    .line 445
    .line 446
    const/16 v4, 0xf

    .line 447
    .line 448
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    iput-object v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    .line 453
    .line 454
    const/16 v4, 0xe

    .line 455
    .line 456
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    if-eqz v4, :cond_e

    .line 461
    .line 462
    const/4 v13, 0x1

    .line 463
    goto :goto_8

    .line 464
    :cond_e
    move v13, v7

    .line 465
    :goto_8
    if-eqz v13, :cond_f

    .line 466
    .line 467
    iget v14, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    .line 468
    .line 469
    if-nez v14, :cond_f

    .line 470
    .line 471
    iget-object v14, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    .line 472
    .line 473
    if-nez v14, :cond_f

    .line 474
    .line 475
    sget-object v13, Landroidx/appcompat/view/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 476
    .line 477
    iget-object v6, v6, Landroidx/appcompat/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    .line 478
    .line 479
    invoke-virtual {v2, v4, v13, v6}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v4

    .line 483
    check-cast v4, Landroidx/core/view/ActionProvider;

    .line 484
    .line 485
    iput-object v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroidx/core/view/ActionProvider;

    .line 486
    .line 487
    goto :goto_9

    .line 488
    :cond_f
    if-eqz v13, :cond_10

    .line 489
    .line 490
    const-string v4, "SupportMenuInflater"

    .line 491
    .line 492
    const-string v6, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    .line 493
    .line 494
    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    .line 496
    .line 497
    :cond_10
    const/4 v4, 0x0

    .line 498
    iput-object v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroidx/core/view/ActionProvider;

    .line 499
    .line 500
    :goto_9
    const/16 v4, 0x11

    .line 501
    .line 502
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 503
    .line 504
    .line 505
    move-result-object v4

    .line 506
    iput-object v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemContentDescription:Ljava/lang/CharSequence;

    .line 507
    .line 508
    const/16 v4, 0x16

    .line 509
    .line 510
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 511
    .line 512
    .line 513
    move-result-object v4

    .line 514
    iput-object v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTooltipText:Ljava/lang/CharSequence;

    .line 515
    .line 516
    const/16 v4, 0x13

    .line 517
    .line 518
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 519
    .line 520
    .line 521
    move-result v6

    .line 522
    if-eqz v6, :cond_11

    .line 523
    .line 524
    invoke-virtual {v12, v4, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 525
    .line 526
    .line 527
    move-result v4

    .line 528
    iget-object v6, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 529
    .line 530
    invoke-static {v4, v6}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 531
    .line 532
    .line 533
    move-result-object v4

    .line 534
    iput-object v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 535
    .line 536
    goto :goto_a

    .line 537
    :cond_11
    const/4 v4, 0x0

    .line 538
    iput-object v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 539
    .line 540
    :goto_a
    const/16 v4, 0x12

    .line 541
    .line 542
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 543
    .line 544
    .line 545
    move-result v6

    .line 546
    if-eqz v6, :cond_13

    .line 547
    .line 548
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 549
    .line 550
    .line 551
    move-result v6

    .line 552
    if-eqz v6, :cond_12

    .line 553
    .line 554
    invoke-virtual {v12, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 555
    .line 556
    .line 557
    move-result v6

    .line 558
    if-eqz v6, :cond_12

    .line 559
    .line 560
    invoke-static {v3, v6}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 561
    .line 562
    .line 563
    move-result-object v3

    .line 564
    if-eqz v3, :cond_12

    .line 565
    .line 566
    goto :goto_b

    .line 567
    :cond_12
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 568
    .line 569
    .line 570
    move-result-object v3

    .line 571
    :goto_b
    iput-object v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    .line 572
    .line 573
    const/4 v4, 0x0

    .line 574
    goto :goto_c

    .line 575
    :cond_13
    const/4 v4, 0x0

    .line 576
    iput-object v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    .line 577
    .line 578
    :goto_c
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 579
    .line 580
    .line 581
    iput-boolean v7, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 582
    .line 583
    move-object/from16 v8, p1

    .line 584
    .line 585
    const/4 v6, 0x1

    .line 586
    goto :goto_d

    .line 587
    :cond_14
    const/4 v4, 0x0

    .line 588
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    move-result v6

    .line 592
    if-eqz v6, :cond_15

    .line 593
    .line 594
    const/4 v6, 0x1

    .line 595
    iput-boolean v6, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 596
    .line 597
    iget-object v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 598
    .line 599
    iget v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupId:I

    .line 600
    .line 601
    iget v12, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemId:I

    .line 602
    .line 603
    iget v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    .line 604
    .line 605
    iget-object v14, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 606
    .line 607
    invoke-interface {v3, v8, v12, v13, v14}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 608
    .line 609
    .line 610
    move-result-object v3

    .line 611
    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    .line 612
    .line 613
    .line 614
    move-result-object v8

    .line 615
    invoke-virtual {v2, v8}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 616
    .line 617
    .line 618
    move-object/from16 v8, p1

    .line 619
    .line 620
    invoke-virtual {v0, v8, v1, v3}, Landroidx/appcompat/view/SupportMenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    .line 621
    .line 622
    .line 623
    goto :goto_d

    .line 624
    :cond_15
    move-object/from16 v8, p1

    .line 625
    .line 626
    const/4 v6, 0x1

    .line 627
    move-object v11, v3

    .line 628
    move v10, v6

    .line 629
    :goto_d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 630
    .line 631
    .line 632
    move-result v3

    .line 633
    move v4, v6

    .line 634
    const/4 v6, 0x2

    .line 635
    goto/16 :goto_2

    .line 636
    .line 637
    :cond_16
    new-instance v0, Ljava/lang/RuntimeException;

    .line 638
    .line 639
    const-string v1, "Unexpected end of document"

    .line 640
    .line 641
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    throw v0

    .line 645
    :cond_17
    return-void

    .line 646
    :cond_18
    move-object/from16 v8, p1

    .line 647
    .line 648
    goto/16 :goto_0
.end method
