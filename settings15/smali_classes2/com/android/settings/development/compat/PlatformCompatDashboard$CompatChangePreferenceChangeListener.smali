.class public final Lcom/android/settings/development/compat/PlatformCompatDashboard$CompatChangePreferenceChangeListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final changeId:J

.field public final synthetic this$0:Lcom/android/settings/development/compat/PlatformCompatDashboard;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/compat/PlatformCompatDashboard;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard$CompatChangePreferenceChangeListener;->this$0:Lcom/android/settings/development/compat/PlatformCompatDashboard;

    iput-wide p2, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard$CompatChangePreferenceChangeListener;->changeId:J

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object p1, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard$CompatChangePreferenceChangeListener;->this$0:Lcom/android/settings/development/compat/PlatformCompatDashboard;

    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide v2, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard$CompatChangePreferenceChangeListener;->changeId:J

    if-eqz p2, :cond_0

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance p0, Lcom/android/internal/compat/CompatibilityChangeConfig;

    new-instance p2, Landroid/compat/Compatibility$ChangeConfig;

    invoke-direct {p2, v0, v1}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-direct {p0, p2}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/compat/Compatibility$ChangeConfig;)V

    invoke-virtual {p1}, Lcom/android/settings/development/compat/PlatformCompatDashboard;->getPlatformCompat()Lcom/android/internal/compat/IPlatformCompat;

    move-result-object p2

    iget-object p1, p1, Lcom/android/settings/development/compat/PlatformCompatDashboard;->mSelectedApp:Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/android/internal/compat/IPlatformCompat;->setOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x1

    return p0

    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method
