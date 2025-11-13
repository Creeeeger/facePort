.class Lcom/android/settings/emergency/EmergencyDashboardFragment$1;
.super Ljava/lang/Object;
.source "EmergencyDashboardFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/EmergencyDashboardFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/emergency/EmergencyDashboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/emergency/EmergencyDashboardFragment;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/settings/emergency/EmergencyDashboardFragment$1;->this$0:Lcom/android/settings/emergency/EmergencyDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    const/16 v0, 0x743

    const v1, 0xe86e

    .line 103
    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 105
    iget-object p0, p0, Lcom/android/settings/emergency/EmergencyDashboardFragment$1;->this$0:Lcom/android/settings/emergency/EmergencyDashboardFragment;

    iget-object p0, p0, Lcom/android/settings/emergency/EmergencyDashboardFragment;->mSendSOSMessagesClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-interface {p0, p1}, Landroidx/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroidx/preference/Preference;)Z

    const/4 p0, 0x1

    return p0
.end method
