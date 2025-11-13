.class public Landroidx/reflect/content/res/SeslConfigurationReflector;
.super Ljava/lang/Object;
.source "SeslConfigurationReflector.java"


# static fields
.field private static final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Landroid/content/res/Configuration;

    sput-object v0, Landroidx/reflect/content/res/SeslConfigurationReflector;->mClass:Ljava/lang/Class;

    return-void
.end method

.method private static getField_SEM_DESKTOP_MODE_ENABLED()I
    .locals 4

    .line 59
    sget-object v0, Landroidx/reflect/content/res/SeslConfigurationReflector;->mClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "hidden_SEM_DESKTOP_MODE_ENABLED"

    invoke-static {v0, v3, v2}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v3, v1, [Ljava/lang/Object;

    .line 61
    invoke-static {v2, v0, v3}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 70
    :cond_0
    instance-of v0, v2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 71
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method private static getField_semDesktopModeEnabled(Landroid/content/res/Configuration;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 36
    sget-object v0, Landroidx/reflect/content/res/SeslConfigurationReflector;->mClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "hidden_semDesktopModeEnabled"

    invoke-static {v0, v3, v2}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    invoke-static {p0, v0, v1}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 47
    :goto_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 48
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static isDexEnabled(Landroid/content/res/Configuration;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 22
    invoke-static {p0}, Landroidx/reflect/content/res/SeslConfigurationReflector;->getField_semDesktopModeEnabled(Landroid/content/res/Configuration;)I

    move-result p0

    invoke-static {}, Landroidx/reflect/content/res/SeslConfigurationReflector;->getField_SEM_DESKTOP_MODE_ENABLED()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
