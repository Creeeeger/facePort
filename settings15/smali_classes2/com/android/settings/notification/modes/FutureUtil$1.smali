.class public final Lcom/android/settings/notification/modes/FutureUtil$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# instance fields
.field public final synthetic val$consumer:Ljava/util/function/Consumer;

.field public final synthetic val$errorLogMessage:Ljava/lang/String;

.field public final synthetic val$errorLogMessageArgs:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/modes/FutureUtil$1;->val$consumer:Ljava/util/function/Consumer;

    const-string p1, "Error in future"

    iput-object p1, p0, Lcom/android/settings/notification/modes/FutureUtil$1;->val$errorLogMessage:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/notification/modes/FutureUtil$1;->val$errorLogMessageArgs:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/modes/FutureUtil$1;->val$errorLogMessage:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/notification/modes/FutureUtil$1;->val$errorLogMessageArgs:[Ljava/lang/Object;

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ZenFutureUtil"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/modes/FutureUtil$1;->val$consumer:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
