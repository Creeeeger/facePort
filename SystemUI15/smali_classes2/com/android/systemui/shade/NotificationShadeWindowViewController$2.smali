.class public final Lcom/android/systemui/shade/NotificationShadeWindowViewController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationShadeWindowViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01d1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$2;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    iput-object p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mBrightnessMirror:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public final onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    return-void
.end method
