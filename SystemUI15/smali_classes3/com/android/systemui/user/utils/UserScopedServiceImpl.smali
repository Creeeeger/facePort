.class public final Lcom/android/systemui/user/utils/UserScopedServiceImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/user/utils/UserScopedService;


# instance fields
.field public final context:Landroid/content/Context;

.field public final serviceType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/user/utils/UserScopedServiceImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/user/utils/UserScopedServiceImpl;->serviceType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final forUser(Landroid/os/UserHandle;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/user/utils/UserScopedServiceImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/user/utils/UserScopedServiceImpl;->context:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/user/utils/UserScopedServiceImpl;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/user/utils/UserScopedServiceImpl;->serviceType:Ljava/lang/Class;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
