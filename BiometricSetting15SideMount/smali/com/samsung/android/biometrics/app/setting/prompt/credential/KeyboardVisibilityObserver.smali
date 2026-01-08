.class public final Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final getScreenHeight:Ljava/util/function/Supplier;

.field public mIsStarted:Z

.field public mListener:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda1;

.field public final mView:Landroid/view/View;

.field public mVisibleState:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;->mVisibleState:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;->mView:Landroid/view/View;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;->getScreenHeight:Ljava/util/function/Supplier;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;->mIsStarted:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;->mIsStarted:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;->mView:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;->mView:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;->getScreenHeight:Ljava/util/function/Supplier;

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 41
    .line 42
    sub-int v0, v2, v0

    .line 43
    .line 44
    sget-boolean v3, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 45
    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v4, "Screen Height = "

    .line 51
    .line 52
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v4, ", Keyboard Height = "

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    const-string v4, "BSS_KeyboardVisibilityObserver"

    .line 71
    .line 72
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_1
    int-to-float v0, v0

    .line 76
    int-to-float v2, v2

    .line 77
    const v3, 0x3e19999a    # 0.15f

    .line 78
    .line 79
    .line 80
    mul-float/2addr v2, v3

    .line 81
    cmpl-float v0, v0, v2

    .line 82
    .line 83
    const/4 v2, 0x1

    .line 84
    if-lez v0, :cond_3

    .line 85
    .line 86
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;->mVisibleState:I

    .line 87
    .line 88
    if-eq v0, v2, :cond_2

    .line 89
    .line 90
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;->mListener:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda1;

    .line 91
    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;

    .line 95
    .line 96
    iput-boolean v2, v0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mIsKeyboardVisible:Z

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->onKeyboardVisibilityChanged(Z)V

    .line 99
    .line 100
    .line 101
    :cond_2
    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;->mVisibleState:I

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;->mVisibleState:I

    .line 105
    .line 106
    const/4 v3, 0x2

    .line 107
    if-eq v0, v3, :cond_4

    .line 108
    .line 109
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;->mListener:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda1;

    .line 110
    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;

    .line 114
    .line 115
    iput-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mIsKeyboardVisible:Z

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->onKeyboardVisibilityChanged(Z)V

    .line 118
    .line 119
    .line 120
    :cond_4
    iput v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;->mVisibleState:I

    .line 121
    .line 122
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;->mIsStarted:Z

    .line 123
    .line 124
    if-eqz v0, :cond_5

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;->mView:Landroid/view/View;

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 134
    .line 135
    .line 136
    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/KeyboardVisibilityObserver;->mIsStarted:Z

    .line 137
    .line 138
    :goto_2
    return-void
.end method
