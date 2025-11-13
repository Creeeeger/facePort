.class public Lcom/android/settingslib/location/SettingsInjector$ServiceSettingClickedListener;
.super Ljava/lang/Object;
.source "SettingsInjector.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/location/SettingsInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ServiceSettingClickedListener"
.end annotation


# instance fields
.field protected mInfo:Lcom/android/settingslib/location/InjectedSetting;

.field final synthetic this$0:Lcom/android/settingslib/location/SettingsInjector;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/location/SettingsInjector;Lcom/android/settingslib/location/InjectedSetting;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/android/settingslib/location/SettingsInjector$ServiceSettingClickedListener;->this$0:Lcom/android/settingslib/location/SettingsInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-object p2, p0, Lcom/android/settingslib/location/SettingsInjector$ServiceSettingClickedListener;->mInfo:Lcom/android/settingslib/location/InjectedSetting;

    return-void
.end method
