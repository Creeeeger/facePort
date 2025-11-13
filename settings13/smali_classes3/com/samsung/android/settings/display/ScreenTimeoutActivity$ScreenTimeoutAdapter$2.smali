.class Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$2;
.super Ljava/lang/Object;
.source "ScreenTimeoutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

.field final synthetic val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$2;->this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$2;->val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 414
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$2;->this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$2;->val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method
