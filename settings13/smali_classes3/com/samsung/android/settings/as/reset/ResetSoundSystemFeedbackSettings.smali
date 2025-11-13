.class public Lcom/samsung/android/settings/as/reset/ResetSoundSystemFeedbackSettings;
.super Ljava/lang/Object;
.source "ResetSoundSystemFeedbackSettings.java"


# static fields
.field public static final RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/samsung/android/settings/as/reset/ResetSoundSystemFeedbackSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/as/reset/ResetSoundSystemFeedbackSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/as/reset/ResetSoundSystemFeedbackSettings;->RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
