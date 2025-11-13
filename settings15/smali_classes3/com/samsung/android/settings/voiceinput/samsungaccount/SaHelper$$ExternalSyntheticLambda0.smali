.class public final synthetic Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;->setCC(Ljava/lang/String;)V

    return-void
.end method
