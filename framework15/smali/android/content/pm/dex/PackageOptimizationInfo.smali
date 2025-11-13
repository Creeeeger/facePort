.class public Landroid/content/pm/dex/PackageOptimizationInfo;
.super Ljava/lang/Object;
.source "PackageOptimizationInfo.java"


# instance fields
.field private final greylist-max-o mCompilationFilter:I

.field private final greylist-max-o mCompilationReason:I


# direct methods
.method public constructor greylist-max-o <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/content/pm/dex/PackageOptimizationInfo;->mCompilationReason:I

    iput p1, p0, Landroid/content/pm/dex/PackageOptimizationInfo;->mCompilationFilter:I

    return-void
.end method

.method public static greylist-max-o createWithNoInfo()Landroid/content/pm/dex/PackageOptimizationInfo;
    .locals 2

    new-instance v0, Landroid/content/pm/dex/PackageOptimizationInfo;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/content/pm/dex/PackageOptimizationInfo;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public greylist-max-o getCompilationFilter()I
    .locals 1

    iget v0, p0, Landroid/content/pm/dex/PackageOptimizationInfo;->mCompilationFilter:I

    return v0
.end method

.method public greylist-max-o getCompilationReason()I
    .locals 1

    iget v0, p0, Landroid/content/pm/dex/PackageOptimizationInfo;->mCompilationReason:I

    return v0
.end method
