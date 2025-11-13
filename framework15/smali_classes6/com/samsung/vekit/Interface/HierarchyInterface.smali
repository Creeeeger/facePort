.class public interface abstract Lcom/samsung/vekit/Interface/HierarchyInterface;
.super Ljava/lang/Object;
.source "HierarchyInterface.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract blacklist attach(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract blacklist attach(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public abstract blacklist attach(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract blacklist attachAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract blacklist clear()V
.end method

.method public abstract blacklist clearAnimations()V
.end method

.method public abstract blacklist contains(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract blacklist detach(I)V
.end method

.method public abstract blacklist detach(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract blacklist detachAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract blacklist getAnimation(I)Lcom/samsung/vekit/Animation/Animation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract blacklist getAnimationIndex(Lcom/samsung/vekit/Animation/Animation;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;)I"
        }
    .end annotation
.end method

.method public abstract blacklist getAnimationList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract blacklist getChild(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public abstract blacklist getChildSize()I
.end method

.method public abstract blacklist getChildren()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract blacklist getIndex(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract blacklist isEmpty()Z
.end method

.method public abstract blacklist swap(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation
.end method
