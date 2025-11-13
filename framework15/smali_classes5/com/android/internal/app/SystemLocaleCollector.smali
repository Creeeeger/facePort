.class Lcom/android/internal/app/SystemLocaleCollector;
.super Ljava/lang/Object;
.source "SystemLocaleCollector.java"

# interfaces
.implements Lcom/android/internal/app/LocalePickerWithRegion$LocaleCollectorBase;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mExplicitLocales:Landroid/os/LocaleList;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/SystemLocaleCollector;-><init>(Landroid/content/Context;Landroid/os/LocaleList;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/os/LocaleList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/SystemLocaleCollector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/app/SystemLocaleCollector;->mExplicitLocales:Landroid/os/LocaleList;

    return-void
.end method


# virtual methods
.method public blacklist getIgnoredLocaleList(Z)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public blacklist getSupportedLocaleList(Lcom/android/internal/app/LocaleStore$LocaleInfo;ZZ)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "ZZ)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/android/internal/app/SystemLocaleCollector;->getIgnoredLocaleList(Z)Ljava/util/HashSet;

    move-result-object v0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/SystemLocaleCollector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/app/SystemLocaleCollector;->mExplicitLocales:Landroid/os/LocaleList;

    invoke-static {v1, v0, p1, p2, v2}, Lcom/android/internal/app/LocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLandroid/os/LocaleList;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/SystemLocaleCollector;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/app/SystemLocaleCollector;->mExplicitLocales:Landroid/os/LocaleList;

    invoke-static {v1, v0, v2, p2, v3}, Lcom/android/internal/app/LocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLandroid/os/LocaleList;)Ljava/util/Set;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public blacklist hasSpecificPackageName()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
