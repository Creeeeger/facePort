.class public final synthetic Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/Bundle;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda2;->f$0:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda2;->f$0:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    sget v1, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->$r8$clinit:I

    invoke-static {v0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->setSaInfo(Landroid/os/Bundle;)V

    const-string v0, "SaTokenTask"

    const-string/jumbo v1, "request_token RESULT_OK Success"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
