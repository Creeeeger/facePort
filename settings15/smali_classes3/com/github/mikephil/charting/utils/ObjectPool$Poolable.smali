.class public abstract Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public currentOwnerId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;->currentOwnerId:I

    return-void
.end method


# virtual methods
.method public abstract instantiate()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;
.end method
