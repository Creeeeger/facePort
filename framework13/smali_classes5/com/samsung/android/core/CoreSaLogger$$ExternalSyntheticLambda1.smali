.class public final synthetic Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Landroid/content/Context;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda1;->f$3:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda1;->f$3:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/core/CoreSaLogger;->lambda$sendSaLoggingBroadcastForSetting$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
