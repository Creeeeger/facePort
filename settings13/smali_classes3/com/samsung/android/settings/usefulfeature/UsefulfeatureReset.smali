.class public Lcom/samsung/android/settings/usefulfeature/UsefulfeatureReset;
.super Ljava/lang/Object;
.source "UsefulfeatureReset.java"


# static fields
.field public static final RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureReset$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureReset$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureReset;->RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
