.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic val$holder:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$1;->val$holder:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    new-instance p1, Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$1;->val$holder:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$1;->val$holder:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mDumyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$1;->val$holder:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    iget-object p4, p4, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mDumyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p4

    const/4 p5, 0x0

    invoke-direct {p1, p5, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$1;->val$holder:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mDumyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method
