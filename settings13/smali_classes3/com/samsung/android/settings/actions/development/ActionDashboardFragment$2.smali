.class Lcom/samsung/android/settings/actions/development/ActionDashboardFragment$2;
.super Ljava/lang/Object;
.source "ActionDashboardFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/actions/development/ActionDashboardFragment;->initFilterPreference()V
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

    .line 173
    iput-object p1, p0, Lcom/samsung/android/settings/actions/development/ActionDashboardFragment$2;->this$0:Lcom/samsung/android/settings/actions/development/ActionDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 176
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    iget-object p0, p0, Lcom/samsung/android/settings/actions/development/ActionDashboardFragment$2;->this$0:Lcom/samsung/android/settings/actions/development/ActionDashboardFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/actions/development/ActionDashboardFragment;->-$$Nest$mrestartLoader(Lcom/samsung/android/settings/actions/development/ActionDashboardFragment;)V

    const/4 p0, 0x1

    return p0
.end method
