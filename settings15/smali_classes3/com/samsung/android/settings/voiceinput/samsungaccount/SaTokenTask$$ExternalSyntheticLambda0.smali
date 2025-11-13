.class public final synthetic Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget p0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda0;->f$1:I

    sget v1, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask;->$r8$clinit:I

    const-string v1, "SaTokenTask"

    const-string/jumbo v2, "request_token RESULT_FAIL Failure"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaTokenTask$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
