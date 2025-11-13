.class public Lcom/samsung/android/settings/share/structure/CallerComponent;
.super Lcom/samsung/android/settings/share/structure/ShareComponent;
.source "CallerComponent.java"


# instance fields
.field public mResolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;ILandroid/content/pm/ResolveInfo;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/share/structure/ShareComponent;-><init>(Landroid/content/ComponentName;I)V

    .line 25
    iput-object p3, p0, Lcom/samsung/android/settings/share/structure/CallerComponent;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-void
.end method


# virtual methods
.method public getInfo(Landroid/content/Context;Ljava/util/List;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/samsung/android/settings/share/structure/CallerComponent;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-nez v0, :cond_0

    .line 35
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/share/structure/ShareComponent;->getInfo(Landroid/content/Context;Ljava/util/List;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void

    .line 38
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mCachedInfo:Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;

    if-nez p2, :cond_1

    .line 39
    invoke-static {p1, v0}, Lcom/samsung/android/settings/share/common/TargetPresentationGetter;->makePresentationGetter(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Lcom/samsung/android/settings/share/common/TargetPresentationGetter;

    move-result-object p1

    .line 40
    new-instance p2, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;-><init>(Lcom/samsung/android/settings/share/common/TargetPresentationGetter;)V

    iput-object p2, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mCachedInfo:Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mCachedInfo:Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;

    invoke-virtual {p1}, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;->getLabelPair()Landroid/util/Pair;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 43
    iget-object p0, p0, Lcom/samsung/android/settings/share/structure/ShareComponent;->mCachedInfo:Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;

    invoke-virtual {p0}, Lcom/samsung/android/settings/share/structure/ShareComponent$CachedInfo;->getIconDrawable()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
