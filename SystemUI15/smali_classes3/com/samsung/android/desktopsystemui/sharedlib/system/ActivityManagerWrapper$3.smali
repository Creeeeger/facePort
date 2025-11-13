.class Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;

.field final synthetic val$finalResult:Z

.field final synthetic val$resultCallback:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;Ljava/util/function/Consumer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$3;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper;

    iput-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$3;->val$resultCallback:Ljava/util/function/Consumer;

    iput-boolean p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$3;->val$finalResult:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$3;->val$resultCallback:Ljava/util/function/Consumer;

    iget-boolean p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ActivityManagerWrapper$3;->val$finalResult:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
