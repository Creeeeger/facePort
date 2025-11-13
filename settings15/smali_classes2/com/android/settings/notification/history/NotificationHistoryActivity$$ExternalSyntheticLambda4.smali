.class public final synthetic Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

.field public final synthetic f$1:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    iput-object p2, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda4;->f$1:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda4;->f$1:Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, v0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryEmpty:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, v0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
