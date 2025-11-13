.class public final Landroid/view/inspector/IntFlagMapping;
.super Ljava/lang/Object;
.source "IntFlagMapping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inspector/IntFlagMapping$Flag;
    }
.end annotation


# instance fields
.field private final blacklist mFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/inspector/IntFlagMapping$Flag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/inspector/IntFlagMapping;->mFlags:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist add(IILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/view/inspector/IntFlagMapping;->mFlags:Ljava/util/List;

    new-instance v1, Landroid/view/inspector/IntFlagMapping$Flag;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Landroid/view/inspector/IntFlagMapping$Flag;-><init>(IILjava/lang/String;Landroid/view/inspector/IntFlagMapping$Flag-IA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist get(I)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroid/view/inspector/IntFlagMapping;->mFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v1, p0, Landroid/view/inspector/IntFlagMapping;->mFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inspector/IntFlagMapping$Flag;

    invoke-static {v2, p1}, Landroid/view/inspector/IntFlagMapping$Flag;->-$$Nest$misEnabledFor(Landroid/view/inspector/IntFlagMapping$Flag;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Landroid/view/inspector/IntFlagMapping$Flag;->-$$Nest$fgetmName(Landroid/view/inspector/IntFlagMapping$Flag;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method
