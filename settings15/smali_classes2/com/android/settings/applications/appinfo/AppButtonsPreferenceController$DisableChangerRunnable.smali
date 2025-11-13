.class public final Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public final mState:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->mPm:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->mPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->mState:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->mPackageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;->mState:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    return-void
.end method
