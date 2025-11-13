.class public final Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonAnimation$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $isVisible:Z

.field public final synthetic $this_apply:Landroid/view/View;


# direct methods
.method public constructor <init>(ZLandroid/view/View;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonAnimation$1$2;->$isVisible:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonAnimation$1$2;->$this_apply:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonAnimation$1$2;->$isVisible:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfManager$startButtonAnimation$1$2;->$this_apply:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
