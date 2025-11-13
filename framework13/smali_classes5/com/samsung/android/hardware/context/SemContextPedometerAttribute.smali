.class public Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextPedometerAttribute.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MODE_EXERCISE:I = 0x1

.field private static final blacklist MODE_USER_INFO:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "SemContextPedometerAttribute"


# instance fields
.field private blacklist mExerciseMode:I

.field private blacklist mGender:I

.field private blacklist mHeight:D

.field private blacklist mMode:I

.field private blacklist mWeight:D


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mGender:I

    .line 57
    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mHeight:D

    .line 58
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mWeight:D

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mExerciseMode:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mMode:I

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mMode:I

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->setAttribute()V

    .line 68
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 3
    .param p1, "exerciseMode"    # I

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mGender:I

    .line 57
    const-wide v1, 0x4065400000000000L    # 170.0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mHeight:D

    .line 58
    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mWeight:D

    .line 59
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mExerciseMode:I

    .line 60
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mMode:I

    .line 118
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mMode:I

    .line 119
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mExerciseMode:I

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->setAttribute()V

    .line 121
    return-void
.end method

.method public constructor whitelist <init>(IDD)V
    .locals 2
    .param p1, "gender"    # I
    .param p2, "height"    # D
    .param p4, "weight"    # D

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mGender:I

    .line 57
    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mHeight:D

    .line 58
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mWeight:D

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mExerciseMode:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mMode:I

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mMode:I

    .line 95
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mGender:I

    .line 96
    iput-wide p2, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mHeight:D

    .line 97
    iput-wide p4, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mWeight:D

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->setAttribute()V

    .line 99
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mGender:I

    .line 57
    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mHeight:D

    .line 58
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mWeight:D

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mExerciseMode:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mMode:I

    .line 75
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 4

    .line 150
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 151
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mMode:I

    const-string v2, "mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mMode:I

    if-nez v1, :cond_0

    .line 153
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mGender:I

    const-string v2, "gender"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    iget-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mHeight:D

    const-string v3, "height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 155
    iget-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mWeight:D

    const-string/jumbo v3, "weight"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 157
    :cond_0
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mExerciseMode:I

    const-string v2, "exercise_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    :goto_0
    const/4 v1, 0x2

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 160
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 8

    .line 129
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mGender:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "SemContextPedometerAttribute"

    if-lt v0, v1, :cond_4

    const/4 v4, 0x2

    if-le v0, v4, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iget-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mHeight:D

    const-wide/16 v6, 0x0

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_1

    .line 135
    const-string v0, "The height is wrong."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return v2

    .line 138
    :cond_1
    iget-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mWeight:D

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_2

    .line 139
    const-string v0, "The weight is wrong."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return v2

    .line 142
    :cond_2
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mExerciseMode:I

    const/4 v4, -0x1

    if-ge v0, v4, :cond_3

    .line 143
    const-string v0, "The exercise mode is wrong."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return v2

    .line 146
    :cond_3
    return v1

    .line 131
    :cond_4
    :goto_0
    const-string v0, "The gender is wrong."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return v2
.end method
