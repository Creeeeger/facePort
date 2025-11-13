.class public final Lcom/android/systemui/motiontool/MotionToolModule_Companion_ProvideMotionToolManagerFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final windowManagerGlobalProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/motiontool/MotionToolModule_Companion_ProvideMotionToolManagerFactory;->windowManagerGlobalProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static provideMotionToolManager(Landroid/view/WindowManagerGlobal;)Lcom/android/app/motiontool/MotionToolManager;
    .locals 3

    sget-object v0, Lcom/android/systemui/motiontool/MotionToolModule;->Companion:Lcom/android/systemui/motiontool/MotionToolModule$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/app/motiontool/MotionToolManager;->Companion:Lcom/android/app/motiontool/MotionToolManager$Companion;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/app/motiontool/MotionToolManager;->INSTANCE:Lcom/android/app/motiontool/MotionToolManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/app/motiontool/MotionToolManager;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/app/motiontool/MotionToolManager;-><init>(Landroid/view/WindowManagerGlobal;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/android/app/motiontool/MotionToolManager;->INSTANCE:Lcom/android/app/motiontool/MotionToolManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/motiontool/MotionToolModule_Companion_ProvideMotionToolManagerFactory;->windowManagerGlobalProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManagerGlobal;

    invoke-static {p0}, Lcom/android/systemui/motiontool/MotionToolModule_Companion_ProvideMotionToolManagerFactory;->provideMotionToolManager(Landroid/view/WindowManagerGlobal;)Lcom/android/app/motiontool/MotionToolManager;

    move-result-object p0

    return-object p0
.end method
