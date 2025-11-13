.class public final synthetic Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;

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
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScrollView:Landroid/widget/ScrollView;

    .line 9
    .line 10
    const/16 v0, 0x82

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->updateScrollViewHeight()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScrollView:Landroid/widget/ScrollView;

    .line 20
    .line 21
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScrollView:Landroid/widget/ScrollView;

    .line 32
    .line 33
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    const/4 v2, 0x7

    .line 36
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;I)V

    .line 37
    .line 38
    .line 39
    const-wide/16 v2, 0x64

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->updateScrollViewHeight()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScrollView:Landroid/widget/ScrollView;

    .line 49
    .line 50
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->updateScrollViewHeight()V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScrollView:Landroid/widget/ScrollView;

    .line 64
    .line 65
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    const/16 v2, 0x8

    .line 68
    .line 69
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScrollView:Landroid/widget/ScrollView;

    .line 77
    .line 78
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda0;

    .line 79
    .line 80
    const/4 v2, 0x5

    .line 81
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;I)V

    .line 82
    .line 83
    .line 84
    const-wide/16 v2, 0x64

    .line 85
    .line 86
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :pswitch_5
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScrollView:Landroid/widget/ScrollView;

    .line 91
    .line 92
    const/16 v0, 0x82

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :pswitch_6
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScrollView:Landroid/widget/ScrollView;

    .line 99
    .line 100
    const/16 v0, 0x82

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScrollView:Landroid/widget/ScrollView;

    .line 107
    .line 108
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda0;

    .line 109
    .line 110
    const/4 v2, 0x4

    .line 111
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/FacePromptGuiHelper;I)V

    .line 112
    .line 113
    .line 114
    const-wide/16 v2, 0x64

    .line 115
    .line 116
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
