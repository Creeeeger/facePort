.class public final synthetic Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;

    sget p1, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "ProtectionPromptActivity"

    const-string v0, "ProtectionPrompt.onCancelClicked"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/theftprotection/ProtectionPromptActivity;->finishWithResult(I)V

    return-void
.end method
