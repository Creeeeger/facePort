.class public abstract Lcom/samsung/android/knox/mtd/MtdResultCallback;
.super Ljava/lang/Object;
.source "MtdResultCallback.java"


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract greylist onFinished(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/mtd/AnalysisResult;",
            ">;)V"
        }
    .end annotation
.end method
