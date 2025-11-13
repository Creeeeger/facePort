.class Lcom/android/settings/print/PrintSettingsFragment$1;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/print/PrintSettingsFragment;->newAddServicePreferenceOrNull()Lcom/samsung/android/settings/widget/SecRestrictedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastClickTime:J

.field final synthetic this$0:Lcom/android/settings/print/PrintSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 361
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/print/PrintSettingsFragment$1;->mLastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    .line 364
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/print/PrintSettingsFragment$1;->mLastClickTime:J

    .line 365
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/print/PrintSettingsFragment;->-$$Nest$mcreateAddNewServiceIntentOrNull(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 368
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/print/PrintSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PrintSettingsFragment"

    const-string v1, "Unable to start activity"

    .line 370
    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return v0
.end method
