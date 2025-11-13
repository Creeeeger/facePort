.class public Landroidx/reflect/os/SeslSystemPropertiesReflector;
.super Ljava/lang/Object;
.source "SeslSystemPropertiesReflector.java"


# static fields
.field private static mClassName:Ljava/lang/String; = "android.os.SemSystemProperties"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getSalesCode()Ljava/lang/String;
    .locals 4

    .line 38
    sget-object v0, Landroidx/reflect/os/SeslSystemPropertiesReflector;->mClassName:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getSalesCode"

    invoke-static {v0, v3, v2}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    .line 44
    invoke-static {v2, v0, v1}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 46
    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    return-object v2
.end method

.method public static getStringProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 21
    sget-object v0, Landroidx/reflect/os/SeslSystemPropertiesReflector;->mClassName:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "get"

    invoke-static {v0, v3, v2}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    .line 27
    invoke-static {v2, v0, v1}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 28
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 29
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    return-object v2
.end method
