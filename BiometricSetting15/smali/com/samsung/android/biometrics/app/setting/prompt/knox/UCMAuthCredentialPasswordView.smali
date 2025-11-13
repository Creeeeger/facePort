.class public Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;
.super Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# static fields
.field public static final DBG:Z

.field public static mAgentTitle:Ljava/lang/String;

.field public static mCsName:Ljava/lang/String;

.field public static mCsNameUri:Ljava/lang/String;

.field public static mStorageType:Ljava/lang/String;

.field public static mVendorID:Ljava/lang/String;

.field public static mVendorName:Ljava/lang/String;


# instance fields
.field public final mImm:Landroid/view/inputmethod/InputMethodManager;

.field public mPasswordField:Landroid/widget/ImeAwareEditText;

.field public mProgressDialog:Landroid/app/ProgressDialog;

.field public final mStateMachine:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;


# direct methods
.method public static bridge synthetic -$$Nest$mgetUCMService(Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;)Lcom/samsung/android/knox/ucm/core/IUcmService;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static -$$Nest$mstartProgress(Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->DBG:Z

    .line 2
    .line 3
    const-string v1, "BSS_UCMAuthCredentialPasswordView"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v0, "startProgress"

    .line 11
    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Landroid/app/ProgressDialog;

    .line 20
    .line 21
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 31
    .line 32
    const-string v2, "ready"

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    :try_start_0
    const-string v0, "start dialog"

    .line 48
    .line 49
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v2, "Exception "

    .line 62
    .line 63
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->DBG:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mCsName:Ljava/lang/String;

    .line 9
    .line 10
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mVendorName:Ljava/lang/String;

    .line 11
    .line 12
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mCsNameUri:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mStateMachine:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;

    .line 10
    .line 11
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-class p2, Landroid/view/inputmethod/InputMethodManager;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 22
    .line 23
    return-void
.end method

.method private getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;
    .locals 2

    .line 1
    const-string p0, "com.samsung.ucs.ucsservice"

    .line 2
    .line 3
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const-string v0, "BSS_UCMAuthCredentialPasswordView"

    .line 14
    .line 15
    const-string v1, "Failed to get UCM service"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    return-object p0
.end method

.method private getVendorID()V
    .locals 6

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "agentTitle : "

    .line 4
    .line 5
    const-string v2, "storageType : "

    .line 6
    .line 7
    const-string v3, "vendorID : "

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v4, "BSS_UCMAuthCredentialPasswordView"

    .line 14
    .line 15
    if-nez p0, :cond_1

    .line 16
    .line 17
    sget-boolean p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->DBG:Z

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const-string p0, "failed to get UCM service"

    .line 22
    .line 23
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :cond_1
    :try_start_0
    sget-object v5, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mCsNameUri:Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {p0, v5}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-nez p0, :cond_2

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    const-string v5, "vendorId"

    .line 37
    .line 38
    invoke-virtual {p0, v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    sput-object v5, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mVendorID:Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v5, :cond_4

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_3

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    sget-boolean v5, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->DBG:Z

    .line 54
    .line 55
    if-eqz v5, :cond_5

    .line 56
    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget-object v3, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mVendorID:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catch_0
    move-exception p0

    .line 76
    goto/16 :goto_5

    .line 77
    .line 78
    :cond_4
    :goto_0
    sget-boolean v3, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->DBG:Z

    .line 79
    .line 80
    if-eqz v3, :cond_5

    .line 81
    .line 82
    const-string v3, "NO vendorID info"

    .line 83
    .line 84
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    :cond_5
    :goto_1
    const-string v3, "storageType"

    .line 88
    .line 89
    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    sput-object v3, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mStorageType:Ljava/lang/String;

    .line 94
    .line 95
    if-eqz v3, :cond_7

    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_6

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_6
    sget-boolean v3, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->DBG:Z

    .line 105
    .line 106
    if-eqz v3, :cond_8

    .line 107
    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    sget-object v2, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mStorageType:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_7
    :goto_2
    sget-boolean v2, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->DBG:Z

    .line 127
    .line 128
    if-eqz v2, :cond_8

    .line 129
    .line 130
    const-string v2, "NO storageType info"

    .line 131
    .line 132
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    :cond_8
    :goto_3
    const-string v2, "title"

    .line 136
    .line 137
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    sput-object p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mAgentTitle:Ljava/lang/String;

    .line 142
    .line 143
    if-eqz p0, :cond_a

    .line 144
    .line 145
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    if-eqz p0, :cond_9

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_9
    sget-boolean p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->DBG:Z

    .line 153
    .line 154
    if-eqz p0, :cond_b

    .line 155
    .line 156
    new-instance p0, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    sget-object v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mAgentTitle:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    goto :goto_6

    .line 174
    :cond_a
    :goto_4
    sget-boolean p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->DBG:Z

    .line 175
    .line 176
    if-eqz p0, :cond_b

    .line 177
    .line 178
    const-string p0, "NO agentTitle info"

    .line 179
    .line 180
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .line 182
    .line 183
    goto :goto_6

    .line 184
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    .line 186
    .line 187
    :cond_b
    :goto_6
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mErrorView:Landroid/widget/TextView;

    .line 5
    .line 6
    const v1, 0x7f100042

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 13
    .line 14
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 15
    .line 16
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMUtils;->getUCMKeyguardVendorName(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mVendorName:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 23
    .line 24
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 25
    .line 26
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMUtils;->getUCMKeyguardStorageForUser(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mCsName:Ljava/lang/String;

    .line 31
    .line 32
    const-string v1, ""

    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mCsNameUri:Ljava/lang/String;

    .line 39
    .line 40
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->DBG:Z

    .line 41
    .line 42
    const-string v2, "BSS_UCMAuthCredentialPasswordView"

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v4, "mCsName: "

    .line 49
    .line 50
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget-object v4, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mCsName:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_0
    if-eqz v0, :cond_1

    .line 66
    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v4, "mCsNameUri: "

    .line 70
    .line 71
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sget-object v4, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mCsNameUri:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    :cond_1
    if-eqz v0, :cond_2

    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v3, "mVendorName: "

    .line 91
    .line 92
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sget-object v3, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mVendorName:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->getVendorID()V

    .line 108
    .line 109
    .line 110
    const v0, 0x7f0a012e

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Landroid/widget/ImeAwareEditText;

    .line 118
    .line 119
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    .line 120
    .line 121
    const/16 v2, 0x12

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Landroid/widget/ImeAwareEditText;->setInputType(I)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    .line 127
    .line 128
    invoke-virtual {v0, p0}, Landroid/widget/ImeAwareEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    .line 132
    .line 133
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mOnKeyListener:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView$1;

    .line 134
    .line 135
    invoke-virtual {v0, v2}, Landroid/widget/ImeAwareEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    .line 139
    .line 140
    invoke-virtual {v0, p0}, Landroid/widget/ImeAwareEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->requestFocus()Z

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    .line 149
    .line 150
    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    invoke-virtual {v0, v2}, Landroid/widget/ImeAwareEditText;->setSelection(I)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    .line 162
    .line 163
    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->scheduleShowSoftInput()V

    .line 164
    .line 165
    .line 166
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;

    .line 167
    .line 168
    sget-object v2, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mCsNameUri:Ljava/lang/String;

    .line 169
    .line 170
    const/4 v3, 0x1

    .line 171
    invoke-direct {v0, p0, v2, v3}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;Ljava/lang/String;I)V

    .line 172
    .line 173
    .line 174
    filled-new-array {v1}, [Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    if-nez p3, :cond_1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x6

    .line 8
    if-eq p2, v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    if-ne p2, v1, :cond_1

    .line 12
    .line 13
    :cond_0
    move v1, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    move v1, p1

    .line 16
    :goto_0
    sget-boolean v2, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->DBG:Z

    .line 17
    .line 18
    const-string v3, "BSS_UCMAuthCredentialPasswordView"

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v5, "onEditorAction isSoftImeEvent: "

    .line 25
    .line 26
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v5, ", actionId: "

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_2
    if-eqz p3, :cond_3

    .line 48
    .line 49
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    invoke-static {p2}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_3

    .line 58
    .line 59
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-nez p2, :cond_3

    .line 64
    .line 65
    move p2, v0

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    move p2, p1

    .line 68
    :goto_1
    if-eqz v2, :cond_4

    .line 69
    .line 70
    new-instance p3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v4, "onEditorAction isKeyboardEnterKey: "

    .line 73
    .line 74
    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    invoke-static {v3, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    :cond_4
    if-nez v1, :cond_6

    .line 88
    .line 89
    if-eqz p2, :cond_5

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_5
    return p1

    .line 93
    :cond_6
    :goto_2
    if-eqz v2, :cond_7

    .line 94
    .line 95
    const-string p2, "checkPin"

    .line 96
    .line 97
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    :cond_7
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 101
    .line 102
    if-eqz p2, :cond_8

    .line 103
    .line 104
    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 105
    .line 106
    .line 107
    :cond_8
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    .line 108
    .line 109
    invoke-virtual {p2}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-interface {p2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    if-eqz v2, :cond_9

    .line 118
    .line 119
    new-instance p3, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v1, "checkPin pin: "

    .line 122
    .line 123
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    invoke-static {v3, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    :cond_9
    if-eqz p2, :cond_d

    .line 137
    .line 138
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 139
    .line 140
    .line 141
    move-result p3

    .line 142
    if-gtz p3, :cond_a

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_a
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mStateMachine:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;

    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->getState()I

    .line 148
    .line 149
    .line 150
    move-result p3

    .line 151
    if-eqz v2, :cond_b

    .line 152
    .line 153
    invoke-static {p3}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->printState(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    const-string v2, "next mCurState : "

    .line 158
    .line 159
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    :cond_b
    const v1, 0x10002

    .line 167
    .line 168
    .line 169
    packed-switch p3, :pswitch_data_0

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :pswitch_0
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mInputPin:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    if-eqz p2, :cond_c

    .line 180
    .line 181
    const/4 p2, 0x2

    .line 182
    new-array p3, p2, [Ljava/lang/String;

    .line 183
    .line 184
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mInputPuk:Ljava/lang/String;

    .line 185
    .line 186
    aput-object v1, p3, p1

    .line 187
    .line 188
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mInputPin:Ljava/lang/String;

    .line 189
    .line 190
    aput-object p1, p3, v0

    .line 191
    .line 192
    move p1, p2

    .line 193
    goto :goto_4

    .line 194
    :cond_c
    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mState:I

    .line 195
    .line 196
    const p1, 0x10006

    .line 197
    .line 198
    .line 199
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mErrorState:I

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :pswitch_1
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mInputPin:Ljava/lang/String;

    .line 203
    .line 204
    const p1, 0x10003

    .line 205
    .line 206
    .line 207
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mState:I

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :pswitch_2
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mInputPuk:Ljava/lang/String;

    .line 211
    .line 212
    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mState:I

    .line 213
    .line 214
    :goto_3
    const/4 p3, 0x0

    .line 215
    const/16 p1, 0x63

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :pswitch_3
    new-array p3, v0, [Ljava/lang/String;

    .line 219
    .line 220
    aput-object p2, p3, p1

    .line 221
    .line 222
    :goto_4
    new-instance p2, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;

    .line 223
    .line 224
    sget-object v1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mCsNameUri:Ljava/lang/String;

    .line 225
    .line 226
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 227
    .line 228
    invoke-direct {p2, p0, v1, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$UCMAsyncTask;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;Ljava/lang/String;I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2, p3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 232
    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_d
    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->resetState()V

    .line 236
    .line 237
    .line 238
    :goto_6
    return v0

    .line 239
    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ImeAwareEditText;->setEnabled(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->requestFocus()Z

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/widget/ImeAwareEditText;->scheduleShowSoftInput()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final resetState()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mStateMachine:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;

    .line 2
    .line 3
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$StateMachine;->mErrorState:I

    .line 4
    .line 5
    const v1, 0x10006

    .line 6
    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->DBG:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v0, "BSS_UCMAuthCredentialPasswordView"

    .line 15
    .line 16
    const-string v1, "resetState set the passwordentry as null"

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/ImeAwareEditText;->setEnabled(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/ImeAwareEditText;->setFocusable(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/ImeAwareEditText;->setFocusableInTouchMode(Z)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->requestFocus()Z

    .line 46
    .line 47
    .line 48
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$$ExternalSyntheticLambda0;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;)V

    .line 51
    .line 52
    .line 53
    const-wide/16 v1, 0x64

    .line 54
    .line 55
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    .line 57
    .line 58
    return-void
.end method
