.class public final Landroid/internal/modules/utils/build/SdkLevel;
.super Ljava/lang/Object;
.source "SdkLevel.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist isAtLeastPreReleaseCodename(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "REL"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static blacklist isAtLeastR()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isAtLeastS()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isAtLeastSv2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isAtLeastT()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isAtLeastU()Z
    .locals 1

    nop

    nop

    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isAtLeastV()Z
    .locals 1

    nop

    nop

    const/4 v0, 0x1

    return v0
.end method
