.class Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$3;
.super Lcom/samsung/android/knox/ex/knoxAI/IKeyProvisioningCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

.field public final synthetic val$cb:Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$3;->this$0:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    iput-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$3;->val$cb:Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;

    invoke-direct {p0}, Lcom/samsung/android/knox/ex/knoxAI/IKeyProvisioningCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->getCodeFromValue(I)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_UNKNOWN_ERROR:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal$3;->val$cb:Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;->onFinished(Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;)V

    return-void
.end method
