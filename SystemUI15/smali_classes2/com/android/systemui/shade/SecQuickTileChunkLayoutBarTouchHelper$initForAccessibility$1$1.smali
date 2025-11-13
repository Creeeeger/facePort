.class public final Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper$initForAccessibility$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper$initForAccessibility$1$1;->this$0:Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper$initForAccessibility$1$1;->this$0:Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;->expandHelper:Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;->forceToggleBar()V

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
