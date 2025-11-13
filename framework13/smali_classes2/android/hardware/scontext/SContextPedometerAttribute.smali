.class public Landroid/hardware/scontext/SContextPedometerAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextPedometerAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static blacklist MODE_EXERCISE:I = 0x0

.field private static blacklist MODE_USER_INFO:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "SContextPedometerAttribute"


# instance fields
.field private blacklist mExerciseMode:I

.field private blacklist mGender:I

.field private blacklist mHeight:D

.field private blacklist mMode:I

.field private blacklist mWeight:D


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x0

    sput v0, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_USER_INFO:I

    .line 33
    const/4 v0, 0x1

    sput v0, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_EXERCISE:I

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    .line 37
    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    .line 39
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    .line 43
    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    .line 49
    sget v0, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_USER_INFO:I

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    .line 50
    invoke-direct {p0}, Landroid/hardware/scontext/SContextPedometerAttribute;->setAttribute()V

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2
    .param p1, "exerciseMode"    # I

    .line 97
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    .line 37
    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    .line 39
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    .line 43
    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    .line 98
    sget v0, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_EXERCISE:I

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    .line 99
    iput p1, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    .line 100
    invoke-direct {p0}, Landroid/hardware/scontext/SContextPedometerAttribute;->setAttribute()V

    .line 101
    return-void
.end method

.method public constructor blacklist <init>(IDD)V
    .locals 2
    .param p1, "gender"    # I
    .param p2, "height"    # D
    .param p4, "weight"    # D

    .line 71
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    .line 37
    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    .line 39
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    .line 43
    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    .line 72
    sget v0, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_USER_INFO:I

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    .line 73
    iput p1, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    .line 74
    iput-wide p2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    .line 75
    iput-wide p4, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    .line 76
    invoke-direct {p0}, Landroid/hardware/scontext/SContextPedometerAttribute;->setAttribute()V

    .line 77
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 4

    .line 127
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 128
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    const-string v2, "mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    iget v1, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    sget v2, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_USER_INFO:I

    if-ne v1, v2, :cond_0

    .line 130
    iget v1, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    const-string v2, "gender"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    iget-wide v1, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    const-string v3, "height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 132
    iget-wide v1, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    const-string/jumbo v3, "weight"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 134
    :cond_0
    iget v1, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    const-string v2, "exercise_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    :goto_0
    const/4 v1, 0x2

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 137
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 8

    .line 106
    iget v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "SContextPedometerAttribute"

    if-lt v0, v1, :cond_4

    const/4 v4, 0x2

    if-le v0, v4, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-wide v4, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    const-wide/16 v6, 0x0

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_1

    .line 112
    const-string v0, "The height is wrong."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v2

    .line 115
    :cond_1
    iget-wide v4, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_2

    .line 116
    const-string v0, "The weight is wrong."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return v2

    .line 119
    :cond_2
    iget v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    const/4 v4, -0x1

    if-ge v0, v4, :cond_3

    .line 120
    const-string v0, "The exercise mode is wrong."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return v2

    .line 123
    :cond_3
    return v1

    .line 108
    :cond_4
    :goto_0
    const-string v0, "The gender is wrong."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return v2
.end method
