.class Lcom/android/settings/notification/app/AppNotificationTypeAdapter$2;
.super Ljava/lang/Object;
.source "AppNotificationTypeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/app/AppNotificationTypeAdapter;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/android/settings/notification/app/AppNotificationTypeAdapter;I)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$2;->this$0:Lcom/android/settings/notification/app/AppNotificationTypeAdapter;

    iput p2, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$2;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 143
    iget-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$2;->this$0:Lcom/android/settings/notification/app/AppNotificationTypeAdapter;

    invoke-static {p1}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->-$$Nest$fgetmZenModeCallExceptionListener(Lcom/android/settings/notification/app/AppNotificationTypeAdapter;)Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeCallExceptionListener;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$2;->val$pos:I

    invoke-interface {p1, p0}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeCallExceptionListener;->onPerformRemoveClick(I)V

    return-void
.end method
