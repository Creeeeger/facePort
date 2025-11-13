.class public final synthetic Lcom/android/settings/accessibility/HearingDeviceAudioRoutingBasePreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/media/audiopolicy/AudioProductStrategy;

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
