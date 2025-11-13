.class Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController$1;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController$1;->this$1:Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController$1;->this$1:Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;

    iget-object p0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {p0, p1, p2}, Lcom/android/settings/print/PrintSettingsFragment;->-$$Nest$smenablePrinterPluginService(Landroid/content/Context;Landroidx/preference/Preference;Ljava/lang/Boolean;)V

    const/4 p0, 0x1

    return p0
.end method
