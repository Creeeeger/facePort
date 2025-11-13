.class public final synthetic Lcom/samsung/android/settings/privacy/SecurityDashboardUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:[Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils$$ExternalSyntheticLambda2;->f$0:[Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils$$ExternalSyntheticLambda2;->f$1:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils$$ExternalSyntheticLambda2;->f$0:[Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils$$ExternalSyntheticLambda2;->f$1:Ljava/util/HashMap;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    const-string p2, "0"

    aput-object p2, v0, v2

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne p2, v1, :cond_1

    const-string p2, "1"

    aput-object p2, v0, v2

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->CRITICAL:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne p2, v1, :cond_2

    const-string p2, "2"

    aput-object p2, v0, v2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->NONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne p2, v1, :cond_3

    const-string p2, "3"

    aput-object p2, v0, v2

    :cond_3
    :goto_0
    aget-object p2, v0, v2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
