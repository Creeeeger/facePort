.class public final Lcom/samsung/android/settings/actions/development/ActionDashboardFragment$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/actions/development/ActionDashboardFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/actions/development/ActionDashboardFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/actions/development/ActionDashboardFragment$2;->this$0:Lcom/samsung/android/settings/actions/development/ActionDashboardFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    sget p1, Lcom/samsung/android/settings/actions/development/ActionDashboardFragment;->$r8$clinit:I

    iget-object p0, p0, Lcom/samsung/android/settings/actions/development/ActionDashboardFragment$2;->this$0:Lcom/samsung/android/settings/actions/development/ActionDashboardFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onForceLoad()V

    const/4 p0, 0x1

    return p0
.end method
