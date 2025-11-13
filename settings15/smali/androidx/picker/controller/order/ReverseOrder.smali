.class public final Landroidx/picker/controller/order/ReverseOrder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/controller/order/Order;


# instance fields
.field public final base:Landroidx/picker/controller/order/Order;


# direct methods
.method public constructor <init>(Landroidx/picker/controller/order/StrengthOrder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/controller/order/ReverseOrder;->base:Landroidx/picker/controller/order/Order;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Landroidx/picker/controller/order/ReverseOrder;->base:Landroidx/picker/controller/order/Order;

    invoke-interface {p0, p2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
