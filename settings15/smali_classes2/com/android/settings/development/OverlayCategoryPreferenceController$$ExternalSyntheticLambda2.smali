.class public final synthetic Lcom/android/settings/development/OverlayCategoryPreferenceController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/content/om/OverlayInfo;

    iget p0, p1, Landroid/content/om/OverlayInfo;->priority:I

    return p0
.end method
