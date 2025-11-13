.class Lcom/android/settings/notification/app/AppNotificationTypeAdapter$1;
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

    .line 122
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$1;->this$0:Lcom/android/settings/notification/app/AppNotificationTypeAdapter;

    iput p2, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 124
    iget p1, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$1;->val$pos:I

    if-nez p1, :cond_0

    .line 125
    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$1;->this$0:Lcom/android/settings/notification/app/AppNotificationTypeAdapter;

    invoke-static {p0}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter;->-$$Nest$fgetmZenModeCallExceptionListener(Lcom/android/settings/notification/app/AppNotificationTypeAdapter;)Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeCallExceptionListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/notification/app/AppNotificationTypeAdapter$ZenModeCallExceptionListener;->onAddItemClick()V

    :cond_0
    return-void
.end method
