.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final displayHCellMax:I

.field public final displayHCellSize:I

.field public final displayVCellMax:I

.field public final displayVCellSize:I

.field public final mDisplayInfoBufferSize:I

.field public final mIsTouchInfoUpdated:Z

.field public final mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x11

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayHCellSize:I

    .line 7
    .line 8
    const/16 v1, 0xe

    .line 9
    .line 10
    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayVCellSize:I

    .line 11
    .line 12
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayHCellMax:I

    .line 13
    .line 14
    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayVCellMax:I

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->mIsTouchInfoUpdated:Z

    .line 18
    .line 19
    add-int/2addr v0, v1

    .line 20
    add-int/lit8 v0, v0, 0x7

    .line 21
    .line 22
    div-int/lit8 v0, v0, 0x8

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    mul-int/2addr v0, v1

    .line 26
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->mDisplayInfoBufferSize:I

    .line 27
    .line 28
    const-string v0, "SemInputDeviceManagerService"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->mIsTouchInfoUpdated:Z

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_0
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->mIsTouchInfoUpdated:Z

    .line 46
    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :cond_1
    invoke-virtual {p1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->getFodInfo(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v3, ","

    .line 56
    .line 57
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    array-length v4, v3

    .line 62
    const-string v5, "Wrong information("

    .line 63
    .line 64
    const/4 v6, 0x3

    .line 65
    const-string v7, ")"

    .line 66
    .line 67
    const-string v8, "BSS_TouchMapReader"

    .line 68
    .line 69
    const/4 v9, 0x5

    .line 70
    if-eq v4, v6, :cond_2

    .line 71
    .line 72
    array-length v4, v3

    .line 73
    if-eq v4, v9, :cond_2

    .line 74
    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    :try_start_0
    aget-object v2, v3, v2

    .line 95
    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayHCellSize:I

    .line 101
    .line 102
    aget-object v0, v3, v0

    .line 103
    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayVCellSize:I

    .line 109
    .line 110
    aget-object v0, v3, v1

    .line 111
    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    mul-int/2addr v0, v1

    .line 117
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->mDisplayInfoBufferSize:I

    .line 118
    .line 119
    array-length v0, v3

    .line 120
    const/4 v1, -0x1

    .line 121
    if-ne v0, v9, :cond_3

    .line 122
    .line 123
    aget-object v0, v3, v6

    .line 124
    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    goto :goto_0

    .line 130
    :cond_3
    move v0, v1

    .line 131
    :goto_0
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayHCellMax:I

    .line 132
    .line 133
    array-length v0, v3

    .line 134
    if-ne v0, v9, :cond_4

    .line 135
    .line 136
    const/4 v0, 0x4

    .line 137
    aget-object v0, v3, v0

    .line 138
    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    :cond_4
    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayVCellMax:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayHCellSize:I

    .line 146
    .line 147
    if-lez v0, :cond_5

    .line 148
    .line 149
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayVCellSize:I

    .line 150
    .line 151
    if-gtz p0, :cond_6

    .line 152
    .line 153
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v0, "invalid display info ("

    .line 156
    .line 157
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public final readTouchMatrix()[[I
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 2
    .line 3
    const-string v1, "BSS_TouchMapReader"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    :goto_0
    move-object v0, v2

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {v0, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->getFodPosition(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    iget v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->mDisplayInfoBufferSize:I

    .line 20
    .line 21
    if-eq v4, v5, :cond_1

    .line 22
    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v5, "raw data has "

    .line 26
    .line 27
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    :goto_1
    iget v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayHCellSize:I

    .line 46
    .line 47
    if-lez v4, :cond_8

    .line 48
    .line 49
    iget v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayVCellSize:I

    .line 50
    .line 51
    if-lez v4, :cond_8

    .line 52
    .line 53
    if-eqz v0, :cond_8

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-gtz v4, :cond_2

    .line 60
    .line 61
    goto/16 :goto_6

    .line 62
    .line 63
    :cond_2
    iget v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayHCellSize:I

    .line 64
    .line 65
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->displayVCellSize:I

    .line 66
    .line 67
    const/4 v5, 0x2

    .line 68
    new-array v5, v5, [I

    .line 69
    .line 70
    aput v4, v5, v3

    .line 71
    .line 72
    const/4 v6, 0x0

    .line 73
    aput p0, v5, v6

    .line 74
    .line 75
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 76
    .line 77
    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, [[I

    .line 82
    .line 83
    move v7, v6

    .line 84
    move v8, v7

    .line 85
    move v9, v8

    .line 86
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    if-ge v7, v10, :cond_7

    .line 91
    .line 92
    add-int/lit8 v10, v7, 0x2

    .line 93
    .line 94
    :try_start_0
    invoke-virtual {v0, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    const/16 v11, 0x10

    .line 99
    .line 100
    invoke-static {v7, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 101
    .line 102
    .line 103
    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_3

    .line 105
    :catch_0
    move v7, v6

    .line 106
    :goto_3
    move v11, v6

    .line 107
    :goto_4
    const/16 v12, 0x8

    .line 108
    .line 109
    if-ge v11, v12, :cond_6

    .line 110
    .line 111
    aget-object v12, v5, v9

    .line 112
    .line 113
    shr-int v13, v7, v11

    .line 114
    .line 115
    and-int/2addr v13, v3

    .line 116
    if-ne v13, v3, :cond_3

    .line 117
    .line 118
    move v13, v3

    .line 119
    goto :goto_5

    .line 120
    :cond_3
    move v13, v6

    .line 121
    :goto_5
    aput v13, v12, v8

    .line 122
    .line 123
    add-int/lit8 v8, v8, 0x1

    .line 124
    .line 125
    if-ne v8, v4, :cond_5

    .line 126
    .line 127
    add-int/lit8 v9, v9, 0x1

    .line 128
    .line 129
    if-ne v9, p0, :cond_4

    .line 130
    .line 131
    return-object v5

    .line 132
    :cond_4
    move v8, v6

    .line 133
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_6
    move v7, v10

    .line 137
    goto :goto_2

    .line 138
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v0, "invalid data("

    .line 141
    .line 142
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v0, ", "

    .line 149
    .line 150
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v0, ")"

    .line 157
    .line 158
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    :cond_8
    :goto_6
    return-object v2
.end method
