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

    const-string v0, "OWNER"

    const-class v1, Landroid/os/UserHandle;

    invoke-static {v0, v1}, Lcom/samsung/android/ims/extensions/SemReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    sput-object v0, Lcom/samsung/android/ims/extensions/SemContextExt;->OWNER:Landroid/os/UserHandle;

    const-string v0, "CURRENT_OR_SELF"

    const-class v1, Landroid/os/UserHandle;

    invoke-static {v0, v1}, Lcom/samsung/android/ims/extensions/SemReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    sput-object v0, Lcom/samsung/android/ims/extensions/SemContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const-string v0, "CURRENT"

    const-class v1, Landroid/os/UserHandle;

    invoke-static {v0, v1}, Lcom/samsung/android/ims/extensions/SemReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    sput-object v0, Lcom/samsung/android/ims/extensions/SemContextExt;->CURRENT:Landroid/os/UserHandle;

    const-string v0, "ALL"

    const-class v1, Landroid/os/UserHandle;

    invoke-static {v0, v1}, Lcom/samsung/android/ims/extensions/SemReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    sput-object v0, Lcom/samsung/android/ims/extensions/SemContextExt;->ALL:Landroid/os/UserHandle;

    const-string v0, "STATUS_BAR_SERVICE"

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/ims/extensions/SemReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/ims/extensions/SemContextExt;->STATUS_BAR_SERVICE:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "bindServiceAsUser"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Intent;

    aput-object v4, v3, v0

    const-class v4, Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-class v4, Landroid/os/UserHandle;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, p2, v2, p4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/samsung/android/ims/extensions/SemReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    nop

    :goto_0
    return v0
.end method
