.class public final Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final context:Landroid/content/Context;

.field public final serviceStateFlowFactory:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository$1;

    invoke-direct {v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository$1;-><init>(Landroid/content/Context;)V

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SignalStrengthRepository;->serviceStateFlowFactory:Lkotlin/jvm/functions/Function1;

    return-void
.end method
