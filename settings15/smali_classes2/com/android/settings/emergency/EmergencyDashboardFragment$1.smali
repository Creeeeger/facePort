.class public final Lcom/android/settings/emergency/EmergencyDashboardFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic val$emergencySOSClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>(Landroidx/preference/Preference$OnPreferenceClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/emergency/EmergencyDashboardFragment$1;->val$emergencySOSClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    const/16 v0, 0x743

    const v1, 0xe86e

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object p0, p0, Lcom/android/settings/emergency/EmergencyDashboardFragment$1;->val$emergencySOSClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-interface {p0, p1}, Landroidx/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroidx/preference/Preference;)Z

    const/4 p0, 0x1

    return p0
.end method
