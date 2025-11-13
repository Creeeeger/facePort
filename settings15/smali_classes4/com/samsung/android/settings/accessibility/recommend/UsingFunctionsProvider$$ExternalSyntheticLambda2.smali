.class public final synthetic Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionsProvider$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;

    check-cast p1, Lcom/android/settings/core/BasePreferenceController;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionItem;-><init>(Lcom/android/settings/core/BasePreferenceController;)V

    return-object p0
.end method
