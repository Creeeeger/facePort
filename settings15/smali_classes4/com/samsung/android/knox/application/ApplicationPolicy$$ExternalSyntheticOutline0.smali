.class public abstract synthetic Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object p0

    return-object p0
.end method
