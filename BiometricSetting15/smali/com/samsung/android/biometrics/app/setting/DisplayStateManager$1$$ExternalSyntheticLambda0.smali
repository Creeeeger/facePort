.class public final synthetic Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1;

    .line 4
    .line 5
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1;

    .line 7
    .line 8
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1$$ExternalSyntheticLambda0;->f$1:I

    .line 9
    .line 10
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1;->this$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 11
    .line 12
    iget v1, v1, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentStateLogical:I

    .line 13
    .line 14
    if-ne v1, p0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "SysUiDisplayStateCallback#onStart: "

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->stateToString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "BSS_DisplayStateManager"

    .line 40
    .line 41
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1;->this$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 45
    .line 46
    add-int/lit16 v2, p0, 0x3e8

    .line 47
    .line 48
    iput v2, v1, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentStateLogical:I

    .line 49
    .line 50
    const/4 v2, 0x2

    .line 51
    if-ne p0, v2, :cond_2

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    iget-object p0, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1;->this$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 60
    .line 61
    const/16 v0, 0x3ea

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->handleDisplayStateChanged(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const/4 v1, 0x1

    .line 68
    if-ne p0, v1, :cond_3

    .line 69
    .line 70
    iget-object p0, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1;->this$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-eqz p0, :cond_3

    .line 77
    .line 78
    iget-object p0, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1;->this$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 79
    .line 80
    const/16 v0, 0x3e9

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->handleDisplayStateChanged(I)V

    .line 83
    .line 84
    .line 85
    :cond_3
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1;

    .line 87
    .line 88
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1$$ExternalSyntheticLambda0;->f$1:I

    .line 89
    .line 90
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1;->this$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 91
    .line 92
    iget v1, v1, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentStateLogical:I

    .line 93
    .line 94
    if-ne v1, p0, :cond_4

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 98
    .line 99
    const-string v2, "BSS_DisplayStateManager"

    .line 100
    .line 101
    if-eqz v1, :cond_5

    .line 102
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v3, "SysUiDisplayStateCallback#onFinish: "

    .line 106
    .line 107
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->stateToString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    :cond_5
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1;->this$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 125
    .line 126
    iput p0, v1, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentStateLogical:I

    .line 127
    .line 128
    iget v1, v1, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentDisplayState:I

    .line 129
    .line 130
    const/4 v3, 0x2

    .line 131
    if-ne v1, v3, :cond_6

    .line 132
    .line 133
    invoke-static {p0}, Landroid/view/Display;->isDozeState(I)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_6

    .line 138
    .line 139
    const-string p0, "ignore, Switched directly from ON to DOZE"

    .line 140
    .line 141
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_6
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1;->this$0:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 146
    .line 147
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mDisplayStateFromKeyguard:I

    .line 148
    .line 149
    if-ne v1, v3, :cond_7

    .line 150
    .line 151
    const/4 v1, 0x1

    .line 152
    if-ne p0, v1, :cond_7

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_7
    invoke-virtual {v0, p0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->handleDisplayStateChanged(I)V

    .line 156
    .line 157
    .line 158
    :goto_1
    return-void

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
