.class public final Lcom/android/systemui/qs/customize/QSCustomizerController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/QSCustomizerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/QSCustomizerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizerController;

    iget-object p1, p1, Lcom/android/systemui/qs/customize/QSCustomizerController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_RESET:Lcom/android/systemui/qs/QSEditEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/qs/QSHost;->getDefaultSpecs(Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHost:Lcom/android/systemui/qs/QSHost;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/qs/QSHost;->changeTilesByUser(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
