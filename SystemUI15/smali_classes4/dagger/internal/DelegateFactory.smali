.class public final Ldagger/internal/DelegateFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public delegate:Ldagger/internal/Provider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDelegate(Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 1

    check-cast p0, Ldagger/internal/DelegateFactory;

    iget-object v0, p0, Ldagger/internal/DelegateFactory;->delegate:Ldagger/internal/Provider;

    if-nez v0, :cond_0

    iput-object p1, p0, Ldagger/internal/DelegateFactory;->delegate:Ldagger/internal/Provider;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ldagger/internal/DelegateFactory;->delegate:Ldagger/internal/Provider;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
