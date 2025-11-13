.class public Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextActivityNotificationExAttribute.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist STATUS_MAX:I = 0x5

.field private static final blacklist TAG:Ljava/lang/String; = "SemContextActivityNotificationExAttribute"


# instance fields
.field private blacklist mActivityFilter:[I

.field private blacklist mDuration:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 3

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mActivityFilter:[I

    .line 58
    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mDuration:I

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mActivityFilter:[I

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->setAttribute()V

    .line 66
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 72
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mActivityFilter:[I

    .line 58
    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mDuration:I

    .line 73
    return-void
.end method

.method public constructor blacklist <init>([II)V
    .locals 3
    .param p1, "activityFilter"    # [I
    .param p2, "duration"    # I

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mActivityFilter:[I

    .line 58
    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mDuration:I

    .line 94
    if-eqz p1, :cond_0

    .line 95
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mActivityFilter:[I

    .line 96
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mDuration:I

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->setAttribute()V

    goto :goto_0

    .line 100
    :cond_0
    const-string v0, "SemContextActivityNotificationExAttribute"

    const-string v1, "The activityFilter is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v0, "attribute":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mActivityFilter:[I

    const-string v2, "activity_filter"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 138
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mDuration:I

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    const/16 v1, 0x1e

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 140
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 7

    .line 110
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mActivityFilter:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 111
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mActivityFilter:[I

    array-length v4, v3

    const-string v5, "SemContextActivityNotificationExAttribute"

    if-ge v2, v4, :cond_5

    .line 113
    aget v3, v3, v2

    if-ltz v3, :cond_1

    const/4 v4, 0x5

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0x1e

    if-eq v3, v4, :cond_2

    .line 116
    const-string v3, "The activity status is wrong."

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return v1

    .line 119
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 121
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 122
    const-string v4, "This activity status cannot have duplicated status."

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return v1

    .line 120
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 112
    .end local v3    # "j":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    .end local v2    # "i":I
    :cond_5
    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mDuration:I

    if-gez v2, :cond_6

    .line 129
    const-string v2, "The duration is wrong."

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return v1

    .line 132
    :cond_6
    const/4 v1, 0x1

    return v1
.end method
