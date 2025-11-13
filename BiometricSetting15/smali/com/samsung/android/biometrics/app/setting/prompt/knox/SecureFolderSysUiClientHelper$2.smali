.class public final Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

.field public final synthetic val$knoxDetailsText:Landroid/widget/LinearLayout;

.field public final synthetic val$knoxLogo:Landroid/widget/ImageView;

.field public final synthetic val$knoxTitleText:Landroid/widget/TextView;

.field public final synthetic val$logo_layout_parent:Landroid/widget/RelativeLayout;

.field public final synthetic val$lpLogoLayoutParent:Landroid/widget/LinearLayout$LayoutParams;

.field public final synthetic val$lpPasswordLayoutParent:Landroid/widget/LinearLayout$LayoutParams;

.field public final synthetic val$pwdLayout:Landroid/widget/LinearLayout;

.field public final synthetic val$pwdLayoutScrollView:Landroid/widget/ScrollView;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$view:Landroid/view/View;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$pwdLayoutScrollView:Landroid/widget/ScrollView;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$pwdLayout:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$logo_layout_parent:Landroid/widget/RelativeLayout;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$knoxLogo:Landroid/widget/ImageView;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$knoxTitleText:Landroid/widget/TextView;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$knoxDetailsText:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$lpLogoLayoutParent:Landroid/widget/LinearLayout$LayoutParams;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$lpPasswordLayoutParent:Landroid/widget/LinearLayout$LayoutParams;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$view:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$pwdLayoutScrollView:Landroid/widget/ScrollView;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-lez v1, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$pwdLayoutScrollView:Landroid/widget/ScrollView;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/widget/ScrollView;->getRootView()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 36
    .line 37
    sub-int/2addr v2, v0

    .line 38
    sub-int/2addr v2, v1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$pwdLayoutScrollView:Landroid/widget/ScrollView;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/widget/ScrollView;->getRootView()Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 51
    .line 52
    sub-int/2addr v2, v0

    .line 53
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v3, "Keyboard height = "

    .line 56
    .line 57
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v3, "KKG::SecureFolderSysUiClientHelper"

    .line 68
    .line 69
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    const/4 v0, 0x3

    .line 73
    const/4 v3, 0x1

    .line 74
    const/high16 v4, 0x3f000000    # 0.5f

    .line 75
    .line 76
    const/4 v5, 0x0

    .line 77
    if-gtz v2, :cond_5

    .line 78
    .line 79
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 80
    .line 81
    iget-object v2, v2, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->getDisplayRotation(Landroid/content/Context;)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eq v2, v3, :cond_1

    .line 88
    .line 89
    if-ne v2, v0, :cond_2

    .line 90
    .line 91
    :cond_1
    move v1, v5

    .line 92
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$pwdLayout:Landroid/widget/LinearLayout;

    .line 93
    .line 94
    invoke-virtual {v2, v5, v5, v5, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$logo_layout_parent:Landroid/widget/RelativeLayout;

    .line 98
    .line 99
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$knoxLogo:Landroid/widget/ImageView;

    .line 103
    .line 104
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$knoxTitleText:Landroid/widget/TextView;

    .line 108
    .line 109
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 113
    .line 114
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const v2, 0x7f07012a

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$knoxDetailsText:Landroid/widget/LinearLayout;

    .line 128
    .line 129
    invoke-virtual {v2, v5, v1, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 133
    .line 134
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 135
    .line 136
    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->getDisplayRotation(Landroid/content/Context;)I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eq v1, v3, :cond_4

    .line 141
    .line 142
    if-ne v1, v0, :cond_3

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$lpLogoLayoutParent:Landroid/widget/LinearLayout$LayoutParams;

    .line 146
    .line 147
    const v1, 0x3e4ccccd    # 0.2f

    .line 148
    .line 149
    .line 150
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 151
    .line 152
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$lpPasswordLayoutParent:Landroid/widget/LinearLayout$LayoutParams;

    .line 153
    .line 154
    const v0, 0x3f4ccccd    # 0.8f

    .line 155
    .line 156
    .line 157
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$lpLogoLayoutParent:Landroid/widget/LinearLayout$LayoutParams;

    .line 161
    .line 162
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 163
    .line 164
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$lpPasswordLayoutParent:Landroid/widget/LinearLayout$LayoutParams;

    .line 165
    .line 166
    iput v4, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;

    .line 170
    .line 171
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper;->mContext:Landroid/content/Context;

    .line 172
    .line 173
    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxUtils;->getDisplayRotation(Landroid/content/Context;)I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eq v1, v3, :cond_7

    .line 178
    .line 179
    if-ne v1, v0, :cond_6

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$lpLogoLayoutParent:Landroid/widget/LinearLayout$LayoutParams;

    .line 183
    .line 184
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 185
    .line 186
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$lpPasswordLayoutParent:Landroid/widget/LinearLayout$LayoutParams;

    .line 187
    .line 188
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 189
    .line 190
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$pwdLayout:Landroid/widget/LinearLayout;

    .line 191
    .line 192
    invoke-virtual {v0, v5, v5, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$logo_layout_parent:Landroid/widget/RelativeLayout;

    .line 196
    .line 197
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$knoxLogo:Landroid/widget/ImageView;

    .line 201
    .line 202
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$knoxTitleText:Landroid/widget/TextView;

    .line 206
    .line 207
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    .line 209
    .line 210
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$knoxDetailsText:Landroid/widget/LinearLayout;

    .line 211
    .line 212
    invoke-virtual {p0, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$lpLogoLayoutParent:Landroid/widget/LinearLayout$LayoutParams;

    .line 217
    .line 218
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 219
    .line 220
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$lpPasswordLayoutParent:Landroid/widget/LinearLayout$LayoutParams;

    .line 221
    .line 222
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 223
    .line 224
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$pwdLayout:Landroid/widget/LinearLayout;

    .line 225
    .line 226
    invoke-virtual {v0, v5, v5, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$logo_layout_parent:Landroid/widget/RelativeLayout;

    .line 230
    .line 231
    invoke-virtual {v0, v5, v5, v5, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 232
    .line 233
    .line 234
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$knoxDetailsText:Landroid/widget/LinearLayout;

    .line 235
    .line 236
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 237
    .line 238
    .line 239
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$knoxLogo:Landroid/widget/ImageView;

    .line 240
    .line 241
    const/16 v1, 0x8

    .line 242
    .line 243
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    .line 245
    .line 246
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$2;->val$knoxTitleText:Landroid/widget/TextView;

    .line 247
    .line 248
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    .line 250
    .line 251
    :cond_8
    :goto_3
    return-void
.end method
