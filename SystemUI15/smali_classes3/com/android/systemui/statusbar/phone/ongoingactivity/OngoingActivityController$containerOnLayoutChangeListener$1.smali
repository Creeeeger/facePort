.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$containerOnLayoutChangeListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$containerOnLayoutChangeListener$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$containerOnLayoutChangeListener$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mOngoingChipAdapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;

    if-eqz p0, :cond_0

    sub-int/2addr p4, p2

    iget p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->enableMaxWidth:I

    if-eq p1, p4, :cond_0

    iput p4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->enableMaxWidth:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
