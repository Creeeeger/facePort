.class public final Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public mHost:Ljava/lang/String;

.field public mIsChecked:Z

.field public mIsEnabled:Z

.field public mLastOwnerName:Ljava/lang/String;

.field public mOwnerSet:Ljava/util/SortedSet;


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;

    iget-boolean v0, p0, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->mIsEnabled:Z

    iget-boolean v1, p1, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->mIsEnabled:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_2

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->mLastOwnerName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object p1, p1, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->mLastOwnerName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eq v0, p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->mLastOwnerName:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    return v2
.end method

.method public final getLastPackageLabel(Landroidx/fragment/app/FragmentActivity;Z)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->mOwnerSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;Landroidx/fragment/app/FragmentActivity;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x1

    invoke-static {p1, p0}, Landroidx/compose/runtime/PrioritySet$$ExternalSyntheticOutline0;->m(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
