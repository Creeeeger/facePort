.class public final Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;
.super Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mClassLoader:Ljava/lang/ClassLoader;

.field public final mInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroid/content/Context;Landroid/content/Context;Ljava/lang/ClassLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Context;",
            "Landroid/content/Context;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;-><init>(Ljava/lang/Class;)V

    iput-object p4, p0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Class;

    const/4 p4, 0x0

    const-class v0, Landroid/content/Context;

    aput-object v0, p1, p4

    const/4 p4, 0x1

    const-class v0, Landroid/content/Context;

    aput-object v0, p1, p4

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->createInstance([Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mInstance:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getBaseClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.sdk.edgelighting.AbsEdgeLightingEffect"

    return-object p0
.end method
