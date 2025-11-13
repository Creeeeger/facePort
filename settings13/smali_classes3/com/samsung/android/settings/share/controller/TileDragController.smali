.class public Lcom/samsung/android/settings/share/controller/TileDragController;
.super Ljava/lang/Object;
.source "TileDragController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/share/controller/TileDragController$DiscontinuousDragListener;,
        Lcom/samsung/android/settings/share/controller/TileDragController$OnDragStateChangeListener;
    }
.end annotation


# instance fields
.field public final mOnDragListener:Landroid/view/View$OnDragListener;

.field mOnDragStateChangeListener:Lcom/samsung/android/settings/share/controller/TileDragController$OnDragStateChangeListener;

.field public mSelectAppPresenter:Lcom/samsung/android/settings/share/presenter/SelectAppPresenter;

.field mStartTag:Lcom/samsung/android/settings/share/structure/ShareTileTag;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/share/presenter/SelectAppPresenter;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/samsung/android/settings/share/controller/TileDragController;->mStartTag:Lcom/samsung/android/settings/share/structure/ShareTileTag;

    .line 45
    new-instance v0, Lcom/samsung/android/settings/share/controller/TileDragController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/share/controller/TileDragController$1;-><init>(Lcom/samsung/android/settings/share/controller/TileDragController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/share/controller/TileDragController;->mOnDragListener:Landroid/view/View$OnDragListener;

    .line 39
    iput-object p1, p0, Lcom/samsung/android/settings/share/controller/TileDragController;->mSelectAppPresenter:Lcom/samsung/android/settings/share/presenter/SelectAppPresenter;

    return-void
.end method

.method private onDragStart(Lcom/samsung/android/settings/share/structure/ShareTileTag;)V
    .locals 1

    .line 125
    iput-object p1, p0, Lcom/samsung/android/settings/share/controller/TileDragController;->mStartTag:Lcom/samsung/android/settings/share/structure/ShareTileTag;

    .line 126
    iget-object p1, p1, Lcom/samsung/android/settings/share/structure/ShareTileTag;->mShareComponent:Lcom/samsung/android/settings/share/structure/ShareComponent;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/samsung/android/settings/share/structure/ShareComponent;->mDisableIcon:Z

    .line 127
    iget-object p0, p0, Lcom/samsung/android/settings/share/controller/TileDragController;->mOnDragStateChangeListener:Lcom/samsung/android/settings/share/controller/TileDragController$OnDragStateChangeListener;

    if-eqz p0, :cond_0

    .line 128
    invoke-interface {p0}, Lcom/samsung/android/settings/share/controller/TileDragController$OnDragStateChangeListener;->onDragStart()V

    :cond_0
    return-void
.end method


# virtual methods
.method public setOnTileDragChangeListener(Lcom/samsung/android/settings/share/controller/TileDragController$OnDragStateChangeListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/samsung/android/settings/share/controller/TileDragController;->mOnDragStateChangeListener:Lcom/samsung/android/settings/share/controller/TileDragController$OnDragStateChangeListener;

    return-void
.end method

.method public startDrag(Landroid/view/View;Lcom/samsung/android/settings/share/structure/ShareTileTag;)V
    .locals 2

    const-string v0, ""

    .line 111
    invoke-static {v0, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 112
    new-instance v1, Lcom/samsung/android/settings/share/controller/TileDragController$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/share/controller/TileDragController$2;-><init>(Lcom/samsung/android/settings/share/controller/TileDragController;Landroid/view/View;)V

    .line 120
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/share/controller/TileDragController;->onDragStart(Lcom/samsung/android/settings/share/structure/ShareTileTag;)V

    const/4 p0, 0x0

    .line 121
    invoke-virtual {p1, v0, v1, p1, p0}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    return-void
.end method
