.class public interface abstract Lcom/android/systemui/qs/QSHost;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static getDefaultSpecs(Landroid/content/res/Resources;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f130f4c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method


# virtual methods
.method public abstract addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V
.end method

.method public abstract addTile(Landroid/content/ComponentName;)V
.end method

.method public abstract addTile(Landroid/content/ComponentName;Z)V
.end method

.method public abstract changeTilesByUser(Ljava/util/List;Ljava/util/List;)V
.end method

.method public abstract getBarTilesByType(II)Ljava/util/ArrayList;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getQQSTileHost()Lcom/android/systemui/qs/SecQQSTileHost;
.end method

.method public abstract getSpecs()Ljava/util/List;
.end method

.method public abstract getTiles()Ljava/util/Collection;
.end method

.method public abstract getUserContext()Landroid/content/Context;
.end method

.method public abstract getUserId()I
.end method

.method public abstract indexOf(Ljava/lang/String;)I
.end method

.method public abstract isAvailableCustomTile(Ljava/lang/String;)Z
.end method

.method public abstract isAvailableForSearch(Ljava/lang/String;Z)Z
.end method

.method public abstract isBarTile(Ljava/lang/String;)Z
.end method

.method public abstract isBrightnessVolumeBarTile(Ljava/lang/String;)Z
.end method

.method public abstract isLargeBarTile(Ljava/lang/String;)Z
.end method

.method public abstract isNoBgLargeTile(Ljava/lang/String;)Z
.end method

.method public abstract isUnsupportedTile(Ljava/lang/String;)Z
.end method

.method public abstract removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V
.end method

.method public abstract removeTile(Ljava/lang/String;)V
.end method

.method public abstract removeTileByUser(Landroid/content/ComponentName;)V
.end method

.method public abstract removeTiles(Ljava/util/Collection;)V
.end method

.method public abstract sendTileStatusLog(ILjava/lang/String;)V
.end method

.method public abstract shouldBeHiddenByKnox(Ljava/lang/String;)Z
.end method

.method public abstract shouldUnavailableByKnox(Ljava/lang/String;)Z
.end method
