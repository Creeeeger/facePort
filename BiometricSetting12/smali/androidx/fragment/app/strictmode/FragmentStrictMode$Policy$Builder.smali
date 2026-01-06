.class public final Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
.super Ljava/lang/Object;
.source "FragmentStrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->flags:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public build()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->listener:Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->flags:Ljava/util/Set;

    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->PENALTY_DEATH:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->penaltyLog()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;

    :cond_0
    new-instance v0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    iget-object v1, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->flags:Ljava/util/Set;

    iget-object v2, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->listener:Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;-><init>(Ljava/util/Set;Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;Landroidx/fragment/app/strictmode/FragmentStrictMode$1;)V

    return-object v0
.end method

.method public penaltyDeath()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->flags:Ljava/util/Set;

    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->PENALTY_DEATH:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public penaltyListener(Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->listener:Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;

    return-object p0
.end method

.method public penaltyLog()Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;->flags:Ljava/util/Set;

    sget-object v1, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->PENALTY_LOG:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
