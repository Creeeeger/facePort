.class public final synthetic Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mLastVisibleTarget:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mTouchableRegionCalculator:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->configureTouchableRegion(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$$ExternalSyntheticLambda0;)V

    return-void
.end method
