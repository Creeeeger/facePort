.class public final Landroidx/constraintlayout/core/Cache;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mArrayRowPool:Landroidx/constraintlayout/core/Pools$SimplePool;

.field public mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

.field public final mSolverVariablePool:Landroidx/constraintlayout/core/Pools$SimplePool;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/constraintlayout/core/Pools$SimplePool;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/Pools$SimplePool;-><init>(I)V

    new-instance v0, Landroidx/constraintlayout/core/Pools$SimplePool;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/core/Cache;->mArrayRowPool:Landroidx/constraintlayout/core/Pools$SimplePool;

    new-instance v0, Landroidx/constraintlayout/core/Pools$SimplePool;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/core/Cache;->mSolverVariablePool:Landroidx/constraintlayout/core/Pools$SimplePool;

    const/16 v0, 0x20

    new-array v0, v0, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object v0, p0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    return-void
.end method
