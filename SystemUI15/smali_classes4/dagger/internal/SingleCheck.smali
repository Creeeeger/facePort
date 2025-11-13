.class public final Ldagger/internal/SingleCheck;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# static fields
.field public static final UNINITIALIZED:Ljava/lang/Object;


# instance fields
.field public volatile instance:Ljava/lang/Object;

.field public volatile provider:Ldagger/internal/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldagger/internal/SingleCheck;->UNINITIALIZED:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ldagger/internal/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ldagger/internal/SingleCheck;->UNINITIALIZED:Ljava/lang/Object;

    iput-object v0, p0, Ldagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    iput-object p1, p0, Ldagger/internal/SingleCheck;->provider:Ldagger/internal/Provider;

    return-void
.end method

.method public static provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;
    .locals 1

    instance-of v0, p0, Ldagger/internal/SingleCheck;

    if-nez v0, :cond_1

    instance-of v0, p0, Ldagger/internal/DoubleCheck;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ldagger/internal/SingleCheck;

    invoke-direct {v0, p0}, Ldagger/internal/SingleCheck;-><init>(Ldagger/internal/Provider;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ldagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    sget-object v1, Ldagger/internal/SingleCheck;->UNINITIALIZED:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ldagger/internal/SingleCheck;->provider:Ldagger/internal/Provider;

    if-nez v0, :cond_0

    iget-object v0, p0, Ldagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Ldagger/internal/SingleCheck;->provider:Ldagger/internal/Provider;

    :cond_1
    :goto_0
    return-object v0
.end method
