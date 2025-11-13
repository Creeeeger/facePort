.class public final Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetOnSubscriptionChangedListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetOnSubscriptionChangedListener;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSubscriptionsChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetOnSubscriptionChangedListener;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    sget-object v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->EMPTY_DRAWABLE:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->refreshHasActiveSubIdOnDds()V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetOnSubscriptionChangedListener;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->-$$Nest$mupdateListener(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;)V

    return-void
.end method
