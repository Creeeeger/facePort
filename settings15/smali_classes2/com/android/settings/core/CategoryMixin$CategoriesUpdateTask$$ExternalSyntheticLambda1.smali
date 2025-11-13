.class public final synthetic Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;

    iput-object p2, p0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask$$ExternalSyntheticLambda1;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;

    iget-object p0, p0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask$$ExternalSyntheticLambda1;->f$1:Ljava/util/Set;

    check-cast p1, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tile removed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CategoryMixin"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;->mPreviousTileMap:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/drawer/Tile;

    iget-object p1, p1, Lcom/android/settingslib/drawer/Tile;->mCategory:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
