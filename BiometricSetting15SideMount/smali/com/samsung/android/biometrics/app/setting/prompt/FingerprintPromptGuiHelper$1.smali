.class public final Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper$1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    .line 1
    const-string v0, "DialogHeight : "

    .line 2
    .line 3
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->DEBUG:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "mDialogLayout.onGlobalLayout: called"

    .line 12
    .line 13
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;

    .line 17
    .line 18
    iget-object v2, v1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iput v2, v1, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;->mDialogMinimumHeight:I

    .line 25
    .line 26
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;

    .line 27
    .line 28
    iget-object v2, v1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iput v2, v1, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;->mDialogHeight:I

    .line 35
    .line 36
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;

    .line 37
    .line 38
    iget-object v2, v1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mTitleTxtView:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    iput v2, v1, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;->mTitleTextViewHeight:I

    .line 45
    .line 46
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;

    .line 47
    .line 48
    iget-object v2, v1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/widget/Button;->getHeight()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    iput v2, v1, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;->mBottomHeight:I

    .line 55
    .line 56
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;

    .line 57
    .line 58
    iget v2, v1, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;->mDialogHeight:I

    .line 59
    .line 60
    iget v3, v1, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;->mTitleTextViewHeight:I

    .line 61
    .line 62
    sub-int/2addr v2, v3

    .line 63
    iget v3, v1, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;->mBottomHeight:I

    .line 64
    .line 65
    sub-int/2addr v2, v3

    .line 66
    int-to-float v2, v2

    .line 67
    iget-object v3, v1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const v4, 0x7f070089

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    sub-float/2addr v2, v3

    .line 81
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;

    .line 82
    .line 83
    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    const v4, 0x7f0700e3

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    sub-float/2addr v2, v3

    .line 97
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;

    .line 98
    .line 99
    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 100
    .line 101
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    const v4, 0x7f0700dc

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    sub-float/2addr v2, v3

    .line 113
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;

    .line 114
    .line 115
    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 116
    .line 117
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    const v4, 0x7f0700ea

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    sub-float/2addr v2, v3

    .line 129
    float-to-int v2, v2

    .line 130
    iput v2, v1, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;->mDescriptionTextViewHeight:I

    .line 131
    .line 132
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;

    .line 133
    .line 134
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->TAG:Ljava/lang/String;

    .line 135
    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;

    .line 142
    .line 143
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;->mDialogHeight:I

    .line 144
    .line 145
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v0, " DescriptionHeight : "

    .line 149
    .line 150
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;

    .line 154
    .line 155
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;->mDescriptionTextViewHeight:I

    .line 156
    .line 157
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;

    .line 168
    .line 169
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isCheckToEnrollMode()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_1

    .line 176
    .line 177
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;

    .line 178
    .line 179
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    .line 180
    .line 181
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;->mDialogMinimumHeight:I

    .line 182
    .line 183
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;

    .line 187
    .line 188
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    .line 189
    .line 190
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;->mDescriptionTextViewHeight:I

    .line 191
    .line 192
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 193
    .line 194
    .line 195
    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    goto :goto_1

    .line 198
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;

    .line 199
    .line 200
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    .line 201
    .line 202
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;

    .line 211
    .line 212
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->TAG:Ljava/lang/String;

    .line 213
    .line 214
    const-string v1, "onGlobalLayout: "

    .line 215
    .line 216
    invoke-static {p0, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    .line 218
    .line 219
    :goto_2
    return-void
.end method
