.class public final synthetic Lcom/samsung/android/core/pm/RestrictedReceiverFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/core/pm/RestrictedReceiverFilter;

.field public final synthetic blacklist f$1:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/core/pm/RestrictedReceiverFilter;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/core/pm/RestrictedReceiverFilter;

    iput-object p2, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/core/pm/RestrictedReceiverFilter;

    iget-object v1, p0, Lcom/samsung/android/core/pm/RestrictedReceiverFilter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->lambda$getViolationLog$0$com-samsung-android-core-pm-RestrictedReceiverFilter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
