.class public final synthetic Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/HashMap;

.field public final synthetic blacklist f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/HashMap;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda1;->f$0:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda1;->f$0:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->lambda$sendSaLoggingBroadcastForBasicSetting$2(Ljava/util/HashMap;Landroid/content/Context;)V

    return-void
.end method
