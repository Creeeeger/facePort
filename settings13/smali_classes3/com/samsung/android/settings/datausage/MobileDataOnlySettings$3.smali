.class Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$3;
.super Landroid/database/ContentObserver;
.source "MobileDataOnlySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;Landroid/os/Handler;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$3;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 155
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$3;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 157
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$3;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
