.class public abstract Lcom/android/systemui/keyguard/shared/model/KeyguardSection;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addViews(Landroidx/constraintlayout/widget/ConstraintLayout;)V
.end method

.method public abstract applyConstraints(Landroidx/constraintlayout/widget/ConstraintSet;)V
.end method

.method public abstract bindData(Landroidx/constraintlayout/widget/ConstraintLayout;)V
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->hashCode()I

    move-result p0

    return p0
.end method

.method public onRebuildBegin()V
    .locals 0

    return-void
.end method

.method public onRebuildEnd()V
    .locals 0

    return-void
.end method

.method public abstract removeViews(Landroidx/constraintlayout/widget/ConstraintLayout;)V
.end method
