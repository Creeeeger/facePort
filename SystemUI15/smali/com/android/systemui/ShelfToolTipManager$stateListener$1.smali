.class public final Lcom/android/systemui/ShelfToolTipManager$stateListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ShelfToolTipManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ShelfToolTipManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ShelfToolTipManager$stateListener$1;->this$0:Lcom/android/systemui/ShelfToolTipManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ShelfToolTipManager$stateListener$1;->this$0:Lcom/android/systemui/ShelfToolTipManager;

    iget v0, p0, Lcom/android/systemui/ShelfToolTipManager;->mStatusBarState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/ShelfToolTipManager;->mStatusBarState:I

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/ShelfToolTipManager;->releaseToolTip(Z)V

    :cond_1
    return-void
.end method
