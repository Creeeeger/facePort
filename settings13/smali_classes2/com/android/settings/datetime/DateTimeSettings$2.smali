.class Lcom/android/settings/datetime/DateTimeSettings$2;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 292
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 297
    invoke-static {p1, p0, v0}, Lcom/android/settings/datetime/DateTimeSettings;->-$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/datetime/DateTimeSettings;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
