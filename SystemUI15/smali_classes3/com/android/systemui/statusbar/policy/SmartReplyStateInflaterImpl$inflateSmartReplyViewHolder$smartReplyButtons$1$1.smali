.class final Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartReplyButtons$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $delayOnClickListener:Z

.field final synthetic $entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field final synthetic $smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

.field final synthetic $smartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartReplyButtons$1$1;->this$0:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartReplyButtons$1$1;->$smartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartReplyButtons$1$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartReplyButtons$1$1;->$smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartReplyButtons$1$1;->$delayOnClickListener:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v4

    move-object v7, p2

    check-cast v7, Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartReplyButtons$1$1;->this$0:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->smartRepliesInflater:Lcom/android/systemui/statusbar/policy/SmartReplyInflater;

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartReplyButtons$1$1;->$smartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartReplyButtons$1$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartReplyButtons$1$1;->$smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl$inflateSmartReplyViewHolder$smartReplyButtons$1$1;->$delayOnClickListener:Z

    check-cast p1, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0441

    const/4 v5, 0x0

    invoke-virtual {v0, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v9, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$inflateReplyButton$1$onClickListener$1;

    move-object v0, v9

    move-object v1, p1

    move-object v5, p2

    move-object v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$inflateReplyButton$1$onClickListener$1;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;ILcom/android/systemui/statusbar/policy/SmartReplyView;Landroid/widget/Button;Ljava/lang/CharSequence;)V

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/systemui/statusbar/policy/DelayedOnClickListener;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;->constants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    iget-wide v0, p1, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mOnClickInitDelay:J

    invoke-direct {p0, v9, v0, v1}, Lcom/android/systemui/statusbar/policy/DelayedOnClickListener;-><init>(Landroid/view/View$OnClickListener;J)V

    move-object v9, p0

    :cond_0
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p0, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$inflateReplyButton$1$1;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$inflateReplyButton$1$1;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;)V

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {v8}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    sget-object p1, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->REPLY:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mButtonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    return-object v8
.end method
