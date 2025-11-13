.class Lcom/android/settings/notification/history/NotificationHistoryAdapter$1;
.super Ljava/lang/Object;
.source "NotificationHistoryAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/history/NotificationHistoryAdapter;-><init>(Landroid/app/INotificationManager;Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;Lcom/android/settings/notification/history/NotificationHistoryAdapter$OnItemDeletedListener;Lcom/android/internal/logging/UiEventLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/history/NotificationHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/history/NotificationHistoryAdapter;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->-$$Nest$msetAnimators(Lcom/android/settings/notification/history/NotificationHistoryAdapter;Z)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryAdapter;

    invoke-static {v0}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->-$$Nest$fgetmRecyclerView(Lcom/android/settings/notification/history/NotificationHistoryAdapter;)Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
