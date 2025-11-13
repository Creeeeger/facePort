.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$enableSmartReplyTriggerBtn$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $btn:Landroid/widget/ImageView;

.field public final synthetic $toAlpha:F


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$enableSmartReplyTriggerBtn$1$1$1;->$btn:Landroid/widget/ImageView;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$enableSmartReplyTriggerBtn$1$1$1;->$toAlpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$enableSmartReplyTriggerBtn$1$1$1;->$btn:Landroid/widget/ImageView;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$enableSmartReplyTriggerBtn$1$1$1;->$toAlpha:F

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
