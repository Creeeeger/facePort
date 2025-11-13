.class public Lcom/samsung/android/settings/share/structure/ShareTileTag;
.super Ljava/lang/Object;
.source "ShareTileTag.java"


# instance fields
.field public final mShareComponent:Lcom/samsung/android/settings/share/structure/ShareComponent;

.field private mTileContainerPresenter:Lcom/samsung/android/settings/share/presenter/TileContainerPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/settings/share/presenter/TileContainerPresenter<",
            "Lcom/samsung/android/settings/share/structure/ShareComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/share/presenter/TileContainerPresenter;Lcom/samsung/android/settings/share/structure/ShareComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/settings/share/presenter/TileContainerPresenter<",
            "Lcom/samsung/android/settings/share/structure/ShareComponent;",
            ">;",
            "Lcom/samsung/android/settings/share/structure/ShareComponent;",
            ")V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/samsung/android/settings/share/structure/ShareTileTag;->mTileContainerPresenter:Lcom/samsung/android/settings/share/presenter/TileContainerPresenter;

    .line 11
    iput-object p2, p0, Lcom/samsung/android/settings/share/structure/ShareTileTag;->mShareComponent:Lcom/samsung/android/settings/share/structure/ShareComponent;

    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/samsung/android/settings/share/structure/ShareTileTag;->mTileContainerPresenter:Lcom/samsung/android/settings/share/presenter/TileContainerPresenter;

    iget-object p0, p0, Lcom/samsung/android/settings/share/structure/ShareTileTag;->mShareComponent:Lcom/samsung/android/settings/share/structure/ShareComponent;

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/share/presenter/TileContainerPresenter;->getItemPosition(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getTileContainerPresenter()Lcom/samsung/android/settings/share/presenter/TileContainerPresenter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/settings/share/presenter/TileContainerPresenter<",
            "Lcom/samsung/android/settings/share/structure/ShareComponent;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object p0, p0, Lcom/samsung/android/settings/share/structure/ShareTileTag;->mTileContainerPresenter:Lcom/samsung/android/settings/share/presenter/TileContainerPresenter;

    return-object p0
.end method

.method public setIDraggableContainer(Lcom/samsung/android/settings/share/presenter/TileContainerPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/settings/share/presenter/TileContainerPresenter<",
            "Lcom/samsung/android/settings/share/structure/ShareComponent;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/samsung/android/settings/share/structure/ShareTileTag;->mTileContainerPresenter:Lcom/samsung/android/settings/share/presenter/TileContainerPresenter;

    return-void
.end method
