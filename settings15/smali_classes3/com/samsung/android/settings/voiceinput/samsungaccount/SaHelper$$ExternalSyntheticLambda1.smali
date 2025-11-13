.class public final synthetic Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;

    const-string p0, "NONE"

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;->setCC(Ljava/lang/String;)V

    return-void
.end method
