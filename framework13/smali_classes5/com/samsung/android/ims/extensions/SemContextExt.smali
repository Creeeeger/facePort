.class public Lcom/samsung/android/ims/extensions/SemContextExt;
.super Ljava/lang/Object;
.source "SemContextExt.java"


# static fields
.field public static final blacklist ALL:Landroid/os/UserHandle;

.field public static final blacklist CURRENT:Landroid/os/UserHandle;

.field public static final blacklist CURRENT_OR_SELF:Landroid/os/UserHandle;

.field public static final blacklist OWNER:Landroid/os/UserHandle;

.field public static final blacklist STATUS_BAR_SERVICE:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 25
    const-class v0, Landroid/os/UserHandle;

    const-string v1, "OWNER"

    invoke-static {v1, v0}, Lcom/samsung/android/ims/extensions/SemReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    sput-object v0, Lcom/samsung/android/ims/extensions/SemContextExt;->OWNER:Landroid/os/UserHandle;

    .line 27
    const-class v0, Landroid/os/UserHandle;

    const-string v1, "CURRENT_OR_SELF"

    invoke-static {v1, v0}, Lcom/samsung/android/ims/extensions/SemReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    sput-object v0, Lcom/samsung/android/ims/extensions/SemContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 30
    const-class v0, Landroid/os/UserHandle;

    const-string v1, "CURRENT"

    invoke-static {v1, v0}, Lcom/samsung/android/ims/extensions/SemReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    sput-object v0, Lcom/samsung/android/ims/extensions/SemContextExt;->CURRENT:Landroid/os/UserHandle;

    .line 33
    const-class v0, Landroid/os/UserHandle;

    const-string v1, "ALL"

    invoke-static {v1, v0}, Lcom/samsung/android/ims/extensions/SemReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    sput-object v0, Lcom/samsung/android/ims/extensions/SemContextExt;->ALL:Landroid/os/UserHandle;

    .line 35
    const-class v0, Landroid/content/Context;

    const-string v1, "STATUS_BAR_SERVICE"

    invoke-static {v1, v0}, Lcom/samsung/android/ims/extensions/SemReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/ims/extensions/SemContextExt;->STATUS_BAR_SERVICE:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 42
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "bindServiceAsUser"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Intent;

    aput-object v5, v4, v0

    const-class v5, Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-class v5, Landroid/os/UserHandle;

    const/4 v8, 0x3

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 44
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v0

    aput-object p2, v2, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object p4, v2, v8

    invoke-static {v1, p0, v2}, Lcom/samsung/android/ims/extensions/SemReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 47
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 45
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 49
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    nop

    .line 51
    :goto_0
    return v0
.end method
