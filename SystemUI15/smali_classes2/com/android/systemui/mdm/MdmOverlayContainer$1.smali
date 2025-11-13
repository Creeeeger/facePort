.class public final Lcom/android/systemui/mdm/MdmOverlayContainer$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/mdm/MdmOverlayContainer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/mdm/MdmOverlayContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer$1;->this$0:Lcom/android/systemui/mdm/MdmOverlayContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer$1;->this$0:Lcom/android/systemui/mdm/MdmOverlayContainer;

    iget v0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mPreviousState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/mdm/MdmOverlayContainer;->updateMdmPolicy()V

    :cond_0
    iput p1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mPreviousState:I

    return-void
.end method
