.class public final Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;
.super Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;
.source "MFDescriptorHolder.java"

# interfaces
.implements Lcom/samsung/android/sume/core/functional/PlaceHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/samsung/android/sume/core/descriptor/MFDescriptor;",
        ">",
        "Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;",
        "Lcom/samsung/android/sume/core/functional/PlaceHolder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field blacklist descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field blacklist mfDescriptorProvider:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "[",
            "Ljava/lang/Object;",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field blacklist vararg:[Ljava/lang/Object;


# direct methods
.method public varargs constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;[Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;->vararg:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;->descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    invoke-interface {p1}, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;->getFilterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;->setFilterId(Ljava/lang/String;)Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;

    invoke-interface {p1}, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;->getFilterType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;->setFilterType(Ljava/lang/Class;)Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;

    return-void
.end method

.method public varargs constructor blacklist <init>(Ljava/util/function/Function;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "[",
            "Ljava/lang/Object;",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptor;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;->vararg:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;->mfDescriptorProvider:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public blacklist getParameters()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;->vararg:[Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;->descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isNotEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;->descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic blacklist lambda$reset$0$com-samsung-android-sume-core-descriptor-MFDescriptorHolder(Ljava/util/function/Function;)Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;->vararg:[Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    return-object v0
.end method

.method synthetic blacklist lambda$reset$1$com-samsung-android-sume-core-descriptor-MFDescriptorHolder()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;->mfDescriptorProvider:Ljava/util/function/Function;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    return-object v0
.end method

.method public blacklist put(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;->descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    return-void
.end method

.method public bridge synthetic blacklist put(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;->put(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)V

    return-void
.end method

.method public blacklist reset()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;->descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;->vararg:[Ljava/lang/Object;

    iput-object v1, p0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;->descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    iput-object v1, p0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;->mfDescriptorProvider:Ljava/util/function/Function;

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;->copyTo(Lcom/samsung/android/sume/core/types/OptionBase;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic blacklist reset()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;->reset()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    return-object v0
.end method
