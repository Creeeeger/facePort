.class public Lcom/samsung/android/sume/core/functional/ModelSelector$Item;
.super Ljava/lang/Object;
.source "ModelSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/functional/ModelSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public blacklist descriptorUpdater:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist name:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
