.class public Landroidx/reflect/os/SeslUserHandleReflector;
.super Ljava/lang/Object;
.source "SeslUserHandleReflector.java"


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

    .line 17
    const-class v0, Landroid/os/UserHandle;

    sput-object v0, Landroidx/reflect/os/SeslUserHandleReflector;->mClass:Ljava/lang/Class;

    return-void
.end method

.method public static myUserId()I
    .locals 4

    .line 25
    sget-object v0, Landroidx/reflect/os/SeslUserHandleReflector;->mClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "hidden_myUserId"

    invoke-static {v0, v3, v2}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    .line 31
    invoke-static {v2, v0, v3}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 33
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    return v1
.end method
