.class interface abstract Lcom/android/internal/app/LocalePickerWithRegion$LocaleCollectorBase;
.super Ljava/lang/Object;
.source "LocalePickerWithRegion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/LocalePickerWithRegion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "LocaleCollectorBase"
.end annotation


# virtual methods
.method public abstract blacklist getIgnoredLocaleList(Z)Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getSupportedLocaleList(Lcom/android/internal/app/LocaleStore$LocaleInfo;ZZ)Ljava/util/Set;
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
.end method

.method public abstract blacklist hasSpecificPackageName()Z
.end method
