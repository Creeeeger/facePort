.class public Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;
.super Ljava/lang/Object;
.source "NNFWProfile.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final blacklist fw:Lcom/samsung/android/sume/core/types/nn/NNFW;

.field private final blacklist hw:Lcom/samsung/android/sume/core/types/HwUnit;

.field private blacklist units:I


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/types/nn/NNFW;Lcom/samsung/android/sume/core/types/HwUnit;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;->fw:Lcom/samsung/android/sume/core/types/nn/NNFW;

    iput-object p2, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;->hw:Lcom/samsung/android/sume/core/types/HwUnit;

    iput p3, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;->units:I

    return-void
.end method


# virtual methods
.method public blacklist flatten()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;->units:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;->units:I

    invoke-static {v0, p0}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getFw()Lcom/samsung/android/sume/core/types/nn/NNFW;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;->fw:Lcom/samsung/android/sume/core/types/nn/NNFW;

    return-object v0
.end method

.method public blacklist getHw()Lcom/samsung/android/sume/core/types/HwUnit;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;->hw:Lcom/samsung/android/sume/core/types/HwUnit;

    return-object v0
.end method

.method public blacklist getUnits()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sume/core/descriptor/nn/NNFWProfile;->units:I

    return v0
.end method
