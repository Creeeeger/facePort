.class public final Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;
.super Lcom/samsung/android/biometrics/app/setting/FocusableWindow;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mCredentialView:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

.field public final mFrameLayout:Landroid/widget/FrameLayout;

.field public final mHelper:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;

.field public final mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

.field public mScreenOffBR:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;)V
    .locals 8

    .line 1
    const-string v0, "BSS_SysUiWindow.K"

    .line 2
    .line 3
    const-string v1, "Unknown credential type: "

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mHelper:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;

    .line 11
    .line 12
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const v2, 0x7f0d003c

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    :try_start_0
    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 25
    .line 26
    const v4, 0x7f0a0104

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroid/widget/FrameLayout;

    .line 34
    .line 35
    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 36
    .line 37
    iget v4, p2, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCredentialType:I

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x1

    .line 41
    if-eq v4, v6, :cond_2

    .line 42
    .line 43
    const/4 v7, 0x2

    .line 44
    if-eq v4, v7, :cond_1

    .line 45
    .line 46
    const/4 v7, 0x3

    .line 47
    if-eq v4, v7, :cond_2

    .line 48
    .line 49
    const/4 v7, 0x6

    .line 50
    if-ne v4, v7, :cond_0

    .line 51
    .line 52
    const-string v1, "KnoxAuthCredentialView: UCMKeyguardEnabled"

    .line 53
    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    goto :goto_2

    .line 60
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :cond_1
    const v1, 0x7f0d003e

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 86
    .line 87
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    :goto_0
    const v1, 0x7f0d003d

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 98
    .line 99
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 100
    .line 101
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 102
    .line 103
    invoke-interface {p3, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;->changeCredentialViewIfNeeded(Landroid/view/View;)Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 108
    .line 109
    invoke-virtual {p1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->setPromptConfig(Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 113
    .line 114
    invoke-virtual {p1, p3}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->setKnoxClientHelper(Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 118
    .line 119
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 123
    .line 124
    if-eqz p1, :cond_3

    .line 125
    .line 126
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 127
    .line 128
    iget-object p2, p2, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->mOnKeyListener:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView$1;

    .line 129
    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 134
    .line 135
    invoke-virtual {p1, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 136
    .line 137
    .line 138
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 139
    .line 140
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string p2, "KnoxAuthCredentialWindow: "

    .line 147
    .line 148
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .line 164
    .line 165
    :goto_3
    return-void
.end method


# virtual methods
.method public final addView()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow;->addView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mScreenOffBR:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow$1;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow$1;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow$1;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mScreenOffBR:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow$1;

    .line 14
    .line 15
    :try_start_0
    new-instance v4, Landroid/content/IntentFilter;

    .line 16
    .line 17
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 21
    .line 22
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mScreenOffBR:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow$1;

    .line 28
    .line 29
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 30
    .line 31
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mH:Landroid/os/Handler;

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "registerBroadcastReceiver: "

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v1, "BSS_SysUiWindow.K"

    .line 47
    .line 48
    invoke-static {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    :goto_0
    return-void
.end method

.method public final getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 1
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    const/4 v2, -0x1

    .line 4
    const/16 v3, 0x7e1

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    const v4, 0x1002000

    .line 8
    .line 9
    .line 10
    const/4 v5, -0x3

    .line 11
    move-object v0, v6

    .line 12
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 13
    .line 14
    .line 15
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 16
    .line 17
    or-int/lit8 v0, v0, 0x10

    .line 18
    .line 19
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 20
    .line 21
    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    not-int v1, v1

    .line 30
    and-int/2addr v0, v1

    .line 31
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mHelper:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;

    .line 35
    .line 36
    invoke-interface {p0, v6}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;->modifyLayoutParamsIfNeeded(Landroid/view/WindowManager$LayoutParams;)V

    .line 37
    .line 38
    .line 39
    return-object v6
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "BSS_SysUiWindow.K"

    .line 2
    .line 3
    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isKnoxProfile()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mHelper:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 19
    .line 20
    invoke-interface {p1, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;->changeCredentialViewIfNeeded(Landroid/view/View;)Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->setPromptConfig(Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mHelper:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->setKnoxClientHelper(Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mHelper:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;

    .line 46
    .line 47
    invoke-interface {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;->onConfigurationChanged()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mCredentialView:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;

    .line 52
    .line 53
    if-eqz p0, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method public final onFocusLost()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mHelper:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;->isForgotbtnDialogShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-interface {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onUserCancel(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onSystemDialogClosed()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    invoke-interface {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onUserCancel(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final removeView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow;->removeView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mScreenOffBR:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow$1;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow;->mScreenOffBR:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialWindow$1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "unregisterBroadcastReceiver: "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "BSS_SysUiWindow.K"

    .line 26
    .line 27
    invoke-static {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    return-void
.end method
