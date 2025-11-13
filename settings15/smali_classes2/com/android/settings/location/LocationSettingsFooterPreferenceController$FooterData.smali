.class public final Lcom/android/settings/location/LocationSettingsFooterPreferenceController$FooterData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public final footerStringRes:I


# direct methods
.method public constructor <init>(ILandroid/content/pm/ApplicationInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/location/LocationSettingsFooterPreferenceController$FooterData;->footerStringRes:I

    iput-object p2, p0, Lcom/android/settings/location/LocationSettingsFooterPreferenceController$FooterData;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-void
.end method
