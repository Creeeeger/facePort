.class public final Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$handleLabel$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $updateOnlyIcon:Z

.field public final synthetic this$0:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$handleLabel$1$2;->this$0:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$handleLabel$1$2;->$updateOnlyIcon:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$handleLabel$1$2;->this$0:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView$handleLabel$1$2;->$updateOnlyIcon:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->setLabelSingleLine(Z)Z

    return-void
.end method
