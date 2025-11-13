.class public Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextActivityNotificationForLocationAttribute.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist STATUS_MAX:I = 0x5

.field private static final blacklist TAG:Ljava/lang/String; = "SemContextActivityNotificationForLocationAttribute"


# instance fields
.field private blacklist mActivityFilter:[I

.field private blacklist mDuration:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 3

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mActivityFilter:[I

    .line 60
    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mDuration:I

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->setAttribute()V

    .line 69
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 77
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mActivityFilter:[I

    .line 60
    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mDuration:I

    .line 78
    return-void
.end method

.method public constructor blacklist <init>([II)V
    .locals 3
    .param p1, "activityFilter"    # [I
    .param p2, "duration"    # I

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mActivityFilter:[I

    .line 60
    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mDuration:I

    .line 99
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mActivityFilter:[I

    .line 100
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mDuration:I

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->setAttribute()V

    .line 103
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    .line 137
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v0, "attribute":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mActivityFilter:[I

    const-string v2, "activity_filter"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 139
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mDuration:I

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    const/16 v1, 0x1e

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 141
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 7

    .line 111
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mActivityFilter:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 112
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mActivityFilter:[I

    array-length v4, v3

    const-string v5, "SemContextActivityNotificationForLocationAttribute"

    if-ge v2, v4, :cond_5

    .line 114
    aget v3, v3, v2

    if-ltz v3, :cond_1

    const/4 v4, 0x5

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0x1e

    if-eq v3, v4, :cond_2

    .line 117
    const-string v3, "The activity status is wrong."

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v1

    .line 120
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 122
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 123
    const-string v4, "This activity status cannot have duplicated status."

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return v1

    .line 121
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 113
    .end local v3    # "j":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v2    # "i":I
    :cond_5
    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocationAttribute;->mDuration:I

    if-gez v2, :cond_6

    .line 130
    const-string v2, "The duration is wrong."

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return v1

    .line 133
    :cond_6
    const/4 v1, 0x1

    return v1
.end method
