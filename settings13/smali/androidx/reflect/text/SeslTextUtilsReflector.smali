.class public Landroidx/reflect/text/SeslTextUtilsReflector;
.super Ljava/lang/Object;
.source "SeslTextUtilsReflector.java"


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

    .line 18
    const-class v0, Landroid/text/TextUtils;

    sput-object v0, Landroidx/reflect/text/SeslTextUtilsReflector;->mClass:Ljava/lang/Class;

    return-void
.end method

.method public static semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "paint",
            "text",
            "prefix"
        }
    .end annotation

    .line 31
    sget-object v0, Landroidx/reflect/text/SeslTextUtilsReflector;->mClass:Ljava/lang/Class;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/text/TextPaint;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/CharSequence;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, [C

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "hidden_semGetPrefixCharForSpan"

    invoke-static {v0, v3, v2}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object p1, v1, v5

    aput-object p2, v1, v6

    const/4 p0, 0x0

    .line 42
    invoke-static {p0, v0, v1}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 43
    instance-of p2, p1, [C

    if-eqz p2, :cond_0

    .line 44
    check-cast p1, [C

    return-object p1

    :cond_0
    return-object p0

    :cond_1
    new-array p0, v4, [C

    return-object p0
.end method
