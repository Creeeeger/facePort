.class public final Lcom/android/keyguard/dagger/KeyguardDisplayModule_Companion_GetDisplayContextFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final contextProvider:Ljavax/inject/Provider;

.field public final optionalDisplayProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/dagger/KeyguardDisplayModule_Companion_GetDisplayContextFactory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/keyguard/dagger/KeyguardDisplayModule_Companion_GetDisplayContextFactory;->optionalDisplayProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static getDisplayContext(Landroid/content/Context;Ljava/util/Optional;)Landroid/content/Context;
    .locals 2

    sget-object v0, Lcom/android/keyguard/dagger/KeyguardDisplayModule;->Companion:Lcom/android/keyguard/dagger/KeyguardDisplayModule$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Display;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/dagger/KeyguardDisplayModule_Companion_GetDisplayContextFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/keyguard/dagger/KeyguardDisplayModule_Companion_GetDisplayContextFactory;->optionalDisplayProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    invoke-static {v0, p0}, Lcom/android/keyguard/dagger/KeyguardDisplayModule_Companion_GetDisplayContextFactory;->getDisplayContext(Landroid/content/Context;Ljava/util/Optional;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method
