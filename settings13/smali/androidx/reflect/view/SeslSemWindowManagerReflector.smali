.class public Landroidx/reflect/view/SeslSemWindowManagerReflector;
.super Ljava/lang/Object;
.source "SeslSemWindowManagerReflector.java"


# static fields
.field private static mClassName:Ljava/lang/String; = "com.samsung.android.view.SemWindowManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static getInstance()Ljava/lang/Object;
    .locals 4

    .line 20
    sget-object v0, Landroidx/reflect/view/SeslSemWindowManagerReflector;->mClassName:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getInstance"

    invoke-static {v0, v3, v2}, Landroidx/reflect/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    invoke-static {v2, v0, v1}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Landroidx/reflect/view/SeslSemWindowManagerReflector;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    return-object v2
.end method

.method public static isTableMode()Z
    .locals 4

    .line 53
    sget-object v0, Landroidx/reflect/view/SeslSemWindowManagerReflector;->mClassName:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "isTableMode"

    invoke-static {v0, v3, v2}, Landroidx/reflect/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Landroidx/reflect/view/SeslSemWindowManagerReflector;->getInstance()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 57
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method
