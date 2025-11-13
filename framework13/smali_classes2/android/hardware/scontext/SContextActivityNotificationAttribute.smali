.class public Landroid/hardware/scontext/SContextActivityNotificationAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextActivityNotificationAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist ACTIVITY_STATUS_MAX:I = 0x5

.field private static final blacklist TAG:Ljava/lang/String; = "SContextActivityNotificationAttribute"


# instance fields
.field private blacklist mActivityFilter:[I


# direct methods
.method constructor blacklist <init>()V
    .locals 3

    .line 41
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    .line 42
    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->setAttribute()V

    .line 43
    return-void
.end method

.method public constructor blacklist <init>([I)V
    .locals 3
    .param p1, "activityFilter"    # [I

    .line 61
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    .line 62
    iput-object p1, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    .line 63
    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->setAttribute()V

    .line 64
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v0, "attribute":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    const-string v2, "activity_filter"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 91
    const/16 v1, 0x1b

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 92
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 7

    .line 69
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 70
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    array-length v4, v3

    if-ge v2, v4, :cond_5

    .line 72
    aget v3, v3, v2

    const-string v4, "SContextActivityNotificationAttribute"

    if-ltz v3, :cond_4

    const/4 v5, 0x5

    if-le v3, v5, :cond_1

    goto :goto_2

    .line 77
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 79
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 80
    const-string v5, "This activity status cannot have duplicated status."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return v1

    .line 78
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 71
    .end local v3    # "j":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_4
    :goto_2
    const-string v3, "The activity status is wrong."

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return v1

    .line 85
    .end local v2    # "i":I
    :cond_5
    const/4 v1, 0x1

    return v1
.end method
