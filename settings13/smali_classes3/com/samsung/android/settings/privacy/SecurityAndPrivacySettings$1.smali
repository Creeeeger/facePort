.class Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$1;
.super Ljava/lang/Object;
.source "SecurityAndPrivacySettings.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$1;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "tag_security_dashboard_status_view"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$1;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmSecStatusPreference(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "tag_security_dashboard_status_view"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 144
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$1;->this$0:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;->-$$Nest$fgetmSecStatusPreference(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings;)Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method
