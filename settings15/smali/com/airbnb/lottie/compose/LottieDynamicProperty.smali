.class public final Lcom/airbnb/lottie/compose/LottieDynamicProperty;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final callback:Lkotlin/jvm/functions/Function1;

.field public final keyPath:Lcom/airbnb/lottie/model/KeyPath;

.field public final property:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/airbnb/lottie/model/KeyPath;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "keyPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->property:Ljava/lang/Object;

    iput-object p2, p0, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->keyPath:Lcom/airbnb/lottie/model/KeyPath;

    iput-object p3, p0, Lcom/airbnb/lottie/compose/LottieDynamicProperty;->callback:Lkotlin/jvm/functions/Function1;

    return-void
.end method
