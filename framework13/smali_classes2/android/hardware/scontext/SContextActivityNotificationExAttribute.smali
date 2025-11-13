.class public Landroid/hardware/scontext/SContextActivityNotificationExAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextActivityNotificationExAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist ACTIVITY_STATUS_MAX:I = 0x5

.field private static final blacklist TAG:Ljava/lang/String; = "SContextActivityNotificationExAttribute"


# instance fields
.field private blacklist mActivityFilter:[I

.field private blacklist mDuration:I


# direct methods
.method constructor blacklist <init>()V
    .locals 3

    .line 43
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->mActivityFilter:[I

    .line 38
    const/16 v0, 0x1e

    iput v0, p0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->mDuration:I

    .line 44
    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->setAttribute()V

    .line 45
    return-void
.end method

.method public constructor blacklist <init>([II)V
    .locals 3
    .param p1, "activityFilter"    # [I
    .param p2, "duration"    # I

    .line 67
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->mActivityFilter:[I

    .line 38
    const/16 v0, 0x1e

    iput v0, p0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->mDuration:I

    .line 68
    iput-object p1, p0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->mActivityFilter:[I

    .line 69
    iput p2, p0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->mDuration:I

    .line 70
    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->setAttribute()V

    .line 71
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    .line 103
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v0, "attribute":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->mActivityFilter:[I

    const-string v2, "activity_filter"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 105
    iget v1, p0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->mDuration:I

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    const/16 v1, 0x1e

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 107
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 7

    .line 76
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->mActivityFilter:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 77
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->mActivityFilter:[I

    array-length v4, v3

    const-string v5, "SContextActivityNotificationExAttribute"

    if-ge v2, v4, :cond_5

    .line 79
    aget v3, v3, v2

    if-ltz v3, :cond_1

    const/4 v4, 0x5

    if-le v3, v4, :cond_2

    .line 81
    :cond_1
    const/16 v4, 0x1e

    if-eq v3, v4, :cond_2

    .line 82
    const-string v3, "The activity status is wrong."

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return v1

    .line 86
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 88
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_3

    .line 89
    const-string v4, "This activity status cannot have duplicated status."

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v1

    .line 87
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 78
    .end local v3    # "j":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v2    # "i":I
    :cond_5
    iget v2, p0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;->mDuration:I

    if-gez v2, :cond_6

    .line 96
    const-string v2, "The duration is wrong."

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return v1

    .line 99
    :cond_6
    const/4 v1, 0x1

    return v1
.end method
