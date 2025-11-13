.class public final Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$1DisplayInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final originalName:Ljava/lang/CharSequence;

.field public final subscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field public uniqueName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;Landroid/telephony/SubscriptionInfo;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$1DisplayInfo;->subscriptionInfo:Landroid/telephony/SubscriptionInfo;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$1DisplayInfo;->originalName:Ljava/lang/CharSequence;

    return-void
.end method
