.class public Lcom/samsung/android/knox/ddar/DualDARPolicy;
.super Ljava/lang/Object;
.source "DualDARPolicy.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getDualDARVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "0"

    .line 464
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "1.5.1"

    return-object v0

    :cond_0
    const-string v0, "1.5.0"

    return-object v0
.end method
