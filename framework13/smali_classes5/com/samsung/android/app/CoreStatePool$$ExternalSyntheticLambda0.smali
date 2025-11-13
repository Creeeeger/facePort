.class public final synthetic Lcom/samsung/android/app/CoreStatePool$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/Bundle;

.field public final synthetic blacklist f$1:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/Bundle;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/CoreStatePool$$ExternalSyntheticLambda0;->f$0:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/samsung/android/app/CoreStatePool$$ExternalSyntheticLambda0;->f$1:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/CoreStatePool$$ExternalSyntheticLambda0;->f$0:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/samsung/android/app/CoreStatePool$$ExternalSyntheticLambda0;->f$1:Ljava/util/HashMap;

    check-cast p1, Lcom/samsung/android/app/CoreState;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/CoreStatePool;->lambda$updateFrom$0(Landroid/os/Bundle;Ljava/util/HashMap;Lcom/samsung/android/app/CoreState;)V

    return-void
.end method
