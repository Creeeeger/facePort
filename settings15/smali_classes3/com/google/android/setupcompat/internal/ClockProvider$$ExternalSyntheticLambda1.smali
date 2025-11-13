.class public final synthetic Lcom/google/android/setupcompat/internal/ClockProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/setupcompat/internal/Ticker;


# instance fields
.field public final synthetic f$0:Lcom/google/android/setupcompat/internal/ClockProvider$Supplier;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/setupcompat/internal/ClockProvider$Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/ClockProvider$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/setupcompat/internal/ClockProvider$Supplier;

    return-void
.end method


# virtual methods
.method public final read()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/setupcompat/internal/ClockProvider$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/setupcompat/internal/ClockProvider$Supplier;

    invoke-interface {p0}, Lcom/google/android/setupcompat/internal/ClockProvider$Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
