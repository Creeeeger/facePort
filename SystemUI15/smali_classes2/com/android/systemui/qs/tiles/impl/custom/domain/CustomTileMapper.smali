.class public final Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/QSTileDataToStateMapper;


# instance fields
.field public final context:Landroid/content/Context;

.field public final uriGrantsManager:Landroid/app/IUriGrantsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IUriGrantsManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper;->uriGrantsManager:Landroid/app/IUriGrantsManager;

    return-void
.end method


# virtual methods
.method public final map(Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;Ljava/lang/Object;)Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;
    .locals 6

    check-cast p2, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper;->context:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p2, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p2, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->tile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget v2, p2, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->callingAppUid:I

    iget-object v3, p2, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->defaultTileIcon:Landroid/graphics/drawable/Icon;

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper;->uriGrantsManager:Landroid/app/IUriGrantsManager;

    invoke-virtual {v0, p1, p0, v2, v3}, Landroid/graphics/drawable/Icon;->loadDrawableCheckingUriGrant(Landroid/content/Context;Landroid/app/IUriGrantsManager;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x1

    :cond_0
    move-object p0, v5

    :goto_0
    if-nez p0, :cond_1

    if-eqz v4, :cond_2

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, p0

    :cond_2
    :goto_1
    new-instance p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$IconResult;

    new-instance p1, Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$getIconProvider$1;

    invoke-direct {p1, v5}, Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$getIconProvider$1;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$IconResult;-><init>(Lkotlin/jvm/functions/Function0;Z)V

    sget-object p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->Companion:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Companion;

    iget-object v0, p2, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->tile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$map$1;

    invoke-direct {v1, p2, p0}, Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$map$1;-><init>(Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$IconResult;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$IconResult;->iconProvider:Lkotlin/jvm/functions/Function0;

    invoke-static {p0, v0, v1}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Companion;->build(Lkotlin/jvm/functions/Function0;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;

    move-result-object p0

    return-object p0
.end method
