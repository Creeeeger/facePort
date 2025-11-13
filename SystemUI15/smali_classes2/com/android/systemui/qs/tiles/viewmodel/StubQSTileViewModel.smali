.class public final Lcom/android/systemui/qs/tiles/viewmodel/StubQSTileViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/qs/tiles/viewmodel/StubQSTileViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/tiles/viewmodel/StubQSTileViewModel;

    invoke-direct {v0}, Lcom/android/systemui/qs/tiles/viewmodel/StubQSTileViewModel;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/tiles/viewmodel/StubQSTileViewModel;->INSTANCE:Lcom/android/systemui/qs/tiles/viewmodel/StubQSTileViewModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Don\'t call stubs"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final forceUpdate()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Don\'t call stubs"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getConfig()Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Don\'t call stubs"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getState()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Don\'t call stubs"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isAvailable()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Don\'t call stubs"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onActionPerformed(Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Don\'t call stubs"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onUserChanged(Landroid/os/UserHandle;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Don\'t call stubs"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
