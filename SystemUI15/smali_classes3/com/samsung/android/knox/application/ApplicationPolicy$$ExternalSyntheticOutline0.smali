.class public abstract synthetic Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object p0

    return-object p0
.end method
