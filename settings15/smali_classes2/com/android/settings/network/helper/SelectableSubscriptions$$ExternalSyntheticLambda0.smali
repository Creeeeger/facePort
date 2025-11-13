.class public final synthetic Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicIntegerArray;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicIntegerArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result p0

    return p0
.end method
