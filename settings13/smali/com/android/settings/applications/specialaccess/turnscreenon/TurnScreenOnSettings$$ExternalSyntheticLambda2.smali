.class public final synthetic Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;

.field public final synthetic f$1:Landroid/content/pm/ApplicationInfo;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings$$ExternalSyntheticLambda2;->f$1:Landroid/content/pm/ApplicationInfo;

    iput-object p3, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings$$ExternalSyntheticLambda2;->f$1:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;->$r8$lambda$-PJS68-5H-NQVe3SyT_RX5lv0_k(Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnSettings;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
