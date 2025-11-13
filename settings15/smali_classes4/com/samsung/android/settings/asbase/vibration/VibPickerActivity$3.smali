.class public final Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity$3;->this$0:Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity$3;->this$0:Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity$3;->this$0:Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;

    iget p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;->mCheckedPos:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method
