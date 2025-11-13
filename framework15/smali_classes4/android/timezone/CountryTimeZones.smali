.class public final Landroid/timezone/CountryTimeZones;
.super Ljava/lang/Object;
.source "CountryTimeZones.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/timezone/CountryTimeZones$OffsetResult;,
        Landroid/timezone/CountryTimeZones$TimeZoneMapping;
    }
.end annotation


# instance fields
.field private final blacklist mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;


# direct methods
.method constructor blacklist <init>(Lcom/android/i18n/timezone/CountryTimeZones;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/timezone/CountryTimeZones;

    iget-object v1, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    iget-object v2, v0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {v1, v2}, Lcom/android/i18n/timezone/CountryTimeZones;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDefaultTimeZone()Landroid/icu/util/TimeZone;
    .locals 1

    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/CountryTimeZones;->getDefaultTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefaultTimeZoneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/CountryTimeZones;->getDefaultTimeZoneId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEffectiveTimeZoneMappingsAt(J)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/timezone/CountryTimeZones$TimeZoneMapping;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {v0, p1, p2}, Lcom/android/i18n/timezone/CountryTimeZones;->getEffectiveTimeZoneMappingsAt(J)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    new-instance v4, Landroid/timezone/CountryTimeZones$TimeZoneMapping;

    invoke-direct {v4, v3}, Landroid/timezone/CountryTimeZones$TimeZoneMapping;-><init>(Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public blacklist hasUtcZone(J)Z
    .locals 1

    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {v0, p1, p2}, Lcom/android/i18n/timezone/CountryTimeZones;->hasUtcZone(J)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isDefaultTimeZoneBoosted()Z
    .locals 1

    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/CountryTimeZones;->isDefaultTimeZoneBoosted()Z

    move-result v0

    return v0
.end method

.method public blacklist lookupByOffsetWithBias(JLandroid/icu/util/TimeZone;I)Landroid/timezone/CountryTimeZones$OffsetResult;
    .locals 4

    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/i18n/timezone/CountryTimeZones;->lookupByOffsetWithBias(JLandroid/icu/util/TimeZone;I)Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/timezone/CountryTimeZones$OffsetResult;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;->isOnlyMatch()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/timezone/CountryTimeZones$OffsetResult;-><init>(Landroid/icu/util/TimeZone;Z)V

    :goto_0
    return-object v1
.end method

.method public blacklist lookupByOffsetWithBias(JLandroid/icu/util/TimeZone;IZ)Landroid/timezone/CountryTimeZones$OffsetResult;
    .locals 6

    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/timezone/CountryTimeZones;->lookupByOffsetWithBias(JLandroid/icu/util/TimeZone;IZ)Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/timezone/CountryTimeZones$OffsetResult;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;->isOnlyMatch()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/timezone/CountryTimeZones$OffsetResult;-><init>(Landroid/icu/util/TimeZone;Z)V

    :goto_0
    return-object v1
.end method

.method public blacklist matchesCountryCode(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {v0, p1}, Lcom/android/i18n/timezone/CountryTimeZones;->matchesCountryCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/timezone/CountryTimeZones;->mDelegate:Lcom/android/i18n/timezone/CountryTimeZones;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/CountryTimeZones;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
