.class public final Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;
.super Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mUserHandle:Lcom/android/systemui/edgelighting/reflection/content/ContextReflection$UserHandleReflection;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPackageContextAsUser(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/Context;
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v4, p0, Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;->mUserHandle:Lcom/android/systemui/edgelighting/reflection/content/ContextReflection$UserHandleReflection;

    if-nez v4, :cond_0

    new-instance v4, Lcom/android/systemui/edgelighting/reflection/content/ContextReflection$UserHandleReflection;

    invoke-direct {v4, v3}, Lcom/android/systemui/edgelighting/reflection/content/ContextReflection$UserHandleReflection;-><init>(I)V

    iput-object v4, p0, Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;->mUserHandle:Lcom/android/systemui/edgelighting/reflection/content/ContextReflection$UserHandleReflection;

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;->mUserHandle:Lcom/android/systemui/edgelighting/reflection/content/ContextReflection$UserHandleReflection;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->createInstance([Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    aput-object v2, v5, v0

    const/4 v0, 0x2

    const-class v2, Landroid/os/UserHandle;

    aput-object v2, v5, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p2, v0, v1}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "createPackageContextAsUser"

    invoke-virtual {p0, p1, v0, v5, p2}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Landroid/content/Context;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getBaseClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "android.content.Context"

    return-object p0
.end method
