.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCompleteItemUpdateReason:I

.field public mIsSendedQuickReply:Z

.field public mPrevBodyLayoutHeght:I

.field public mPrevFirstHistoryView:Landroid/view/View;

.field public mPrevFirstHistoryViewBottomMargin:I

.field public mPrevHistoryCount:I

.field public mPrevLastHistoryView:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mCompleteItemUpdateReason:I

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mIsSendedQuickReply:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevFirstHistoryView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevLastHistoryView:Landroid/view/View;

    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevHistoryCount:I

    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevFirstHistoryViewBottomMargin:I

    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevBodyLayoutHeght:I

    return-void
.end method
