.class public Landroidx/reflect/feature/SeslFloatingFeatureReflector;
.super Ljava/lang/Object;
.source "SeslFloatingFeatureReflector.java"


# static fields
.field private static mClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.samsung.sesl.feature.SemFloatingFeature"

    .line 20
    sput-object v0, Landroidx/reflect/feature/SeslFloatingFeatureReflector;->mClassName:Ljava/lang/String;

    return-void
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "defaultValue"
        }
    .end annotation

    .line 51
    const-class v0, Ljava/lang/String;

    sget-object v1, Landroidx/reflect/feature/SeslFloatingFeatureReflector;->mClassName:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const-string v0, "hidden_getString"

    invoke-static {v1, v0, v3}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    aput-object p1, v2, v5

    .line 53
    invoke-static {v1, v0, v2}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 63
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 64
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    return-object p1
.end method
