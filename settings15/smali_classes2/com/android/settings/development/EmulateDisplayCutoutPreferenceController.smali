.class public final Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;
.super Lcom/android/settings/development/OverlayCategoryPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/om/IOverlayManager;)V
    .locals 1

    const-string v0, "com.android.internal.display_cutout_emulation"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "display_cutout_emulation"

    return-object p0
.end method
