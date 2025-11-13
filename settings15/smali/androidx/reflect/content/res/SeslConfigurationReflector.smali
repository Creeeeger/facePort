.class public abstract Landroidx/reflect/content/res/SeslConfigurationReflector;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final mClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/content/res/Configuration;

    sput-object v0, Landroidx/reflect/content/res/SeslConfigurationReflector;->mClass:Ljava/lang/Class;

    return-void
.end method

.method public static isDexEnabled(Landroid/content/res/Configuration;)Z
    .locals 9

    sget-object v0, Landroidx/reflect/content/res/SeslConfigurationReflector;->mClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "hidden_semDesktopModeEnabled"

    invoke-static {v0, v3, v2}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v2, " IllegalAccessException"

    const-string v3, " IllegalArgumentException"

    const-string v4, " InvocationTargetException"

    const-string v5, "SeslBaseReflector"

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v7, v4, v5, p0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v7, v3, v5, p0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_0

    :catch_2
    move-exception p0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v7, v2, v5, p0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :cond_0
    :goto_0
    move-object p0, v6

    :goto_1
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_2

    :cond_1
    const/4 p0, -0x1

    :goto_2
    sget-object v0, Landroidx/reflect/content/res/SeslConfigurationReflector;->mClass:Ljava/lang/Class;

    const-string v7, "hidden_SEM_DESKTOP_MODE_ENABLED"

    new-array v8, v1, [Ljava/lang/Class;

    invoke-static {v0, v7, v8}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0, v6, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v3, v4, v5, v2}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_3

    :catch_4
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v4, v3, v5, v2}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_3

    :catch_5
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v4, v2, v5, v3}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :cond_2
    :goto_3
    instance-of v0, v6, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4

    :cond_3
    move v0, v1

    :goto_4
    if-ne p0, v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method
