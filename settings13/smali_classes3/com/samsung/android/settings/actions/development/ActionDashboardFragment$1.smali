.class Lcom/samsung/android/settings/actions/development/ActionDashboardFragment$1;
.super Ljava/lang/Object;
.source "ActionDashboardFragment.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/actions/development/ActionDashboardFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/actions/development/ActionDashboardFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/actions/development/ActionDashboardFragment;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/samsung/android/settings/actions/development/ActionDashboardFragment$1;->this$0:Lcom/samsung/android/settings/actions/development/ActionDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/samsung/android/settings/actions/development/ActionDashboardFragment$1;->this$0:Lcom/samsung/android/settings/actions/development/ActionDashboardFragment;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/actions/development/ActionDashboardFragment;->-$$Nest$mfilterPreferences(Lcom/samsung/android/settings/actions/development/ActionDashboardFragment;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
