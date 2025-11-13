.class public final synthetic Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    sget-object p0, Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;->mDefaultNames:Ljava/util/HashSet;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method
